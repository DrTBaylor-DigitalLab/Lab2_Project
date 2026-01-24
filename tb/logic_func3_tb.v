`timescale 1ns / 1ps

module logic_func3_tb;

    reg  A, B, C, D;
    wire F3;

    integer errors;
    integer i;
    reg expected;

    // Instantiate the Unit Under Test (UUT)
    logic_func3 uut (
        .in_a(A),
        .in_b(B),
        .in_c(C),
        .in_d(D),
        .F3(F3)
    );

    initial begin
        errors = 0;

        $display("===========================================");
        $display("   Logic Func3 Testbench - Starting Tests");
        $display("===========================================");
        $display("   Testing: F3 = ~((A & B) & (C | D))");
        $display("===========================================");

        for (i = 0; i < 16; i = i + 1) begin
            {A, B, C, D} = i[3:0];
            #10;
            expected = ~((A & B) & (C | D));
            if (F3 !== expected) begin
                $display("FAIL: A=%b, B=%b, C=%b, D=%b, F3=%b (expected %b)", A, B, C, D, F3, expected);
                errors = errors + 1;
            end else begin
                $display("PASS: A=%b, B=%b, C=%b, D=%b, F3=%b", A, B, C, D, F3);
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
