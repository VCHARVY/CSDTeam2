from amaranth import *
from amaranth.sim import Simulator
import sys
import os
sys.path.insert(0, os.path.abspath(os.path.join(os.path.dirname(__file__),
                                                '../src/')))
from func_units.alu import ALU

alu = ALU()
# Testbench for ALU
async def testbench(ctx):

    # Test ADD
    ctx.set(alu.a, 5)
    ctx.set(alu.b, 3)
    ctx.set(alu.alu_ctrl, 0)  # ADD
    await ctx.delay(1e-6)
    assert ctx.get(alu.o) == 8, f"ADD failed, expected 8, got {ctx.get(alu.o)}"

    # Test SUB
    ctx.set(alu.a, 10)
    ctx.set(alu.b, 4)
    ctx.set(alu.alu_ctrl, 1)  # SUB
    await ctx.delay(1e-6)
    assert ctx.get(alu.o) == 6, f"SUB failed, expected 6, got {ctx.get(alu.o)}"

    # Test CMP (a - b)
    ctx.set(alu.a, 10)
    ctx.set(alu.b, 5)
    ctx.set(alu.alu_ctrl, 1)  # CMP
    await ctx.delay(1e-6)
    assert ctx.get(alu.o) == 5, f"CMP failed, expected 5, got {ctx.get(alu.o)}"

    ctx.set(alu.a, 0b0001)  # 1
    ctx.set(alu.b, 2)       # Shift left by 2
    ctx.set(alu.alu_ctrl, 7)  # LSL
    await ctx.delay(1e-6)
    assert ctx.get(alu.o) == 0b0100, f"LSL failed, expected 0b0100, got {ctx.get(alu.o)}"

    # Test Arithmetic Shift Right (ASR)
    ctx.set(alu.a, -16)  
    ctx.set(alu.b, 2)           # Shift right by 2
    ctx.set(alu.alu_ctrl, 8)  # ASR
    await ctx.delay(1e-6)
    assert ctx.get(alu.o) == -4, f"ASR failed, expected -4, got {ctx.get(alu.o)}"

    # Test MUL
    ctx.set(alu.a, 4)  
    ctx.set(alu.b, -2)
    ctx.set(alu.alu_ctrl, 2)
    await ctx.delay(1e-6)
    assert ctx.get(alu.o) == -8, f"MUL failed, expected -8, got {ctx.get(alu.o)}"

    # Test DIV
    ctx.set(alu.a, -9)  
    ctx.set(alu.b, 3)           
    ctx.set(alu.alu_ctrl, 3)
    await ctx.delay(1e-6)
    assert ctx.get(alu.o) == -3, f"DIV failed, expected -3, got {ctx.get(alu.o)}"

    # Test AND
    ctx.set(alu.a, -1)  
    ctx.set(alu.b, 2)           # Shift right by 2
    ctx.set(alu.alu_ctrl, 4)  # ASR
    await ctx.delay(1e-6)
    assert ctx.get(alu.o) == 2, f"AND failed, expected 2, got {ctx.get(alu.o)}"

    # Test ORR
    ctx.set(alu.a, -1)  
    ctx.set(alu.b, 2)           # Shift right by 2
    ctx.set(alu.alu_ctrl, 5)  # ASR
    await ctx.delay(1e-6)
    assert ctx.get(alu.o) == -1, f"ORR failed, expected -1, got {ctx.get(alu.o)}"

    # Test EOR
    ctx.set(alu.a, -1)  
    ctx.set(alu.b, 1)           # Shift right by 2
    ctx.set(alu.alu_ctrl, 6)  # ASR
    await ctx.delay(1e-6)
    assert ctx.get(alu.o) == -2, f"EOR failed, expected -2, got {ctx.get(alu.o)}"

# Create and run the simulation
# Instantiate ALU
sim = Simulator(alu)
#sim.add_clock(1e-6)  # Add a clock with a period of 1 microsecond
sim.add_testbench(testbench)  # Add testbench
sim.run()
print("alu tests passed successfully!")

