// logic_func0.v - COMPLETED EXAMPLE MODULE
// This module is provided as an example of proper Verilog module structure

module logic_func0 (
    input  wire p,        // Input signal p (first input)
    input  wire q,        // Input signal q (second input)
    input  wire r,        // Input signal r (third input)
    input  wire s,        // Input signal s (fourth input)
    output wire F0        // Output function F0
);

// F0 implements AND-OR logic: F0 = (p & q) | (r & s)
// This means F0 is 1 when:
//   - Both p AND q are 1, OR
//   - Both r AND s are 1, OR
//   - Both conditions are true
assign F0 = (p & q) | (r & s);

endmodule
