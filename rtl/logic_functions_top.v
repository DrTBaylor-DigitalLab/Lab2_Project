// logic_functions_top.v - STUDENT TODO: Complete the module instantiations
// This is the hardware-agnostic top-level module that integrates all four logic functions

module logic_functions_top (
    input  wire [3:0] in_vec,         // 4-bit input vector: {A,B,C,D}
    output wire [3:0] out_vec         // 4-bit output vector: {F3,F2,F1,F0}
);

// No intermediate wires needed - connect directly to vector bits

// TODO: Instantiate all four logic function modules
//
// NOTICE: Each module uses DIFFERENT input port names!
// You must match the port names exactly as defined in each module.
//
// COMPLETED FOR YOU: logic_func0 instantiation as an example
// logic_func0 uses ports: p, q, r, s (see logic_func0.v)
logic_func0 func0 (
    .p(in_vec[3]),      // Connect port p to A (MSB)
    .q(in_vec[2]),      // Connect port q to B
    .r(in_vec[1]),      // Connect port r to C
    .s(in_vec[0]),      // Connect port s to D (LSB)
    .F0(out_vec[0])     // Connect port F0 to output bit 0
);

// TODO: Complete the instantiation for logic_func1
// HINT: logic_func1 uses ports: w, x, y, z (check logic_func1.v)
// HINT: Connect w→in_vec[3], x→in_vec[2], y→in_vec[1], z→in_vec[0]
// HINT: Connect the output to out_vec[1]
//
// logic_func1 func1 (
//     .w(???),
//     .x(???),
//     .y(???),
//     .z(???),
//     .F1(???)
// );

// COMPLETED FOR YOU: logic_func2 instantiation as an example
// logic_func2 uses a vector port: inputs[3:0] (see logic_func2.v)
logic_func2 func2 (
    .inputs(in_vec),        // Connect vector port to in_vec
    .F2(out_vec[2])         // Connect port F2 to output bit 2
);

// TODO: Complete the instantiation for logic_func3
// HINT: logic_func3 uses ports: in_a, in_b, in_c, in_d (check logic_func3.v)
// HINT: Connect in_a→in_vec[3], in_b→in_vec[2], in_c→in_vec[1], in_d→in_vec[0]
// HINT: Connect the output to out_vec[3]
//
// logic_func3 func3 (
//     .in_a(???),
//     .in_b(???),
//     .in_c(???),
//     .in_d(???),
//     .F3(???)
// );

// No need to pack outputs - they are already connected directly to out_vec bits

endmodule
