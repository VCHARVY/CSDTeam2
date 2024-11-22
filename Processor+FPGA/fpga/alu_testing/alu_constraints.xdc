## Switches
set_property PACKAGE_PIN G15 [get_ports {SW[0]}]
set_property PACKAGE_PIN P15 [get_ports {SW[1]}]
set_property PACKAGE_PIN W13 [get_ports {SW[2]}]
set_property PACKAGE_PIN T16 [get_ports {SW[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {SW[0]} SW[1] SW[2] SW[3]]

## Buttons
set_property PACKAGE_PIN R18 [get_ports {BTN[0]}]
set_property PACKAGE_PIN P16 [get_ports {BTN[1]}]
set_property PACKAGE_PIN V16 [get_ports {BTN[2]}]
set_property PACKAGE_PIN Y16 [get_ports {BTN[3]}]
set_property PACKAGE_PIN MI050 [get_ports {BTN[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {BTN[0]} BTN[1] BTN[2] BTN[3] BTN[4]}]

## LEDs
set_property PACKAGE_PIN M14 [get_ports {LED[0]}]
set_property PACKAGE_PIN M15 [get_ports {LED[1]}]
set_property PACKAGE_PIN G14 [get_ports {LED[2]}]
set_property PACKAGE_PIN D18 [get_ports {LED[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {LED[0]} LED[1] LED[2] LED[3]}]
