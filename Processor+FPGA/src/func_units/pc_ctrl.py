from amaranth import *
from amaranth.lib.wiring import Component, In, Out

class PCControl(Component):
    PCIn: In(32)
    target: In(32)
    CPSR: In(3)
    u_ctrl: In(6)
    PCOut: Out(32)

    def elaborate(self, platform):
        m = Module()
        N = Signal(1)
        Z = Signal(1)
        m.d.comb += N.eq(self.CPSR[2])
        m.d.comb += Z.eq(self.CPSR[1])
        
        PCDef = Signal(32)
        m.d.comb += PCDef.eq(self.PCIn+4)
        with m.Switch(self.u_ctrl):
            # NO-OP
            with m.Case(0):
                m.d.comb += self.PCOut.eq(PCDef)
            
            #B/BR/BL
            with m.Case(1):
                m.d.comb += self.PCOut.eq(self.target)

            
            #BEQ
            with m.Case(2):
                with m.If(~N & Z):
                    m.d.comb += self.PCOut.eq(self.target)
                with m.Else():
                    m.d.comb += self.PCOut.eq(PCDef)

            
            #BLT
            with m.Case(3):
                with m.If(N & ~Z):
                    m.d.comb += self.PCOut.eq(self.target)
                with m.Else():
                    m.d.comb += self.PCOut.eq(PCDef)


            #BGT
            with m.Case(4):
                with m.If(~N & ~Z):
                    m.d.comb += self.PCOut.eq(self.target)
                with m.Else():
                    m.d.comb += self.PCOut.eq(PCDef)
        
        return m
    
if __name__ == "__main__":
    from amaranth.back import verilog
    pcc = PCControl()
    print(verilog.convert(pcc, ports=[pcc.PCIn, pcc.target, pcc.CPSR, pcc.u_ctrl, 
                                      pcc.PCOut], 
                                      emit_src=False))

