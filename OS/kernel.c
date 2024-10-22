#include "drivers/include/vga.h"
#include "drivers/include/keyboard.h"
void kmain(void);
void kmain(void){
    if (testVGAMemory()) {
        print("VGA memory test passed!\n");
    } else {
        print("VGA memory test failed!\n");
    }
    print("Hello, World!\n");
    simple_keyboard_driver();
}