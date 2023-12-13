`timescale 1ns / 1ps

module decoder4x16( output [15:0] F,
						  input [3:0] I,
						  input en );
						  
	/*wire [3:0] w;
	
	decoder2x4 dec0(w[3:0],   I[1:0], en);
	decoder2x4 dec1(D[3:0],   I[3:2], w[0]);
	decoder2x4 dec2(D[7:4],   I[3:2], w[1]);
	decoder2x4 dec3(D[11:8],  I[3:2], w[2]);
	decoder2x4 dec4(D[15:12], I[3:2], w[3]);*/
	
	
	
	 wire [3:0] D;
    
    decoder2x4 dec0(F[15:12], I[1:0], ~D[3]);
    decoder2x4 dec1(F[11:8], I[1:0], ~D[2]);
    decoder2x4 dec2(F[7:4], I[1:0], ~D[1]);
    decoder2x4 dec3(F[3:0], I[1:0], ~D[0]);
	 decoder2x4 dec4(D[3:0], I[3:2], ~en);
    
   	

endmodule
