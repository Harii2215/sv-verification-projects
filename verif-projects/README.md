# SystemVerilog Verification Projects (Beginner)

A clean, beginner-friendly collection of basic verification projects written in SystemVerilog.

## Projects Included

1. **4-bit Adder** – Simple combinational DUT with directed + random testbench
2. **Synchronous FIFO** – Classic verification example with full testbench

## Repository Structure

```
verif-projects/
├── README.md
├── .gitignore
├── adder/
│   ├── README.md
│   ├── dut/adder.sv
│   ├── tb/tb_adder.sv
│   └── sim/ (Vivado run instructions)
└── fifo/
    ├── README.md
    ├── dut/fifo.sv
    ├── tb/tb_fifo.sv
    └── sim/ (Vivado run instructions)
```

## How to Use This Repo

Each project folder contains its own `README.md` with:
- Design description
- Full source code
- Step-by-step simulation instructions for **Vivado**
- What to observe / expected results

## Getting Started (GitHub)

```bash
# 1. Create a new repo on GitHub called "sv-verification-projects"
# 2. Clone it locally
git clone https://github.com/<your-username>/sv-verification-projects.git
cd sv-verification-projects

# 3. Copy the contents from this workspace into your local repo
# 4. Commit and push
git add .
git commit -m "Initial commit: Adder + FIFO verification projects"
git push -u origin main
```

---

**Next steps**: Open the individual project READMEs inside `adder/` and `fifo/`.