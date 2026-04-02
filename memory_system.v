module memory_system(
    input [7:0] data,
    input store,
    input [1:0] addr,
    output [7:0] memory
);

wire [7:0] a1;
wire [7:0] b1;
wire [7:0] c1;
wire [7:0] d1;

wire p0;
wire p1;
wire p2;
wire p3;

wire [7:0] o0;
wire [7:0] o1;
wire [7:0] o2;
wire [7:0] o3;

demultiplexer one (
    .data(data),
    .sel(addr),
    .A(a1),
    .B(b1),
    .C(c1),
    .D(d1)
    );
    
demux two (
    .data(store),
    .sel(addr),
    .A(p0),
    .B(p1),
    .C(p2),
    .D(p3)
    );
    
 byte_memory pack0 (
     .data(a1),
     .store(p0),
    .memory(o0)
 );
 
  byte_memory pack1 (
     .data(b1),
     .store(p1),
    .memory(o1)
 );
 
  byte_memory pack2 (
    .data(c1),
    .store(p2),
    .memory(o2)
 );
 
  byte_memory pack3 (
    .data(d1),
    .store(p3),
    .memory(o3)
 );
 
 mux final (
    .A(o0),
    .B(o1),
    .C(o2),
    .D(o3),
    .Sel(addr),
    .Y(memory)
    );

endmodule