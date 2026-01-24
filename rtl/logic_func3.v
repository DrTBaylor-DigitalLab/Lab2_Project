// logic_func3.v - STUDENT EXERCISE: Write the complete module
//
// Create a module that implements F3 = ~((A & B) & (C | D))
//
// Requirements:
// - Module name: logic_func3
// - Input ports: in_a, in_b, in_c, in_d (all single-bit wires)
// - Output port: F3 (single-bit wire)
// - Function: F3 = ~((A & B) & (C | D)) using inputs in_a, in_b, in_c, in_d
//
// This function demonstrates De Morgan's laws and NAND logic
// The result is LOW only when both (A & B) is true AND (C | D) is true
//
// Examples:
//   - in_a=1, in_b=1, in_c=1, in_d=0 → (in_a&in_b)=1, (in_c|in_d)=1, result=1, ~(...)=0 → F3=0
//   - in_a=1, in_b=0, in_c=1, in_d=1 → (in_a&in_b)=0, (in_c|in_d)=1, result=0, ~(...)=1 → F3=1
//
// HINTS:
// - Use 'module' and 'endmodule' keywords
// - Declare inputs with 'input wire'
// - Declare output with 'output wire'
// - Implement logic with 'assign' statement
// - Use parentheses for order of operations: ~((in_a & in_b) & (in_c | in_d))
// - The NOT operator in Verilog is ~
// - AND is &, OR is |

// Write your complete module here:
