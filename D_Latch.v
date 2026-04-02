module D_Latch(
input E, D,
output reg Q, 
output Qp
    );
     always @(E) begin
        if (E)
        Q <= D;
    end
    
assign Qp = ~Q;
endmodule
