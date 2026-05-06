# Project 2: Synchronous FIFO Verification

## Design Under Test (DUT)

A parameterized synchronous FIFO (depth = 8, width = 8).

**File**: `dut/fifo.sv`

## Testbench

- Write and read operations
- Full/Empty flag checking
- Overflow/Underflow protection test
- Self-checking with golden model

**File**: `tb/tb_fifo.sv`

## How to Simulate in Vivado (Step-by-step)

1. Open Vivado
2. Create a new project → RTL Project
3. Add source files:
   - `dut/fifo.sv`
   - `tb/tb_fifo.sv`
4. Set `tb_fifo` as top module
5. Run Behavioral Simulation
6. Add all signals to waveform
7. Run for 500 ns

## Expected Behavior

- Correct data read back (FIFO order preserved)
- `full` and `empty` flags behave correctly
- No data corruption on simultaneous read/write

## Key Learning Points

- Synchronous FIFO design
- Handshaking with full/empty
- Testbench with queues for reference model
- Checking corner cases (full, empty, simultaneous access)