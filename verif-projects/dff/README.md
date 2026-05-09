# Project 5: D Flip-Flop Verification (UVM-style Testbench)

This project demonstrates a **D Flip-Flop** verification environment using a **transaction-based testbench** (similar to UVM structure but without UVM library).

## Features

- Transaction class with randomization
- Generator → Driver → Monitor → Scoreboard architecture
- Separate mailboxes for driver and scoreboard
- Reset handling
- Self-checking scoreboard
- Event-based synchronization between generator and scoreboard

## Files

- `dut/dff.sv` – D Flip-Flop RTL
- `tb/tb_dff.sv` – Complete testbench (Generator, Driver, Monitor, Scoreboard, Environment)

## How to Simulate

### In Vivado:
1. Create a new RTL project
2. Add `dut/dff.sv`
3. Add `tb/tb_dff.sv` as simulation source
4. Set `tb` as top module
5. Run Behavioral Simulation for 1000 ns

### Expected Output
- 30 transactions are generated and checked
- Scoreboard should show "DATA MATCHED" for all transactions
- Waveform will show `din` and `dout` relationship with reset behavior

## Key Learning Points

- Transaction-level modeling
- Mailbox communication between components
- Event synchronization
- Reference model comparison in scoreboard
- Clean layered testbench architecture

This structure is a stepping stone toward **UVM**.