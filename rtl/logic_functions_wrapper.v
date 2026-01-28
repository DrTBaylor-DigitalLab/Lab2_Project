// logic_functions_wrapper.v - STUDENT EXERCISE: Complete the top-level instantiation
// This is the Basys3-specific wrapper that connects your logic to the FPGA pins

module logic_functions_wrapper (
    input  wire [3:0] sw,      // Basys3 switches SW[3:0] - directly usable as inputs
    output wire [3:0] led,     // Basys3 LEDs LD[3:0] - directly usable as outputs
    output wire [6:0] seg,     // 7-segment display segments
    output wire [3:0] an       // 7-segment display anodes
);

// Internal signal to connect the logic output
wire [3:0] logic_out;
wire [15:0] dec;

// =============================================================================
// TODO: Instantiate the logic_functions_top module
// =============================================================================
// Connect the switches (sw) to the input vector (in_vec)
// Connect the output vector (out_vec) to the logic_out wire
//
// REFERENCE: See the func0 instantiation in logic_functions_top.v for the pattern
//
// Write your instantiation below:



// =============================================================================
// ACTIVE CODE - Connect logic output to LEDs (DO NOT MODIFY BELOW THIS LINE)
// =============================================================================

// Connect the logic output to the LEDs
assign led = logic_out;

// Seven-segment display chain (converts 4-bit result to display pattern)
hex_decoder hex_dec (
    .hex_in(logic_out),
    .decoded(dec)
);

seven_seg_driver seg_drv (
    .decoded(dec),
    .seg_out(seg)
);

// Enable rightmost digit of 7-segment display (active low)
assign an = 4'b1110;

endmodule
