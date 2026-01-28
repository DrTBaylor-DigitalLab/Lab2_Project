// logic_functions_top.v - STUDENT EXERCISE: Complete all module instantiations
// This is the hardware-agnostic top-level module that integrates all four logic functions

module logic_functions_top (
    input  wire [3:0] in_vec,         // 4-bit input vector: {A,B,C,D}
    output wire [3:0] out_vec         // 4-bit output vector: {F3,F2,F1,F0}
);

// =============================================================================
// REFERENCE EXAMPLE: logic_func0 instantiation (COMPLETED FOR YOU)
// =============================================================================
// logic_func0 uses individual ports: p, q, r, s
// We connect: p->A (in_vec[3]), q->B (in_vec[2]), r->C (in_vec[1]), s->D (in_vec[0])
// Output F0 connects to out_vec[0]

logic_func0 func0 (
    .p(in_vec[3]),      // Connect port p to A (MSB of input)
    .q(in_vec[2]),      // Connect port q to B
    .r(in_vec[1]),      // Connect port r to C
    .s(in_vec[0]),      // Connect port s to D (LSB of input)
    .F0(out_vec[0])     // Connect output F0 to bit 0 of output vector
);

// =============================================================================
// TODO #1: Instantiate logic_func1
// =============================================================================
// logic_func1 uses ports: w, x, y, z, F1
// Connect inputs: w->in_vec[3], x->in_vec[2], y->in_vec[1], z->in_vec[0]
// Connect output: F1->out_vec[1]
//
// Write your instantiation below:



// =============================================================================
// TODO #2: Instantiate logic_func2
// =============================================================================
// logic_func2 uses a VECTOR port: inputs[3:0], F2
// Connect: inputs->in_vec (the whole 4-bit vector)
// Connect output: F2->out_vec[2]
//
// Write your instantiation below:



// =============================================================================
// TODO #3: Instantiate logic_func3
// =============================================================================
// logic_func3 uses ports: in_a, in_b, in_c, in_d, F3
// Connect inputs: in_a->in_vec[3], in_b->in_vec[2], in_c->in_vec[1], in_d->in_vec[0]
// Connect output: F3->out_vec[3]
//
// Write your instantiation below:



endmodule
