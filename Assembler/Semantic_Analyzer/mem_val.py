from typing import List, Tuple
from enum import Enum, auto

MEM_SIZE = 1234566

class AddressMode(Enum):
    OFFSET = auto()
    PRE_INDEXED = auto()
    POST_INDEXED = auto()

class MemoryAccessError(Exception):
    pass


def validate_memory_access(self, instruction: Instruction):
        if instruction.mnemonic not in {'ldr', 'str', 'ldrb', 'strb', 'ldrh', 'strh', 'ldrd', 'strd', 'ldm', 'stm'}:
            return

        try:
            if instruction.mnemonic in {'ldr', 'str', 'ldrb', 'strb', 'ldrh', 'strh', 'ldrd', 'strd'}:
                self.validate_single_data_transfer(instruction)
            elif instruction.mnemonic in {'ldm', 'stm'}:
                self.validate_block_data_transfer(instruction)
        except MemoryAccessError as e:
            self.errors.append(f"Error in {instruction.mnemonic}: {str(e)}")

def validate_single_data_transfer(self, instruction: Instruction):
        dest_reg = instruction.operands[0]
        self.validate_register(dest_reg)

        address_mode, base_reg, offset, shift = self.parse_address_mode(instruction.operands[1:])
        self.validate_register(base_reg)

        alignment = self.get_required_alignment(instruction.mnemonic)
        address = self.calculate_effective_address(base_reg, offset, shift, address_mode)

        if not self.is_aligned(address, alignment):
            self.errors.append(f"Warning: Unaligned access in '{instruction.mnemonic}' at address {address}")

        if address < 0 or address >= self.memory_size:
            raise MemoryAccessError(f"Memory access out of bounds: {address}")

        #if self.arm_version == ARMVersion.ARMv8:
        if dest_reg == 'pc' and instruction.mnemonic == 'ldr':
            if self.is_aarch64_mode:
                raise MemoryAccessError("Cannot use PC as destination in LDR in AArch64 mode")
            else:  # AArch32 mode
                self.errors.append("Warning: Loading to PC is discouraged in ARMv8 AArch32 mode")

        if instruction.mnemonic in {'ldrd', 'strd'}:                    #Not included for now
            if self.is_aarch64_mode:
                raise MemoryAccessError("LDRD/STRD instructions are not available in AArch64 mode")
            else:  # AArch32 mode
                # if len(instruction.operands) < 2:
                #     raise MemoryAccessError("Insufficient operands for LDRD/STRD")
                
                reg1 = instruction.operands[0]
                reg2 = instruction.operands[1]
                
                # if not (self.is_valid_register(reg1) and self.is_valid_register(reg2)):               ##Check all this in valid_operands
                #     raise MemoryAccessError("Invalid registers in LDRD/STRD")
                
                reg1_num = int(reg1[1:])
                reg2_num = int(reg2[1:])
                
                if reg1_num % 2 != 0:
                    raise MemoryAccessError("First register in LDRD/STRD must be even-numbered")
                if reg2_num != reg1_num + 1:
                    raise MemoryAccessError("Registers in LDRD/STRD must be consecutive")
                if reg1_num >= 14 or reg2_num >= 14:
                    raise MemoryAccessError("R14 (LR) and R15 (PC) cannot be used in LDRD/STRD")
                
def validate_block_data_transfer(self, instruction: Instruction):
        base_reg = instruction.operands[0]
        self.validate_register(base_reg)

        reg_list = instruction.operands[1:]
        if not all(self.is_valid_register(reg) for reg in reg_list):
            raise MemoryAccessError("Invalid register in register list")

        if base_reg in reg_list and instruction.mnemonic.startswith('ldm'):
            self.errors.append("Warning: Base register in register list for LDM may lead to unpredictable behavior")

        # Check for ascending/descending and before/after variants
        # if instruction.mnemonic in {'ldmia', 'ldmib', 'ldmda', 'ldmdb', 'stmia', 'stmib', 'stmda', 'stmdb'}:
        #     self.validate_block_transfer_variant(instruction.mnemonic, base_reg, reg_list)

# def validate_block_transfer_variant(self, mnemonic: str, base_reg: str, reg_list: List[str]):
#         is_ascending = mnemonic.endswith('ia') or mnemonic.endswith('ib')
#         is_before = mnemonic.endswith('ib') or mnemonic.endswith('db')

#         if is_ascending and 'pc' in reg_list and reg_list.index('pc') != len(reg_list) - 1:
#             self.errors.append("Warning: PC should be the last register in ascending LDM/STM")

#         if not is_ascending and 'pc' in reg_list and reg_list.index('pc') != 0:
#             self.errors.append("Warning: PC should be the first register in descending LDM/STM")

#         # Additional checks for specific variants can be added here

def parse_address_mode(self, address_operands: List[str]) -> Tuple[AddressMode, str, int, str]:
        if not address_operands or address_operands[0] != '[':
            raise MemoryAccessError("Invalid addressing mode syntax")

        base_reg = address_operands[1]
        if base_reg.endswith(']'):
            return AddressMode.OFFSET, base_reg[:-1], 0, None

        if address_operands[-1] == ']':
            mode = AddressMode.OFFSET
        elif address_operands[-1] == '!':
            mode = AddressMode.PRE_INDEXED
        else:
            mode = AddressMode.POST_INDEXED

        offset_str = ''.join(address_operands[3:-1])
        offset, shift = self.parse_offset(offset_str)

        return mode, base_reg, offset, shift

def parse_offset(self, offset_str: str) -> Tuple[int, str]:
        if offset_str.startswith('#'):
            return int(offset_str[1:]), None
        elif ',' in offset_str:
            reg, shift = offset_str.split(',')
            return int(reg[1:]), shift.strip()
        else:
            return int(offset_str[1:]), None

def calculate_effective_address(self, base_reg: str, offset: int, shift: str, mode: AddressMode) -> int:
        base_value = self.get_register_value(base_reg)
        if shift:
            offset = self.apply_shift(offset, shift)

        if mode in {AddressMode.OFFSET, AddressMode.PRE_INDEXED}:
            return base_value + offset
        else:
            return base_value

def apply_shift(self, value: int, shift: str) -> int:
        shift_type, amount = shift.split('#')
        amount = int(amount)
        if shift_type == 'LSL':
            return value << amount
        elif shift_type == 'LSR':
            return value >> amount
        elif shift_type == 'ASR':
            return value >> amount if value >= 0 else ~((~value) >> amount)
        elif shift_type == 'ROR':
            return (value >> amount) | (value << (32 - amount)) & 0xFFFFFFFF
        else:
            raise MemoryAccessError(f"Invalid shift type: {shift_type}")

def get_register_value(self, reg: str) -> int:
        # In a real implementation, this would return the actual value of the register
        # For this example, we'll just return a dummy value
        return 1000

def get_required_alignment(self, mnemonic: str) -> int:
        if mnemonic in {'ldr', 'str'}:
            return 4
        elif mnemonic in {'ldrh', 'strh'}:
            return 2
        elif mnemonic in {'ldrd', 'strd'}:
            return 8
        else:
            return 1

def is_aligned(self, address: int, alignment: int) -> bool:
        return address % alignment == 0

def validate_register(self, reg: str):
        if not self.is_valid_register(reg):
            raise MemoryAccessError(f"Invalid register: {reg}")

def is_valid_register(self, reg: str) -> bool:
        if reg in {'sp', 'lr', 'pc'}:
            return True
        if reg.startswith('r') and reg[1:].isdigit():
            return 0 <= int(reg[1:]) <= 15
        return False