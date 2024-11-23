class SymbolEntry:
    def __init__(self, variable_name, data_type, scope, size, is_array, line_number):
        self.variable_name = variable_name
        self.data_type = data_type
        self.scope = scope
        self.size = size
        self.is_array = is_array
        self.line_number = line_number

class SymbolTable:
    def __init__(self, function_name='', return_type='', num_parameters=0, parameter_types=''):
        self.function_name = function_name
        self.return_type = return_type
        self.num_parameters = num_parameters
        self.parameter_types = parameter_types
        self.local_symbols = {}

    def add_symbol(self, symbol):
        self.local_symbols[symbol.variable_name] = symbol

def parse_symbol_table(symbol_table_text):
    """
    Robust parsing of symbol table text into structured SymbolTable objects.
    
    Args:
        symbol_table_text (str): Raw text of the symbol table
    
    Returns:
        list: List of SymbolTable objects
    """
    # Split the text into individual function symbol tables
    function_tables = symbol_table_text.strip().split('-----------------------------------')
    parsed_tables = []

    for table_text in function_tables:
        if not table_text.strip():
            continue

        # Create a new symbol table
        symbol_table = SymbolTable()

        # Split lines and process them
        lines = table_text.strip().split('\n')
        for line in lines:
            line = line.strip()
            if line.startswith('Function Name:'):
                symbol_table.function_name = line.split(':', 1)[1].strip()
            elif line.startswith('Return Type:'):
                symbol_table.return_type = line.split(':', 1)[1].strip()
            elif line.startswith('Number of Parameters:'):
                try:
                    symbol_table.num_parameters = int(line.split(':', 1)[1].strip())
                except ValueError:
                    symbol_table.num_parameters = 0
            elif line.startswith('Parameter Types:'):
                symbol_table.parameter_types = line.split(':', 1)[1].strip()
            
            # Check for local symbol parsing
            if 'Variable Name:' in line:
                # Initialize symbol details dictionary
                symbol_details = {}
                
                # Collect all details for this symbol
                current_line_index = lines.index(line)
                while current_line_index < len(lines):
                    current_line = lines[current_line_index].strip()
                    if ':' in current_line:
                        key, value = current_line.split(':', 1)
                        symbol_details[key.strip()] = value.strip()
                    
                    # Check if we've reached the end of symbol details
                    current_line_index += 1
                    if current_line_index >= len(lines) or not lines[current_line_index].strip().startswith(' '):
                        break
                
                # Create SymbolEntry if we have all required details
                if 'Variable Name' in symbol_details:
                    try:
                        symbol = SymbolEntry(
                            variable_name=symbol_details['Variable Name'],
                            data_type=symbol_details.get('Data Type', 'UNKNOWN'),
                            scope=int(symbol_details.get('Scope', 0)),
                            size=int(symbol_details.get('Size', 0)),
                            is_array=symbol_details.get('Is Array', 'No') == 'Yes',
                            line_number=int(symbol_details.get('Line Number', 0))
                        )
                        symbol_table.add_symbol(symbol)
                    except (ValueError, KeyError) as e:
                        print(f"Warning: Could not parse symbol details: {e}")
        
        # Only add non-empty symbol tables
        if symbol_table.function_name or symbol_table.local_symbols:
            parsed_tables.append(symbol_table)

    return parsed_tables

def merge_symbol_tables(table1, table2):
    """
    Merge two symbol tables, prioritizing table1 for duplicate variable names.
    
    Args:
        table1 (list): First list of SymbolTable objects
        table2 (list): Second list of SymbolTable objects
    
    Returns:
        list: Merged list of SymbolTable objects
    """
    # Create a merged dictionary of symbol tables
    merged_tables = {}

    # Add tables from first input
    for table in table1:
        merged_tables[table.function_name] = table

    # Merge or add tables from second input
    for table in table2:
        if table.function_name in merged_tables:
            # If function exists, merge local symbols 
            # Existing symbols in merged_tables take precedence
            for var_name, symbol in table.local_symbols.items():
                if var_name not in merged_tables[table.function_name].local_symbols:
                    merged_tables[table.function_name].add_symbol(symbol)
        else:
            # If function doesn't exist, add entire table
            merged_tables[table.function_name] = table

    return list(merged_tables.values())

def format_symbol_table(symbol_tables):
    """
    Format the merged symbol tables back into the original text format.
    
    Args:
        symbol_tables (list): List of SymbolTable objects
    
    Returns:
        str: Formatted symbol table text
    """
    formatted_output = "SYMBOL TABLE\n==========================\n\n"
    
    for table in symbol_tables:
        formatted_output += f"Function Name: {table.function_name}\n"
        formatted_output += f"  Return Type: {table.return_type}\n"
        formatted_output += f"  Number of Parameters: {table.num_parameters}\n"
        formatted_output += f"  Parameter Types: {table.parameter_types}\n\n"
        
        formatted_output += "  Local Symbol Table:\n"
        formatted_output += "  -------------------\n"
        
        for symbol_name, symbol in table.local_symbols.items():
            formatted_output += f"    Variable Name: {symbol.variable_name}\n"
            formatted_output += f"      Data Type: {symbol.data_type}\n"
            formatted_output += f"      Scope: {symbol.scope}\n"
            formatted_output += f"      Size: {symbol.size}\n"
            formatted_output += f"      Is Array: {'Yes' if symbol.is_array else 'No'}\n"
            formatted_output += f"      Line Number: {symbol.line_number}\n\n"
        
        formatted_output += "-----------------------------------\n\n"
    
    return formatted_output

def main():
    # Read symbol tables from files
    try:
        with open('symbol_table1.txt', 'r') as f:
            symbol_table1 = f.read()
        
        with open('symbol_table2.txt', 'r') as f:
            symbol_table2 = f.read()
    except FileNotFoundError:
        print("Please provide two symbol table files: symbol_table1.txt and symbol_table2.txt")
        return

    # Parse input symbol tables
    parsed_table1 = parse_symbol_table(symbol_table1)
    parsed_table2 = parse_symbol_table(symbol_table2)

    # Merge symbol tables
    merged_tables = merge_symbol_tables(parsed_table1, parsed_table2)

    # Format and print merged symbol table
    merged_output = format_symbol_table(merged_tables)
    print(merged_output)

    # Optionally, write to output file
    with open('merged_symbol_table.txt', 'w') as f:
        f.write(merged_output)

if __name__ == "__main__":
    main()