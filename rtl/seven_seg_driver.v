module seven_seg_driver (
    input  wire [15:0] decoded,    // Input from hex_decoder (one-hot)
    output wire [6:0]  seg_out     // Seven segment outputs (a, b, c, d, e, f, g)
);

    // Seven segment display mapping (low true - 0 = segment on)
    //     a
    //   f   b
    //     g
    //   e   c
    //     d

    // Segment a (top)
    assign seg_out[0] = ~(decoded[0] | decoded[2] | decoded[3] | decoded[5] |
                         decoded[6] | decoded[7] | decoded[8] | decoded[9] |
                         decoded[10] | decoded[12] | decoded[14] | decoded[15]);

    // Segment b (top right)
    assign seg_out[1] = ~(decoded[0] | decoded[1] | decoded[2] | decoded[3] |
                         decoded[4] | decoded[7] | decoded[8] | decoded[9] |
                         decoded[10] | decoded[13]);

    // Segment c (bottom right)
    assign seg_out[2] = ~(decoded[0] | decoded[1] | decoded[3] | decoded[4] |
                         decoded[5] | decoded[6] | decoded[7] | decoded[8] |
                         decoded[9] | decoded[10] | decoded[11] | decoded[13]);

    // Segment d (bottom)
    assign seg_out[3] = ~(decoded[0] | decoded[2] | decoded[3] | decoded[5] |
                         decoded[6] | decoded[8] | decoded[9] | decoded[11] |
                         decoded[12] | decoded[13] | decoded[14]);

    // Segment e (bottom left)
    assign seg_out[4] = ~(decoded[0] | decoded[2] | decoded[6] | decoded[8] |
                         decoded[10] | decoded[11] | decoded[12] | decoded[13] |
                         decoded[14] | decoded[15]);

    // Segment f (top left)
    assign seg_out[5] = ~(decoded[0] | decoded[4] | decoded[5] | decoded[6] |
                         decoded[8] | decoded[9] | decoded[10] | decoded[11] |
                         decoded[12] | decoded[14] | decoded[15]);

    // Segment g (middle)
    assign seg_out[6] = ~(decoded[2] | decoded[3] | decoded[4] | decoded[5] |
                         decoded[6] | decoded[8] | decoded[9] | decoded[10] |
                         decoded[11] | decoded[13] | decoded[14] | decoded[15]);

endmodule
