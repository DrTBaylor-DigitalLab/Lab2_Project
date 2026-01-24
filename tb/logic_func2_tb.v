`timescale 1ns / 1ps

module logic_func2_tb;

    reg  A, B, C, D;
    wire F2;

    integer errors;
    integer i;
    reg expected;

    // Instantiate the Unit Under Test (UUT)
    logic_func2 uut (
        .inputs({A, B, C, D}),
        .F2(F2)
    );

    initial begin
        errors = 0;

        $display("===========================================");
        $display("   Logic Func2 Testbench - Starting Tests");
        $display("===========================================");
        $display("   Testing: F2 = majority(A,B,C,D)");
        $display("===========================================");

        for (i = 0; i < 16; i = i + 1) begin
            {A, B, C, D} = i[3:0];
            #10;
            expected = (A & B) | (A & C) | (A & D) | (B & C) | (B & D) | (C & D);
            if (F2 !== expected) begin
                $display("FAIL: A=%b, B=%b, C=%b, D=%b, F2=%b (expected %b)", A, B, C, D, F2, expected);
                errors = errors + 1;
            end else begin
                $display("PASS: A=%b, B=%b, C=%b, D=%b, F2=%b", A, B, C, D, F2);
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
