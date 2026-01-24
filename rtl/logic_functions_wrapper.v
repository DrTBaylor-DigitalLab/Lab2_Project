// logic_functions_wrapper.v - STUDENT TODO: Complete the top-level instantiation
// This is the Basys3-specific wrapper that connects your logic to the FPGA pins

module logic_functions_wrapper (
    input  wire [3:0] sw,      // Basys3 switches SW[3:0] - connect to input vector
    output wire [3:0] led,     // Basys3 LEDs LD[3:0] - connect to output vector
    output wire [6:0] seg,     // 7-segment display segments
    output wire [3:0] an       // 7-segment display anodes
);

// Internal signals to connect the design modules
// COMPLETED FOR YOU - This shows how to declare wires for internal connections
wire [3:0] logic_out;
wire [15:0] dec;

// TODO: Instantiate the hardware-agnostic top-level design
//
// You need to create an instance of logic_functions_top and connect:
//   - The .in_vec port to the sw signal (switches)
//   - The .out_vec port to the logic_out signal
//
// HINT: Follow this pattern:
// module_name instance_name (
//     .port_name(signal_name),
//     .port_name(signal_name)
// );
//
// logic_functions_top top (
//     .in_vec(???),
//     .out_vec(???)
// );

// Connect the logic output to the LEDs
// COMPLETED FOR YOU - This shows how to connect internal signals to output ports
assign led = logic_out;

// Seven-segment display chain (hardware-specific functionality)
// Hex decoder: Convert 4-bit logic output to 16-bit one-hot
hex_decoder hex_dec (
    .hex_in(logic_out),          // 4-bit logic function result
    .decoded(dec)                // 16-bit one-hot decoded output
);

// Seven-segment driver: Convert one-hot to segment patterns
seven_seg_driver seg_drv (
    .decoded(dec),               // 16-bit one-hot input
    .seg_out(seg)                // 7-bit segment output (low-true)
);

// Enable rightmost digit of 7-segment display
// COMPLETED FOR YOU - This shows how to enable specific display digits
assign an = 4'b1110;           // Enable rightmost digit only (low = on)

endmodule
