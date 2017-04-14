module sha256_const(addr, k);
  input wire [5:0] addr;
  output wire [31:0] k;

  wire [63:0] addr_decode;

  my_decoder decoder(addr, addr_decode);

  assign k = addr_decode[0] ? 32'h428a2f98 : 32'bz;
  assign k = addr_decode[1] ? 32'h71374491 : 32'bz;
  assign k = addr_decode[2] ? 32'hb5c0fbcf : 32'bz;
  assign k = addr_decode[3] ? 32'he9b5dba5 : 32'bz;
  assign k = addr_decode[4] ? 32'h3956c25b : 32'bz;
  assign k = addr_decode[5] ? 32'h59f111f1 : 32'bz;
  assign k = addr_decode[6] ? 32'h923f82a4 : 32'bz;
  assign k = addr_decode[7] ? 32'hab1c5ed5 : 32'bz;
  assign k = addr_decode[8] ? 32'hd807aa98 : 32'bz;
  assign k = addr_decode[9] ? 32'h12835b01 : 32'bz;

  assign k = addr_decode[10] ? 32'h243185be : 32'bz;
  assign k = addr_decode[11] ? 32'h550c7dc3 : 32'bz;
  assign k = addr_decode[12] ? 32'h72be5d74 : 32'bz;
  assign k = addr_decode[13] ? 32'h80deb1fe : 32'bz;
  assign k = addr_decode[14] ? 32'h9bdc06a7 : 32'bz;
  assign k = addr_decode[15] ? 32'hc19bf174 : 32'bz;
  assign k = addr_decode[16] ? 32'he49b69c1 : 32'bz;
  assign k = addr_decode[17] ? 32'hefbe4786 : 32'bz;
  assign k = addr_decode[18] ? 32'h0fc19dc6 : 32'bz;
  assign k = addr_decode[19] ? 32'h240ca1cc : 32'bz;

  assign k = addr_decode[20] ? 32'h2de92c6f : 32'bz;
  assign k = addr_decode[21] ? 32'h4a7484aa : 32'bz;
  assign k = addr_decode[22] ? 32'h5cb0a9dc : 32'bz;
  assign k = addr_decode[23] ? 32'h76f988da : 32'bz;
  assign k = addr_decode[24] ? 32'h983e5152 : 32'bz;
  assign k = addr_decode[25] ? 32'ha831c66d : 32'bz;
  assign k = addr_decode[26] ? 32'hb00327c8 : 32'bz;
  assign k = addr_decode[27] ? 32'hbf597fc7 : 32'bz;
  assign k = addr_decode[28] ? 32'hc6e00bf3 : 32'bz;
  assign k = addr_decode[29] ? 32'hd5a79147 : 32'bz;

  assign k = addr_decode[30] ? 32'h06ca6351 : 32'bz;
  assign k = addr_decode[31] ? 32'h14292967 : 32'bz;
  assign k = addr_decode[32] ? 32'h27b70a85 : 32'bz;
  assign k = addr_decode[33] ? 32'h2e1b2138 : 32'bz;
  assign k = addr_decode[34] ? 32'h4d2c6dfc : 32'bz;
  assign k = addr_decode[35] ? 32'h53380d13 : 32'bz;
  assign k = addr_decode[36] ? 32'h650a7354 : 32'bz;
  assign k = addr_decode[37] ? 32'h766a0abb : 32'bz;
  assign k = addr_decode[38] ? 32'h81c2c92e : 32'bz;
  assign k = addr_decode[39] ? 32'h92722c85 : 32'bz;

  assign k = addr_decode[40] ? 32'ha2bfe8a1 : 32'bz;
  assign k = addr_decode[41] ? 32'ha81a664b : 32'bz;
  assign k = addr_decode[42] ? 32'hc24b8b70 : 32'bz;
  assign k = addr_decode[43] ? 32'hc76c51a3 : 32'bz;
  assign k = addr_decode[44] ? 32'hd192e819 : 32'bz;
  assign k = addr_decode[45] ? 32'hd6990624 : 32'bz;
  assign k = addr_decode[46] ? 32'hf40e3585 : 32'bz;
  assign k = addr_decode[47] ? 32'h106aa070 : 32'bz;
  assign k = addr_decode[48] ? 32'h19a4c116 : 32'bz;
  assign k = addr_decode[49] ? 32'h1e376c08 : 32'bz;

  assign k = addr_decode[50] ? 32'h2748774c : 32'bz;
  assign k = addr_decode[51] ? 32'h34b0bcb5 : 32'bz;
  assign k = addr_decode[52] ? 32'h391c0cb3 : 32'bz;
  assign k = addr_decode[53] ? 32'h4ed8aa4a : 32'bz;
  assign k = addr_decode[54] ? 32'h5b9cca4f : 32'bz;
  assign k = addr_decode[55] ? 32'h682e6ff3 : 32'bz;
  assign k = addr_decode[56] ? 32'h748f82ee : 32'bz;
  assign k = addr_decode[57] ? 32'h78a5636f : 32'bz;
  assign k = addr_decode[58] ? 32'h84c87814 : 32'bz;
  assign k = addr_decode[59] ? 32'h8cc70208 : 32'bz;

  assign k = addr_decode[60] ? 32'h90befffa : 32'bz;
  assign k = addr_decode[61] ? 32'ha4506ceb : 32'bz;
  assign k = addr_decode[62] ? 32'hbef9a3f7 : 32'bz;
  assign k = addr_decode[63] ? 32'hc67178f2 : 32'bz;
endmodule

module my_decoder (d,q);
  input [5:0] d;
  output [63:0] q;
  assign q = 1'b1 << d;
endmodule
