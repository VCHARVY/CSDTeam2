import sys
import os
from amaranth import *
from amaranth.sim import Simulator, Settle

sys.path.insert(0, os.path.abspath(os.path.join(os.path.dirname(__file__),
                                                '../src/')))
from mem.reg import RegisterFile

dut = RegisterFile()
# Async testbench for the register file
async def testbench_example2(ctx):
    # Write 0xBEEF to register 1
    ctx.set(dut.write_addr, 1)
    ctx.set(dut.write_data, 0xDEADBEEF)
    ctx.set(dut.write_enable, 1)
    await ctx.tick()  # Write cycle
    ctx.set(dut.write_enable, 0)
    await ctx.tick()

    # Read from register 1
    ctx.set(dut.read_addr1, 1)
    await ctx.tick()  # Read cycle
    read_data1 = ctx.get(dut.read_data1)
    assert read_data1 == 0xDEADBEEF, f"Expected 0xDEADBEEF, got {read_data1}"
    await ctx.tick()

    # Write 0xBABE to register 2
    ctx.set(dut.write_addr, 5)
    ctx.set(dut.write_data, 0xCAFEBABE)
    ctx.set(dut.write_enable, 1)
    await ctx.tick()  # Write cycle
    ctx.set(dut.write_enable, 0)
    await ctx.tick()

    # Read from register 2
    ctx.set(dut.read_addr2, 5)
    await ctx.tick()  # Read cycle
    read_data2 = ctx.get(dut.read_data2)
    assert read_data2 == 0xCAFEBABE, f"Expected 0xCAFEBABE, got {read_data2}"
    read_data1 = ctx.get(dut.read_data1)
    assert read_data1 == 0xDEADBEEF, f"Expected 0xDEADBEEF, got {read_data1}"
    await ctx.tick()

    # Check that both reads are correct
    ctx.set(dut.read_addr1, 1)
    ctx.set(dut.read_addr2, 5)
    await ctx.tick()  # Read cycle
    read_data1 = ctx.get(dut.read_data1)
    assert read_data1 == 0xDEADBEEF, f"Expected 0xDEADBEEF, got {read_data1}"
    await ctx.tick()
    read_data2 = ctx.get(dut.read_data2)
    assert read_data2 == 0xCAFEBABE, f"Expected 0xCAFEBABE, got {read_data2}"

# Instantiate the register file
#dut = RegisterFile()

# Create a simulator
sim = Simulator(dut)
sim.add_clock(1e-6)  # 1 MHz clock

# Add the asynchronous test process
sim.add_testbench(testbench_example2)

# Run the simulation
sim.run()
