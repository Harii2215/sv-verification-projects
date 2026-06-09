# SystemVerilog Verification Projects 🎯

A comprehensive collection of **SystemVerilog verification projects** ranging from beginner to intermediate/advanced level. Each project demonstrates industry-standard verification techniques with complete testbenches, detailed explanations, and simulation instructions.

**Educational focus**: Learn verification methodologies, testbench architecture, coverage techniques, and assertions through practical hands-on projects.

---

## 📋 Table of Contents
- [Quick Start](#quick-start)
- [Projects Overview](#projects-overview)
- [Project Details](#project-details)
- [Setup & Requirements](#setup--requirements)
- [How to Use](#how-to-use)
- [Contributing](#contributing)
- [Roadmap](#roadmap)
- [Learning Resources](#learning-resources)

---

## 🚀 Quick Start

```bash
# Clone the repository
git clone https://github.com/Harii2215/sv-verification-projects.git
cd sv-verification-projects

# Navigate to a project
cd verif-projects/adder

# Follow the README.md in each project folder for simulation steps
```

---

## 📊 Projects Overview

| Project | Level | Description | Key Concepts |
|---------|-------|-------------|--------------|
| **Adder** | Beginner | 4-bit combinational adder | Basic testbench, self-checking, randomization |
| **FIFO** | Beginner | Synchronous FIFO (depth=8) | Queues, control signals, edge cases |
| **Counter** | Intermediate | 8-bit loadable up/down counter | State machines, edge cases |
| **DFF** | Intermediate | D Flip-Flop with layered architecture | Testbench layers (Gen-Drv-Mon-Scoreboard) |
| **ALU** | Intermediate+ | 32-bit ALU with 8 operations | Coverage groups, constrained randomization, assertions |

---

## 🔍 Project Details

Each project includes:
- **DUT** (Design Under Test) - Full RTL implementation
- **Testbench** - Complete verification environment
- **Detailed README** - Explanations and simulation instructions
- **Learning objectives** - Key verification concepts covered

### Example Structure
```
project-name/
├── dut/
│   └── design.sv          # RTL implementation
├── tb/
│   └── tb_design.sv       # Testbench
└── README.md              # Full documentation
```

---

## ⚙️ Setup & Requirements

### Minimum Requirements
- **Vivado** (2021.1 or later) or any SystemVerilog simulator
  - ModelSim
  - xsim (part of Vivado)
  - VCS
  - xcelium

### Installation Steps

#### Using Vivado (Recommended for beginners)
1. Install [Xilinx Vivado](https://www.xilinx.com/products/design-tools/vivado.html)
2. Clone this repository
3. Open Vivado → Create New Project
4. Add source files from the project folder
5. Set testbench as top module
6. Run Behavioral Simulation

#### Using ModelSim
```bash
cd verif-projects/adder
vlog dut/adder.sv tb/tb_adder.sv
vsim tb_adder
run 200ns
```

---

## 📖 How to Use

### For Beginners
1. Start with the **Adder** project
2. Read the detailed README in each folder
3. Follow step-by-step simulation instructions
4. Modify testbench and observe behavior
5. Progress to FIFO, then Counter

### For Intermediate Learners
1. Review the testbench architecture in **DFF**
2. Study the **ALU** project for coverage and assertions
3. Understand scoreboard pattern and layered testbenches
4. Experiment with constraint randomization

### For Advanced Users
1. Review ALU for advanced patterns
2. Check the [ROADMAP.md](ROADMAP.md) for upcoming projects
3. Contribute new projects or enhancements
4. Use as a foundation for UVM framework learning

---

## 🤝 Contributing

We welcome contributions! Please see [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines on:
- Adding new projects
- Improving existing testbenches
- Fixing bugs or documentation

### Quick Contribution Process
```bash
git checkout -b add-new-project
# Make your changes
git commit -m "Add new project: [Project Name]"
git push origin add-new-project
# Open a Pull Request
```

---

## 🗺️ Roadmap

### Current Status
✅ 5 core projects implemented

### Upcoming Projects
- [ ] Synchronizer (CDC verification)
- [ ] Memory Controller
- [ ] AXI-Lite Protocol Verification
- [ ] UVM-lite Framework Example

See [ROADMAP.md](ROADMAP.md) for detailed future plans.

---

## 📚 Learning Resources

### Inside This Repository
- Detailed README in each project explaining concepts
- Inline code comments for complex logic
- Example waveforms in project documentation

### External Resources
- [SystemVerilog Standard (IEEE 1800-2017)](https://standards.ieee.org/ieee/1800/6700/)
- [Verification Academy](https://www.verification-academy.com/)
- [edaplayground.com](https://www.edaplayground.com/) - Online SystemVerilog IDE

---

## 📝 License

This repository is licensed under the **MIT License** - see [LICENSE](LICENSE) file for details.

---

## 💬 Questions & Support

- 📌 Open an [Issue](https://github.com/Harii2215/sv-verification-projects/issues) for questions
- 💡 Suggest improvements or new projects
- 🐛 Report bugs with clear descriptions

---

## ✨ Highlights

✅ **Progressive Learning** - Projects build on each other  
✅ **Industry-Standard Patterns** - Real verification techniques  
✅ **Well-Documented** - Each project includes detailed explanations  
✅ **Hands-On** - Complete runnable code with Vivado support  
✅ **Open to Contributions** - Community-driven improvements  

---

**Last Updated**: June 2026  
**Built with ❤️ for verification learners**
