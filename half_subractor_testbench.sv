module half_subtractor_tb;
    reg A, B;            
    wire Diff, Borrow;   

    half_subtractor uut (
        .A(A),
        .B(B),
        .Diff(Diff),
        .Borrow(Borrow)
    );

    initial begin
        $dumpfile("half_subractor_waveform.vcd");
        $dumpvars(1,half_subtractor_tb);
        $display("A B | Diff Borrow");
        $monitor("%b %b |  %b     %b", A, B, Diff, Borrow);

        A = 0; B = 0; #10;
        A = 0; B = 1; #10;
        A = 1; B = 0; #10;
        A = 1; B = 1; #10;

        $finish;
    end
endmodule