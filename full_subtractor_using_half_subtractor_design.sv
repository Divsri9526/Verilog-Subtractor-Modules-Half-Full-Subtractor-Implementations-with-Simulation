// Half Subtractor Module
module half_subtractor (
    input A, B,
    output Diff, Borrow
);
    assign Diff = A ^ B; 
    assign Borrow = (~A) & B; 
endmodule

// Full Subtractor using two Half Subtractors
module full_subtractor_using_hs (
    input A, B, Bin,
    output Diff, Bout
);
    wire Diff1, Borrow1, Borrow2;

    half_subtractor HS1 (
        .A(A),
        .B(B),
        .Diff(Diff1),
        .Borrow(Borrow1)
    );
  
    half_subtractor HS2 (
        .A(Diff1),
        .B(Bin),
        .Diff(Diff),
        .Borrow(Borrow2)
    );

    assign Bout = Borrow1 | Borrow2;
endmodule