# ironboot_blink-test

# ledblink-test

First test designs for **IronBoot**, an FPGA-based firmware integrity
verification system that checks firmware with SHA-256 before authorizing boot.

- Board: Digilent Nexys A7-100T (Artix-7, part xc7a100tcsg324-1)
- Tools: AMD Vivado 2026.1
- Author: Phoebe Calabrese

## Files

| File | What it does |
| --- | --- |
| led_test.vhd | LED blink: divides the 100 MHz clock and toggles LED0 about once per second |
| nexys_pins.xdc | Constraints: LED0 on pin H17 and the 100 MHz clock on pin E3 |
| led_test.v | Earlier test (Verilog): switch SW0 drives LED0. Do not use together with led_test.vhd |

## How to use

1. Create a Vivado project for part xc7a100tcsg324-1.
2. Add led_test.vhd as a design source and nexys_pins.xdc as a constraints file.
3. Generate the bitstream and program the board from Hardware Manager.

## Status

Work in progress for ECE 498 senior design.
