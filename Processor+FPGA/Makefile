# Base directory containing the Python HDL files
SRC_DIR = ./src
# Output directory for the generated Verilog files
OUT_DIR = ./verilog

# Find all Python files in the source directory and its subdirectories
PY_FILES = $(shell find $(SRC_DIR) -name '*.py')

# Generate corresponding Verilog filenames
VERILOG_FILES = $(PY_FILES:$(SRC_DIR)/%.py=$(OUT_DIR)/%.v)

# Default target
all: $(VERILOG_FILES)

# Rule to generate Verilog from Python HDL files
$(OUT_DIR)/%.v: $(SRC_DIR)/%.py
	@mkdir -p $(dir $@)  # Create output directory if it doesn't exist
	@echo "Converting $< to $@"
	python $< > $@

# Clean target to remove generated files
clean:
	rm -rf $(OUT_DIR)/*.v $(OUT_DIR)/**/*.v

.PHONY: all clean
