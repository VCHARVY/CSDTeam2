from amaranth import *
from amaranth.lib.wiring import Component, In, Out
import sys
import os
sys.path.insert(0, os.path.abspath(os.path.join(os.path.dirname(__file__), '../../src/')))

from func_units.alu import ALU
from func_units.decoder import Decoder
from func_units.pc_ctrl import PCControl
from mem.reg import RegisterFile


class CPU(Component):
    PCLine: Out(32)
    Instruction: In(32)

    DWriteLine: Out(32)
    DReadLine: In(32)
    DWEnable: Out(1)
    DAddr: Out(32)

    def elaborate(self, platform):
        m = Module()
        PC = Signal(32, reset=0)  # Initial value of PC is 0
        CPSR = Signal(3, reset=0)

        # Instantiate submodules
        m.submodules.pcc = pcc = PCControl()
        m.submodules.dec = dec = Decoder()
        m.submodules.alu = alu = ALU()
        m.submodules.rf = rf = RegisterFile()

        # PC Control: Increment PC or update based on PCControl
        with m.If(pcc.u_ctrl == 0):  # NO-OP or normal PC increment
            m.d.sync += PC.eq(PC + 4)  # Increment PC by 4

        # Update PCOut and PCLine
        m.d.sync += [
            pcc.PCIn.eq(PC),
            pcc.CPSR.eq(CPSR),
            self.PCLine.eq(pcc.PCOut),
            PC.eq(pcc.PCOut)  # Update PC with the value from PCControl
        ]
        
        # Decoder: Set instruction for decoding
        m.d.comb += dec.instruction.eq(self.Instruction)

        # ALU and Register File operations for arithmetic instructions
        with m.If(dec.itype == 1):  # Arithmetic
            m.d.comb += rf.read_addr1.eq(dec.rm_addr)
            rval = Signal(32)
            rval2 = Signal(32)
            m.d.comb += rval.eq(rf.read_data1)
            with m.If(dec.is_imm):
                m.d.comb += rval2.eq(dec.value)
            with m.Else():
                m.d.comb += rf.read_addr2.eq(dec.value[:-4])
                m.d.comb += rval2.eq(rf.read_data2)

            # Select between PC and ALU result for write_data
            write_data = Signal(32)
            m.d.comb += [
                alu.a.eq(rval),
                alu.b.eq(rval2),
                alu.alu_ctrl.eq(dec.u_ctrl),
                write_data.eq(Mux(dec.u_ctrl == 0, PC, alu.o)),  # Mux for PC or ALU output
                rf.write_addr.eq(dec.rd_addr),
                rf.write_data.eq(write_data)
            ]

        # Output lines for data and control signals
        m.d.comb += [
            self.DWriteLine.eq(write_data),
            self.DAddr.eq(rf.write_addr),
            self.DWEnable.eq(1)  # Enable data write, adjust if conditional control is needed
        ]

        return m

if __name__ == "__main__":
    from amaranth.back import verilog
    cpu = CPU()
    print(verilog.convert(cpu, ports=[cpu.PCLine, cpu.Instruction, cpu.DWriteLine, cpu.DWEnable, 
                                      cpu.DReadLine, cpu.DAddr], 
                                      emit_src=False))
