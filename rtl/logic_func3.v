// logic_func3.v - STUDENT EXERCISE: Write the complete module
//
// Create a module that implements F3 = ~((A & B) & (C | D))
//
// Requirements:
// - Module name: logic_func3
// - Input ports: in_a, in_b, in_c, in_d (all single-bit wires)
// - Output port: F3 (single-bit wire)
// - Function: F3 = ~((in_a & in_b) & (in_c | in_d))
//
// This function demonstrates De Morgan's laws and NAND logic
// Break it down step by step:
//   1. Compute (in_a & in_b) - true when both in_a AND in_b are 1
//   2. Compute (in_c | in_d) - true when either in_c OR in_d is 1
//   3. AND the results from steps 1 and 2
//   4. Invert the final result with ~ (NOT)
//
// The result is LOW (0) only when BOTH:
//   - in_a AND in_b are both 1, AND
//   - at least one of in_c or in_d is 1
//
// Examples:
//   - in_a=1, in_b=1, in_c=1, in_d=0 -> (1&1)=1, (1|0)=1, 1&1=1, ~1=0 -> F3=0
//   - in_a=1, in_b=0, in_c=1, in_d=1 -> (1&0)=0, (1|1)=1, 0&1=0, ~0=1 -> F3=1
//   - in_a=0, in_b=0, in_c=0, in_d=0 -> (0&0)=0, (0|0)=0, 0&0=0, ~0=1 -> F3=1
//
// REFERENCE: See logic_func0.v for module structure example
//
// HINTS:
// - NOT operator: ~
// - AND operator: &
// - OR operator: |
// - Use parentheses to ensure correct order of operations
//
// Write your complete module below:

