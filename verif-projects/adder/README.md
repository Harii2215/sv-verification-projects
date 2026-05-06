# Project 1: 4-bit Adder Verification

## Design Under Test (DUT)

A simple 4-bit combinational adder with carry-out.

**File**: `dut/adder.sv`

## Testbench

- Directed tests (corner cases)
- Random stimulus with self-checking
- Coverage of all input combinations (basic)

**File**: `tb/tb_adder.sv`

## How to Simulate in Vivado (Step-by-step)

1. Open Vivado
2. Create a new project → RTL Project (no board needed)
3. Add source files:
   - `dut/adder.sv`
   - `tb/tb_adder.sv`
4. Set `tb_adder` as top module (Simulation sources)
5. Run Behavioral Simulation
6. In the waveform window, add all signals
7. Run for 200 ns

## Expected Behavior

You should see:
- Correct `sum` and `cout` for all input combinations
- `$display` messages showing PASS/FAIL
- No assertion failures

## Key Learning Points

- Basic DUT + testbench structure
- Using `always` block for stimulus
- Self-checking testbench with `assert`
- Randomization with `randomize()`