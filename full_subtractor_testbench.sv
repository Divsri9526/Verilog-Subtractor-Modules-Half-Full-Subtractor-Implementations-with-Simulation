module full_subtractor_tb;
    reg A, B, Bin;        
    wire Diff, Bout; 
  
    full_subtractor uut (
        .A(A),
        .B(B),
        .Bin(Bin),
        .Diff(Diff),
        .Bout(Bout)
    );

    initial begin $dumpfile("full_subtractor.vcd");   
        $dumpvars(0, full_subtractor_tb);
      $display("Time\tA B Bin | Diff Bout");
        $monitor("%0t\t%b %b  %b  |  %b    %b", $time, A, B, Bin, Diff, Bout);

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