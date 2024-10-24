from amaranth import *
from amaranth.lib.wiring import Component, In, Out

class ALU(Component):
    a: In(signed(32))       # Operand 1 (rn)
    b: In(signed(32))       # Operand 2 (op2)
    alu_ctrl: In(6)         # Control signal to choose operation (6 bits to cover all instructions)
    o: Out(signed(32))      # self.o of ALU operation
    nzc: Out(3) # Carry output

    def elaborate(self, platform):
        m = Module()

        with m.Switch(self.alu_ctrl):
            # Arithmetic operations
            with m.Case(0):  # ADD
                m.d.comb += [
                    self.o.eq(self.a + self.b),
                    self.nzc[2].eq((self.a + self.b)[32])  # Carry if overflow occurs
                ]
            
            with m.Case(1): #SUB/CMP
                m.d.comb += [
                    self.o.eq(self.a - self.b),    
                    self.nzc.eq((self.a - self.b)[31] << 2 + 
                                ((self.a - self.b)==0) << 1 +
                                (self.a - self.b)[32])
                ]

            with m.Case(2): #MUL
                m.d.comb += [
                    self.o.eq(self.a * self.b),
                    self.nzc[2].eq(self.a * self.b > 0xFFFFFFFF)  # Carry if overflow occurs
                ]

            with m.Case(3): #DIV
                m.d.comb += [
                    self.o.eq(self.a // self.b),
                    self.nzc.eq(0)  # Carry if overflow occurs
                ]

            with m.Case(4): #AND
                m.d.comb += [
                    self.o.eq(self.a & self.b),
                    self.nzc.eq(0)  # Carry if overflow occurs
                ]

            with m.Case(5): #OR
                m.d.comb += [
                    self.o.eq(self.a | self.b),
                    self.nzc.eq(0)  # Carry if overflow occurs
                ]

            with m.Case(6): #EOR
                m.d.comb += [
                    self.o.eq(self.a ^ self.b),
                    self.nzc.eq(0)  # Carry if overflow occurs
                ]

            with m.Case(7): #ASL
                m.d.comb += [
                    self.o.eq(self.a << self.b[:5].as_unsigned()),
                    self.nzc[2].eq(self.a * self.b > 0xFFFFFFFF)  # Carry if overflow occurs
                ]

            with m.Case(8): #ASR
                m.d.comb += [
                    self.o.eq(self.a >> self.b[:5].as_unsigned()),
                    self.nzc.eq(0)  # Carry if overflow occurs
                ]

        return m
    
if __name__ == "__main__":
    from amaranth.back import verilog
    alu = ALU()
    print(verilog.convert(alu, ports=[alu.a, alu.b, alu.alu_ctrl, alu.alu_ctrl, alu.nzc, alu.o], emit_src=False))
