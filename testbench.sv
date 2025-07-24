// Code your testbench here
// or browse Examples
module tb_mux2to1;
  reg a, b, sel;
  wire y;
  mux2to1 uut (
    .a(a),
    .b(b),
    .sel(sel),
    .y(y)
  );
  initial begin
    $display(" A B Sel | Y");
    $display("------------");
    a = 0; b = 0; sel = 0; #10;
    $display("%b %b %b | %b", a, b, sel, y);
    a = 0; b = 1; sel = 0; #10;
    $display("%b %b %b | %b", a, b, sel, y);
    a = 1; b = 0; sel = 0; #10;
    $display("%b %b %b | %b", a, b, sel, y);
    a = 1; b = 1; sel = 0; #10;
    $display("%b %b %b | %b", a, b, sel, y);
    sel = 1;
    a = 0; b =0; #10;
    $display("%b %b %b | %b", a, b, sel, y);
    a = 0; b =1; #10;
    $display("%b %b %b | %b", a, b, sel, y);
    a = 1; b = 0; #10;
    $display("%b %b %b | %b", a, b, sel, y);
    a = 1; b = 1; #10;
    $display("%b %b %b | %b", a, b, sel, y);
    $finish;
  end
endmodule