// logic_func2.v - STUDENT EXERCISE: Write the complete module
//
// Create a module that implements the majority function
//
// Requirements:
// - Module name: logic_func2
// - Input port: inputs (4-bit vector [3:0])
// - Output port: F2 (single-bit wire)
// - Function: F2 = 1 when 2 or more input bits are 1
//
// The majority function outputs 1 when at least half the inputs are 1
// For 4 inputs, this means 2, 3, or 4 inputs are high
//
// Examples (inputs[3:0] = {i3, i2, i1, i0}):
//   - inputs = 4'b0000 -> F2=0 (zero 1s)
//   - inputs = 4'b0001 -> F2=0 (one 1)
//   - inputs = 4'b0011 -> F2=1 (two 1s)
//   - inputs = 4'b0111 -> F2=1 (three 1s)
//   - inputs = 4'b1111 -> F2=1 (four 1s)
//
// REFERENCE: See logic_func0.v for module structure example
//
// HINTS:
// - You can access individual bits: inputs[3], inputs[2], inputs[1], inputs[0]
// - The majority function can be written as sum-of-products:
//   F2 = (i3 & i2) | (i3 & i1) | (i3 & i0) | (i2 & i1) | (i2 & i0) | (i1 & i0)
//   (This covers all pairs of inputs being 1)
// - You may use intermediate wires if you prefer
//
// Write your complete module below:

