`timescale 1ns / 1ps

module logic_functions_top_tb;

    reg  [3:0] in_vec;
    wire [3:0] out_vec;

    integer errors;
    integer i;
    reg exp_F0, exp_F1, exp_F2, exp_F3;
    wire A, B, C, D;

    assign A = in_vec[3];
    assign B = in_vec[2];
    assign C = in_vec[1];
    assign D = in_vec[0];

    // Instantiate the Unit Under Test (UUT)
    logic_functions_top uut (
        .in_vec(in_vec),
        .out_vec(out_vec)
    );

    initial begin
        errors = 0;

        $display("===========================================");
        $display("   Logic Functions Top - Starting Tests");
        $display("===========================================");
        $display("   Testing all four logic functions");
        $display("===========================================");

        for (i = 0; i < 16; i = i + 1) begin
            in_vec = i[3:0];
            #10;
            exp_F0 = (A & B) | (C & D);
            exp_F1 = A ^ B ^ C ^ D;
            exp_F2 = (A & B) | (A & C) | (A & D) | (B & C) | (B & D) | (C & D);
            exp_F3 = ~((A & B) & (C | D));

            if (out_vec[0] !== exp_F0) begin
                $display("FAIL F0: in=%b, F0=%b (expected %b)", in_vec, out_vec[0], exp_F0);
                errors = errors + 1;
            end
            if (out_vec[1] !== exp_F1) begin
                $display("FAIL F1: in=%b, F1=%b (expected %b)", in_vec, out_vec[1], exp_F1);
                errors = errors + 1;
            end
            if (out_vec[2] !== exp_F2) begin
                $display("FAIL F2: in=%b, F2=%b (expected %b)", in_vec, out_vec[2], exp_F2);
                errors = errors + 1;
            end
            if (out_vec[3] !== exp_F3) begin
                $display("FAIL F3: in=%b, F3=%b (expected %b)", in_vec, out_vec[3], exp_F3);
                errors = errors + 1;
            end

            if (out_vec[0] === exp_F0 && out_vec[1] === exp_F1 &&
                out_vec[2] === exp_F2 && out_vec[3] === exp_F3) begin
                $display("PASS: in=%b, out=%b (F3=%b F2=%b F1=%b F0=%b)",
                         in_vec, out_vec, out_vec[3], out_vec[2], out_vec[1], out_vec[0]);
            end
        end

        $display("===========================================");
        if (errors == 0) begin
            $display("   ALL TESTS PASSED!");
            $display("===========================================");
            $finish;
        end else begin
            $display("   TESTS FAILED: %0d errors", errors);
            $display("===========================================");
            $fatal(1, "Testbench failed");
        end
    end

endmodule
