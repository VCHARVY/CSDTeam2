from amaranth import *
from amaranth.sim import Simulator
import sys
import os
sys.path.insert(0, os.path.abspath(os.path.join(os.path.dirname(__file__),
                                                '../src/')))

from func_units.pc_ctrl import PCControl  # Assuming the PCControl class is in the func_units folder

pc_ctrl = PCControl()

# Testbench for PCControl
async def testbench(ctx):
    # Test Case: NO-OP (u_ctrl = 0)
    ctx.set(pc_ctrl.PCIn, 100)
    ctx.set(pc_ctrl.target, 200)
    ctx.set(pc_ctrl.CPSR, 0b000)  # CPSR flags: [N, Z, C]
    ctx.set(pc_ctrl.u_ctrl, 0)    # NO-OP
    await ctx.delay(1e-6)
    assert ctx.get(pc_ctrl.PCOut) == 104, f"NO-OP failed, expected 104, got {ctx.get(pc_ctrl.PCOut)}"

    # Test Case: B (u_ctrl = 1)
    ctx.set(pc_ctrl.PCIn, 100)
    ctx.set(pc_ctrl.target, 200)
    ctx.set(pc_ctrl.CPSR, 0b000)  # CPSR flags: [N, Z, C]
    ctx.set(pc_ctrl.u_ctrl, 1)    # B (Branch unconditionally)
    await ctx.delay(1e-6)
    assert ctx.get(pc_ctrl.PCOut) == 200, f"B failed, expected 200, got {ctx.get(pc_ctrl.PCOut)}"

    # Test Case: BEQ (u_ctrl = 2) (Z flag is set)
    ctx.set(pc_ctrl.PCIn, 100)
    ctx.set(pc_ctrl.target, 300)
    ctx.set(pc_ctrl.CPSR, 0b010)  # CPSR flags: [N, Z, C] (Z flag set)
    ctx.set(pc_ctrl.u_ctrl, 2)    # BEQ (Branch if equal, Z flag set)
    await ctx.delay(1e-6)
    assert ctx.get(pc_ctrl.PCOut) == 300, f"BEQ failed, expected 300, got {ctx.get(pc_ctrl.PCOut)}"

    # Test Case: BEQ (u_ctrl = 2) (Z flag is not set)
    ctx.set(pc_ctrl.PCIn, 100)
    ctx.set(pc_ctrl.target, 300)
    ctx.set(pc_ctrl.CPSR, 0b000)  # CPSR flags: [N, Z, C] (Z flag not set)
    ctx.set(pc_ctrl.u_ctrl, 2)    # BEQ
    await ctx.delay(1e-6)
    assert ctx.get(pc_ctrl.PCOut) == 104, f"BEQ failed, expected 104, got {ctx.get(pc_ctrl.PCOut)}"

    # Test Case: BLT (u_ctrl = 3) (N flag is set and Z is not)
    ctx.set(pc_ctrl.PCIn, 100)
    ctx.set(pc_ctrl.target, 400)
    ctx.set(pc_ctrl.CPSR, 0b100)  # CPSR flags: [N, Z, C] (N flag set, Z not set)
    ctx.set(pc_ctrl.u_ctrl, 3)    # BLT (Branch if less than)
    await ctx.delay(1e-6)
    assert ctx.get(pc_ctrl.PCOut) == 400, f"BLT failed, expected 400, got {ctx.get(pc_ctrl.PCOut)}"

    # Test Case: BLT (u_ctrl = 3) (N flag is not set)
    ctx.set(pc_ctrl.PCIn, 100)
    ctx.set(pc_ctrl.target, 400)
    ctx.set(pc_ctrl.CPSR, 0b000)  # CPSR flags: [N, Z, C] (N flag not set)
    ctx.set(pc_ctrl.u_ctrl, 3)    # BLT
    await ctx.delay(1e-6)
    assert ctx.get(pc_ctrl.PCOut) == 104, f"BLT failed, expected 104, got {ctx.get(pc_ctrl.PCOut)}"

    # Test Case: BGT (u_ctrl = 4) (Neither N nor Z is set)
    ctx.set(pc_ctrl.PCIn, 100)
    ctx.set(pc_ctrl.target, 500)
    ctx.set(pc_ctrl.CPSR, 0b000)  # CPSR flags: [N, Z, C] (Neither N nor Z set)
    ctx.set(pc_ctrl.u_ctrl, 4)    # BGT (Branch if greater than)
    await ctx.delay(1e-6)
    assert ctx.get(pc_ctrl.PCOut) == 500, f"BGT failed, expected 500, got {ctx.get(pc_ctrl.PCOut)}"

    # Test Case: BGT (u_ctrl = 4) (N flag is set or Z is set)
    ctx.set(pc_ctrl.PCIn, 100)
    ctx.set(pc_ctrl.target, 500)
    ctx.set(pc_ctrl.CPSR, 0b100)  # CPSR flags: [N, Z, C] (N flag set)
    ctx.set(pc_ctrl.u_ctrl, 4)    # BGT
    await ctx.delay(1e-6)
    assert ctx.get(pc_ctrl.PCOut) == 104, f"BGT failed, expected 104, got {ctx.get(pc_ctrl.PCOut)}"

# Create and run the simulation
sim = Simulator(pc_ctrl)
sim.add_testbench(testbench)
sim.run()
print("PCControl tests passed successfully!")
