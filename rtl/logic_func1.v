// logic_func1.v - STUDENT TODO MODULE
// Complete this module by implementing the XOR parity function

module logic_func1 (
    input  wire w,        // Input signal w (first input)
    input  wire x,        // Input signal x (second input)
    input  wire y,        // Input signal y (third input)
    input  wire z,        // Input signal z (fourth input)
    output wire F1        // Output function F1
);

// TODO: Implement F1 = w ^ x ^ y ^ z (XOR parity function)
//
// The XOR parity function outputs 1 when an ODD number of inputs are 1
// Examples:
//   - w=0, x=0, y=0, z=1 → F1=1 (one input is 1, odd number)
//   - w=0, x=1, y=1, z=0 → F1=0 (two inputs are 1, even number)
//   - w=1, x=0, y=1, z=1 → F1=1 (three inputs are 1, odd number)
//
// HINT: In Verilog, the XOR operator is ^
// HINT: XOR is associative, so w ^ x ^ y ^ z works as expected
//
// Write your assign statement here:
// assign F1 = ???;

endmodule
