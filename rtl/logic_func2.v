// logic_func2.v - COMPLETED EXAMPLE MODULE
// This module is provided as an example of more complex Boolean logic implementation

module logic_func2 (
    input  wire [3:0] inputs,  // 4-bit input vector [3:0]
    output wire F2             // Output function F2
);

// Extract individual signals from input vector
wire i3, i2, i1, i0;
assign i3 = inputs[3];  // MSB
assign i2 = inputs[2];
assign i1 = inputs[1];
assign i0 = inputs[0];  // LSB

// F2 implements majority logic: F2 is 1 when 2 or more inputs are 1
// This is the sum-of-products form for majority of 4 variables
// F2 = i3i2 + i3i1 + i3i0 + i2i1 + i2i0 + i1i0
assign F2 = (i3 & i2) | (i3 & i1) | (i3 & i0) | (i2 & i1) | (i2 & i0) | (i1 & i0);

endmodule
