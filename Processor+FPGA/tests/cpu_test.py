from amaranth import *
from amaranth.sim import Simulator, Passive
from amaranth.lib.coding import PriorityEncoder
import sys
import os

sys.path.insert(0, os.path.abspath(os.path.join(os.path.dirname(__file__), '../src/')))
from func_units.cpu import CPU

class TestBench(Elaboratable):
    def __init__(self):
        self.cpu = CPU()
        
        # Create input ports that we can control from the testbench
        self.instruction_in = Signal(32)
        
    def elaborate(self, platform):
        m = Module()
        m.submodules.cpu = self.cpu

        # Connect our controllable inputs to the CPU
        m.d.comb += self.cpu.Instruction.eq(self.instruction_in)
        
        return m

def cpu_test():
    cpu_tb = TestBench()
    sim = Simulator(cpu_tb)
    
    def process():
        # Set initial values
        yield cpu_tb.instruction_in.eq(0b00000001000000000000000000000001)
        
        # First clock cycle
        yield
        pc_value = yield cpu_tb.cpu.PCLine
        assert pc_value == 4, f"PCLine failed, expected 4, got {pc_value}"
        
        # Second clock cycle
        yield
        yield
        pc_value = yield cpu_tb.cpu.PCLine
        assert pc_value == 8, f"PCLine failed, expected 8, got {pc_value}"
    
    sim.add_clock(1e-6)  # 1 MHz clock
    sim.add_sync_process(process)
    
    try:
        sim.run()
        print("CPU tests passed successfully!")
    except AssertionError as e:
        print(f"Test failed: {e}")
    except Exception as e:
        print(f"Simulation error: {e}")

if __name__ == "__main__":
    cpu_test()