module full_subtractor_using_half_subtractor_tb;
    reg A, B, Bin;
    wire Diff, Bout;
    full_subtractor_using_hs uut (
        .A(A),
        .B(B),
        .Bin(Bin),
        .Diff(Diff),
        .Bout(Bout)
    );

    initial begin
        $dumpfile("full_subtractor_using_half_subtractor_waveform.vcd");
        $dumpvars(1, full_subtractor_using_half_subtractor_tb);
        $display("A B Bin | Diff Bout");
        $monitor("%b %b  %b  |  %b    %b", A, B, Bin, Diff, Bout);
        A=0; B=0; Bin=0; #10;
        A=0; B=0; Bin=1; #10;
        A=0; B=1; Bin=0; #10;
        A=0; B=1; Bin=1; #10;
        A=1; B=0; Bin=0; #10;
        A=1; B=0; Bin=1; #10;
        A=1; B=1; Bin=0; #10;
        A=1; B=1; Bin=1; #10;

        $finish;
    end
endmodule