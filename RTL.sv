module counter_4bit(
  input clk,
  input rst,
  output reg [3:0] count);
  
  always@(posedge clk or negedge rst) begin
    if(!rst) begin
      count <= 4'h0;
    end
    else begin
      if(count == 4'hf) begin
        count <= 4'h0;
      end
      else begin
        count <= count + 1'b1;
      end
    end
  end
  
endmodule
