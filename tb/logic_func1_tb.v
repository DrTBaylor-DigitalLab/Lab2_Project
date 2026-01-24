`timescale 1ns / 1ps

module logic_func1_tb;

    reg  A, B, C, D;
    wire F1;

    integer errors;
    integer i;
    reg expected;

    // Instantiate the Unit Under Test (UUT)
    logic_func1 uut (
        .w(A),
        .x(B),
        .y(C),
        .z(D),
        .F1(F1)
    );

    initial begin
        errors = 0;

        $display("===========================================");
        $display("   Logic Func1 Testbench - Starting Tests");
        $display("===========================================");
        $display("   Testing: F1 = A ^ B ^ C ^ D");
        $display("===========================================");

        for (i = 0; i < 16; i = i + 1) begin
            {A, B, C, D} = i[3:0];
            #10;
            expected = A ^ B ^ C ^ D;
            if (F1 !== expected) begin
                $display("FAIL: A=%b, B=%b, C=%b, D=%b, F1=%b (expected %b)", A, B, C, D, F1, expected);
                errors = errors + 1;
            end else begin
                $display("PASS: A=%b, B=%b, C=%b, D=%b, F1=%b", A, B, C, D, F1);
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
