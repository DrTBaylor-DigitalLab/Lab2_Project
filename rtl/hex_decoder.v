// hex_decoder.v - 4-bit hex to 16-bit one-hot decoder
// Converts 4-bit binary input to 16-bit one-hot output for seven-segment display

module hex_decoder (
    input  wire [3:0]  hex_in,     // 4-bit hex input (0x0 to 0xF)
    output wire [15:0] decoded     // 16-bit one-hot output
);

// One-hot decoder using logic equations (no case statements for educational clarity)
// Each output bit corresponds to one hex value (0-F)

assign decoded[0]  = ~hex_in[3] & ~hex_in[2] & ~hex_in[1] & ~hex_in[0];  // 0x0
assign decoded[1]  = ~hex_in[3] & ~hex_in[2] & ~hex_in[1] &  hex_in[0];  // 0x1
assign decoded[2]  = ~hex_in[3] & ~hex_in[2] &  hex_in[1] & ~hex_in[0];  // 0x2
assign decoded[3]  = ~hex_in[3] & ~hex_in[2] &  hex_in[1] &  hex_in[0];  // 0x3
assign decoded[4]  = ~hex_in[3] &  hex_in[2] & ~hex_in[1] & ~hex_in[0];  // 0x4
assign decoded[5]  = ~hex_in[3] &  hex_in[2] & ~hex_in[1] &  hex_in[0];  // 0x5
assign decoded[6]  = ~hex_in[3] &  hex_in[2] &  hex_in[1] & ~hex_in[0];  // 0x6
assign decoded[7]  = ~hex_in[3] &  hex_in[2] &  hex_in[1] &  hex_in[0];  // 0x7
assign decoded[8]  =  hex_in[3] & ~hex_in[2] & ~hex_in[1] & ~hex_in[0];  // 0x8
assign decoded[9]  =  hex_in[3] & ~hex_in[2] & ~hex_in[1] &  hex_in[0];  // 0x9
assign decoded[10] =  hex_in[3] & ~hex_in[2] &  hex_in[1] & ~hex_in[0];  // 0xA
assign decoded[11] =  hex_in[3] & ~hex_in[2] &  hex_in[1] &  hex_in[0];  // 0xB
assign decoded[12] =  hex_in[3] &  hex_in[2] & ~hex_in[1] & ~hex_in[0];  // 0xC
assign decoded[13] =  hex_in[3] &  hex_in[2] & ~hex_in[1] &  hex_in[0];  // 0xD
assign decoded[14] =  hex_in[3] &  hex_in[2] &  hex_in[1] & ~hex_in[0];  // 0xE
assign decoded[15] =  hex_in[3] &  hex_in[2] &  hex_in[1] &  hex_in[0];  // 0xF

endmodule
