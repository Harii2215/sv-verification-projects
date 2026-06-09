# Contributing to SV Verification Projects

Thank you for your interest in contributing! This repository is designed as an educational resource for learning SystemVerilog verification.

## How to Contribute

### Adding New Projects
1. Create a new folder under `verif-projects/` with a descriptive name
2. Follow the standard structure:
   ```
   project-name/
   ├── dut/
   │   └── [design files].sv
   ├── tb/
   │   └── tb_[project].sv
   └── README.md
   ```
3. Include detailed README with:
   - Project overview
   - DUT description
   - Testbench structure
   - Simulation instructions
   - Key learning points

### Improving Existing Projects
- Enhance testbenches with better coverage
- Add assertions and error checking
- Fix bugs or improve documentation
- Add multi-tool simulation support

### Code Standards
- Use clear, readable SystemVerilog code
- Include inline comments for complex logic
- Follow naming conventions (snake_case for signals, CamelCase for classes)
- Add `$display` statements for debugging output

## Pull Request Process
1. Fork the repository
2. Create a feature branch: `git checkout -b add-new-project`
3. Make your changes
4. Test thoroughly in Vivado or your simulator
5. Submit a PR with clear description

## Questions?
Open an issue with the label `question` or `discussion`.

---

Happy verifying! 🎯
