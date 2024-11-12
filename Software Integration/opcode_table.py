#>2 operands is commented, we will not implement for now
opcode_table= {
    'ADC': 0,
    'ADD': 1,
    'AND': 2,
    'B': 3,
    'BIC': 4, # a & ~b
    'BL': 5,
    'BLX': 6,
    'BX': 7,
    'CLZ': 8,
    'CMN': 9, # Can be done with cmp
    'CMP': 10,
    'EOR': 11,
    #'LDM': 12
    #'MLA': 13,
    'MOV': 14,
    'MSR': 15,
    'MRS': 16,
    'MUL': 17,
    'MVN': 18,
    'ORR': 19,
    'RSB': 20,
    'RSC': 21,
    'SBC': 22,
    #'SMLA': 23,
    'SMULL': 24,
    'STR': 25,
    'SUB': 26,
    'SWI': 27,
    'LDR': 28,
    #'STM': 29,
    'TEQ': 30,
    'TST': 31,
    'UMULL': 32,
    #'UMLAL': 33,
}


