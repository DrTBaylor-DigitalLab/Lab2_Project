# Lab 2: Modular Logic Functions

Write three logic function modules and integrate them into a complete system.

---

## Your Tasks

1. **Write `rtl/logic_func1.v`** - Complete XOR parity module
2. **Write `rtl/logic_func2.v`** - Complete majority function module
3. **Write `rtl/logic_func3.v`** - Complete NAND function module
4. **Complete `rtl/logic_functions_top.v`** - Add instantiations for func1, func2, func3
5. **Complete `rtl/logic_functions_wrapper.v`** - Add instantiation for logic_functions_top
6. **Simulate in Vivado** - Verify all outputs match the truth table
7. **Program the Basys 3** - Validate on hardware

---

## Logic Functions

| Function | Expression | Your Task |
|----------|------------|-----------|
| F0 | `(A & B) \| (C & D)` | PROVIDED (use as reference) |
| F1 | `A ^ B ^ C ^ D` | Write complete module |
| F2 | Majority (2+ inputs = 1) | Write complete module |
| F3 | `~((A & B) & (C \| D))` | Write complete module |

**Reference**: Study `rtl/logic_func0.v` for the module structure pattern.

---

## Module Requirements

### logic_func1
- Ports: `w`, `x`, `y`, `z` (inputs), `F1` (output)
- Function: XOR parity

### logic_func2
- Ports: `inputs[3:0]` (input vector), `F2` (output)
- Function: Majority (output 1 when 2+ bits are 1)

### logic_func3
- Ports: `in_a`, `in_b`, `in_c`, `in_d` (inputs), `F3` (output)
- Function: `~((in_a & in_b) & (in_c | in_d))`

---

## Expected Truth Table

| A B C D | F3 F2 F1 F0 | HEX |
|---------|-------------|-----|
| 0 0 0 0 |  1  0  0  0 |  8  |
| 0 0 0 1 |  1  0  1  0 |  a  |
| 0 0 1 0 |  1  0  1  0 |  a  |
| 0 0 1 1 |  1  1  0  1 |  d  |
| 0 1 0 0 |  1  0  1  0 |  a  |
| 0 1 0 1 |  1  1  0  0 |  c  |
| 0 1 1 0 |  1  1  0  0 |  c  |
| 0 1 1 1 |  1  1  1  1 |  f  |
| 1 0 0 0 |  1  0  1  0 |  a  |
| 1 0 0 1 |  1  1  0  0 |  c  |
| 1 0 1 0 |  1  1  0  0 |  c  |
| 1 0 1 1 |  1  1  1  1 |  f  |
| 1 1 0 0 |  1  1  0  1 |  d  |
| 1 1 0 1 |  0  1  1  1 |  7  |
| 1 1 1 0 |  0  1  1  1 |  7  |
| 1 1 1 1 |  0  1  0  1 |  5  |

---

## Vivado Workflow

### Test Individual Modules
1. Create Vivado project (select Basys 3)
2. Add all files from `rtl/` as design sources
3. Add all files from `tb/` as simulation sources
4. Set each testbench as top and run simulation:
   - `logic_func1_tb` → verify F1 column
   - `logic_func2_tb` → verify F2 column
   - `logic_func3_tb` → verify F3 column

### Test Complete System
1. Set `logic_functions_top_tb` as simulation top
2. Run Behavioral Simulation
3. Verify all outputs match the truth table

### Hardware Implementation
1. Set `logic_functions_wrapper` as synthesis top
2. Add `constraints/basys3.xdc`
3. Synthesize → Implement → Generate Bitstream → Program

---

## File Structure

```
rtl/
├── logic_func0.v             # F0 (PROVIDED - reference example)
├── logic_func1.v             # F1 (YOU WRITE)
├── logic_func2.v             # F2 (YOU WRITE)
├── logic_func3.v             # F3 (YOU WRITE)
├── logic_functions_top.v     # Integration (YOU COMPLETE)
├── logic_functions_wrapper.v # Hardware wrapper (YOU COMPLETE)
├── hex_decoder.v             # Display support (provided)
└── seven_seg_driver.v        # Display driver (provided)

tb/
├── logic_func0_tb.v          # Test F0
├── logic_func1_tb.v          # Test F1
├── logic_func2_tb.v          # Test F2
├── logic_func3_tb.v          # Test F3
└── logic_functions_top_tb.v  # Test complete system
```

---

## Hints

- **Start with logic_func0.v** - copy its structure for your modules
- **Port names matter** - each module uses different names; check the requirements
- **Test incrementally** - verify each module before moving to instantiation
- **Use parentheses** - clarify operator precedence in complex expressions
