class Loader:
    def __init__(self):
        self.memory = {}  # Simulated memory (address: instruction)

    def load_program(self, filename: str, start_address: int = 0):
        """
        Load the linked program into simulated memory.
        
        Args:
        - filename (str): The name of the linked file.
        - start_address (int): The address where the program should be loaded.
        """
        try:
            with open(filename, "r") as f:
                lines = f.readlines()

            # Load each instruction into memory
            current_address = start_address
            for line in lines:
                instruction = line.strip()
                if instruction:  # Skip empty lines
                    self.memory[current_address] = instruction
                    current_address += 1

            print(f"Program loaded into memory starting at address {hex(start_address)}")
            print(f"Memory contents: {self.memory}")

        except FileNotFoundError:
            print(f"Error: File '{filename}' not found.")
        except Exception as e:
            print(f"Error loading program: {e}")

    def execute(self, start_address: int):
        """
        Simulate the execution of the loaded program from the given start address.
        For simplicity, this just prints the instructions in order.
        
        Args:
        - start_address (int): The address where execution should start.
        """
        print(f"\nStarting execution from address {hex(start_address)}:")
        address = start_address

        while address in self.memory:
            instruction = self.memory[address]
            print(f"Executing instruction at {hex(address)}: {instruction}")
            address += 1

        print("\nProgram execution completed.")


# Example usage
def main():
    loader = Loader()

    # Get the linked file and starting address from the user
    linked_file = input("Enter the linked file name: ")
    start_address = int(input("Enter the start address for loading (in decimal): "))

    # Load and execute the program
    loader.load_program(linked_file, start_address)
    execute_choice = input("\nDo you want to execute the program? (yes/no): ").strip().lower()

    if execute_choice == "yes":
        loader.execute(start_address)
    else:
        print("Program loading completed without execution.")

if __name__ == "__main__":
    main()
