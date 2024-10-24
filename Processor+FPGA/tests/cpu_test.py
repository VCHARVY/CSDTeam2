from amaranth import *
from amaranth.sim import Simulator
import sys
import os

sys.path.insert(0, os.path.abspath(os.path.join(os.path.dirname(__file__), '../src/')))
from func_units.cpu import CPU  # Adjust the import path as necessary

cpu_sim = CPU()

async def testbench(ctx):
    # Set initial instruction (assuming an ADD operation)
    ctx.set(cpu_sim.Instruction, 0b00000001000000000000000000000001)  # Example instruction
    ctx.set(cpu_sim.DWEnable, 1)  # Enable write
    ctx.set(cpu_sim.DAddr, 0x00000000)  # Write address

    # First clock cycle: PC should be incremented by 4 (PC initial = 0)
    await ctx.delay(1e-6)  # First clock cycle
    assert ctx.get(cpu_sim.PCLine) == 4, f"PCLine failed, expected 4, got {ctx.get(cpu_sim.PCLine)}"

    # Second clock cycle: PC should be incremented again by 4 (PC = 4)
    await ctx.delay(1e-6)  # Second clock cycle
    assert ctx.get(cpu_sim.PCLine) == 8, f"PCLine failed, expected 8, got {ctx.get(cpu_sim.PCLine)}"

# Create and run the simulation
sim = Simulator(cpu_sim)
sim.add_testbench(testbench)  # Add the testbench
sim.run()
print("CPU tests passed successfully!")
