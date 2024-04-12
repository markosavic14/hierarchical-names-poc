module testbench;

	logic a = 0;
	logic[1:0] state_con;
	typedef enum {IDLE, WARMUP, TOAST, COOL_DOWN} state_type;
	state_type state_sv;
	
	top top_h(.iiA(a), .state_int(state_con));
	
	always @(state_con) begin
		case (state_con)
			2'b00 	: state_sv = IDLE;
			2'b01 	: state_sv = WARMUP;
			2'b10 	: state_sv = TOAST;
			default	: state_sv = COOL_DOWN;
		endcase
	end

	initial begin
		#5
		a = ~a;
		#5
		a = ~a;
	end

endmodule
