# Project 3: 8-bit Loadable Counter (Intermediate)

## Overview

An 8-bit synchronous counter with the following features:
- Loadable value
- Enable control
- Up/Down direction control
- Synchronous reset

This project introduces **control signals**, **state management**, and **more structured testbenches**.

## Files

- `dut/counter.sv` – DUT
- `tb/tb_counter.sv` – Testbench with constrained random + scoreboard

## Key Concepts Covered

- Synchronous design with multiple control signals
- Testbench with reference model (golden counter)
- Checking corner cases (load + enable + direction at same time)
- Use of `enum` for operation tracking

## Simulation Steps (Vivado)

1. Add both files to a new RTL project
2. Set `tb_counter` as top
3. Run Behavioral Simulation for 1 µs
4. Observe waveform for correct counting behavior and flag assertions

## Expected Results

- Counter should follow all control signals correctly
- No assertion violations
- Reference model matches DUT output at every clock cycle