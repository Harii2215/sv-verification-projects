# Project 4: Parameterized ALU (Intermediate+)

## Overview

This ALU is designed at an **intermediate+** level. It includes:

- Parameterized data width (default 32-bit)
- 8 different operations
- Status flags (Zero, Carry, Overflow, Negative)
- Registered outputs (1-cycle latency)
- Functional coverage and constrained-random testing

## Supported Operations

| Opcode | Operation     | Description                     |
|--------|---------------|---------------------------------|
| 000    | ADD           | a + b                           |
| 001    | SUB           | a - b                           |
| 010    | AND           | a & b                           |
| 011    | OR            | a \| b                          |
| 100    | XOR           | a ^ b                           |
| 101    | SLL           | a << b[4:0]                     |
| 110    | SRL           | a >> b[4:0]                     |
| 111    | SLT           | (a < b) ? 1 : 0                 |

## Key Advanced Concepts

- **Reference model** in testbench (SystemVerilog queue + functions)
- **Functional coverage** on opcodes and corner cases
- **Assertions** for overflow detection
- **Scoreboard** style checking
- Proper use of `enum` and `typedef`

## Files

- `dut/alu.sv`
- `tb/tb_alu.sv`

## Simulation Instructions (Vivado)

1. Create new RTL project
2. Add `dut/alu.sv` and `tb/tb_alu.sv`
3. Set `tb_alu` as top module
4. Run simulation for 2000 ns
5. Check waveform + console for coverage and assertion reports

## What Makes This Intermediate+

- Uses `covergroup`
- Constrained random stimulus
- Self-checking with golden reference model
- Multiple corner case tests (overflow, negative, zero)
- Clean, reusable testbench structure

This project prepares you for UVM-style verification environments.