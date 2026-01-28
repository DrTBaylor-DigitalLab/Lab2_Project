// logic_func1.v - STUDENT EXERCISE: Write the complete module
//
// Create a module that implements the XOR parity function: F1 = w ^ x ^ y ^ z
//
// Requirements:
// - Module name: logic_func1
// - Input ports: w, x, y, z (all single-bit wires)
// - Output port: F1 (single-bit wire)
// - Function: F1 = w ^ x ^ y ^ z (XOR of all inputs)
//
// The XOR parity function outputs 1 when an ODD number of inputs are 1
// Examples:
//   - w=0, x=0, y=0, z=1 -> F1=1 (one input is 1, odd)
//   - w=0, x=1, y=1, z=0 -> F1=0 (two inputs are 1, even)
//   - w=1, x=0, y=1, z=1 -> F1=1 (three inputs are 1, odd)
//   - w=1, x=1, y=1, z=1 -> F1=0 (four inputs are 1, even)
//
// REFERENCE: See logic_func0.v for module structure example
//
// HINTS:
// - The XOR operator in Verilog is ^
// - XOR is associative: w ^ x ^ y ^ z works as expected
//
// Write your complete module below:

