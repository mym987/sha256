module sha256_dgt(
  input wire clk,
  input wire reset,
  input wire ctrl,
  input wire [511:0] blk,

  output wire ready,
  output wire [255:0] dgt,
);

endmodule