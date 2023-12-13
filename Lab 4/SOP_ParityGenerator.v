/*           ******************************************************     */
/*          **   course         : Logic Circuit Lab               **    */
/*         ***   Lab            : 04                              ***   */
/*        ****   Topic          : Parity Generator                ****  */
/*        ****   AUTHOR         : Reza Adinepour                  ****  */
/*         ***   Github         : github.com/rezaAdinepour/       **    */
/*           ******************************************************     */

`timescale 1ns / 1ps

module SOP_ParityGenerator(input [2:0] data, output parity);
	
	assign parity = data[0] &  data[1] & ~data[2] |
                   data[0] & ~data[1] &  data[2] |
                  ~data[0] &  data[1] &  data[2] |
                  ~data[0] & ~data[1] & ~data[2];
  
endmodule
