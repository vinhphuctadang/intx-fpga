// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Version: 2020.2
// Copyright (C) Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="add_add,hls_ip_2020_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xcvu11p-flga2577-1-e,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=4.560286,HLS_SYN_LAT=11,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=1291,HLS_SYN_LUT=452,HLS_VERSION=2020_2}" *)

module add (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        a,
        b,
        ap_return
);

parameter    ap_ST_fsm_state1 = 5'd1;
parameter    ap_ST_fsm_state2 = 5'd2;
parameter    ap_ST_fsm_state3 = 5'd4;
parameter    ap_ST_fsm_state4 = 5'd8;
parameter    ap_ST_fsm_state5 = 5'd16;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [255:0] a;
input  [255:0] b;
output  [255:0] ap_return;

reg ap_done;
reg ap_idle;
reg ap_ready;

(* fsm_encoding = "none" *) reg   [4:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [63:0] empty_fu_147_p1;
reg   [63:0] empty_reg_469;
reg   [63:0] a_word_num_bits_assign_1_reg_474;
reg   [63:0] a_word_num_bits_assign_2_reg_479;
reg   [63:0] a_word_num_bits_assign_3_reg_484;
wire   [63:0] empty_6_fu_181_p1;
reg   [63:0] empty_6_reg_489;
reg   [63:0] b_word_num_bits_assign_1_reg_494;
reg   [63:0] b_word_num_bits_assign_2_reg_499;
reg   [63:0] b_word_num_bits_assign_3_reg_504;
wire   [1:0] add_ln29_fu_215_p2;
wire    ap_CS_fsm_state2;
wire   [63:0] s_word_num_bits_0_1_fu_233_p6;
reg   [63:0] s_word_num_bits_0_1_reg_514;
wire   [63:0] s_word_num_bits_1_1_fu_247_p6;
reg   [63:0] s_word_num_bits_1_1_reg_519;
wire   [63:0] s_word_num_bits_2_1_fu_261_p6;
reg   [63:0] s_word_num_bits_2_1_reg_524;
wire   [63:0] s_word_num_bits_3_1_fu_275_p6;
reg   [63:0] s_word_num_bits_3_1_reg_529;
wire   [2:0] i_1_fu_331_p2;
wire    ap_CS_fsm_state4;
wire   [0:0] k_1_fu_415_p2;
wire   [0:0] icmp_ln173_fu_337_p2;
reg   [1:0] phi_ln29_reg_114;
wire   [0:0] icmp_ln29_fu_289_p2;
reg   [2:0] i_reg_125;
wire    ap_CS_fsm_state3;
reg   [0:0] k_reg_136;
reg   [63:0] s_word_num_bits_0_0_fu_70;
reg   [63:0] s_word_num_bits_1_0_fu_74;
reg   [63:0] s_word_num_bits_2_0_fu_78;
reg   [63:0] s_word_num_bits_3_0_fu_82;
reg   [63:0] s_word_num_bits_0_2_fu_86;
wire   [63:0] add_ln177_fu_383_p2;
wire   [1:0] trunc_ln50_fu_343_p1;
wire    ap_CS_fsm_state5;
reg   [63:0] s_word_num_bits_1_2_fu_90;
reg   [63:0] s_word_num_bits_2_2_fu_94;
reg   [63:0] s_word_num_bits_3_2_fu_98;
wire   [63:0] tmp_1_fu_357_p6;
wire   [63:0] tmp_fu_347_p6;
wire   [63:0] add_ln175_fu_367_p2;
wire   [63:0] zext_ln177_fu_379_p1;
wire   [0:0] icmp_ln178_fu_409_p2;
wire   [0:0] k1_fu_373_p2;
reg   [4:0] ap_NS_fsm;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 5'd1;
end

add_mux_42_64_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 64 ),
    .din1_WIDTH( 64 ),
    .din2_WIDTH( 64 ),
    .din3_WIDTH( 64 ),
    .din4_WIDTH( 2 ),
    .dout_WIDTH( 64 ))
mux_42_64_1_1_U1(
    .din0(64'd0),
    .din1(s_word_num_bits_0_0_fu_70),
    .din2(s_word_num_bits_0_0_fu_70),
    .din3(s_word_num_bits_0_0_fu_70),
    .din4(phi_ln29_reg_114),
    .dout(s_word_num_bits_0_1_fu_233_p6)
);

add_mux_42_64_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 64 ),
    .din1_WIDTH( 64 ),
    .din2_WIDTH( 64 ),
    .din3_WIDTH( 64 ),
    .din4_WIDTH( 2 ),
    .dout_WIDTH( 64 ))
mux_42_64_1_1_U2(
    .din0(s_word_num_bits_1_0_fu_74),
    .din1(64'd0),
    .din2(s_word_num_bits_1_0_fu_74),
    .din3(s_word_num_bits_1_0_fu_74),
    .din4(phi_ln29_reg_114),
    .dout(s_word_num_bits_1_1_fu_247_p6)
);

add_mux_42_64_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 64 ),
    .din1_WIDTH( 64 ),
    .din2_WIDTH( 64 ),
    .din3_WIDTH( 64 ),
    .din4_WIDTH( 2 ),
    .dout_WIDTH( 64 ))
mux_42_64_1_1_U3(
    .din0(s_word_num_bits_2_0_fu_78),
    .din1(s_word_num_bits_2_0_fu_78),
    .din2(64'd0),
    .din3(s_word_num_bits_2_0_fu_78),
    .din4(phi_ln29_reg_114),
    .dout(s_word_num_bits_2_1_fu_261_p6)
);

add_mux_42_64_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 64 ),
    .din1_WIDTH( 64 ),
    .din2_WIDTH( 64 ),
    .din3_WIDTH( 64 ),
    .din4_WIDTH( 2 ),
    .dout_WIDTH( 64 ))
mux_42_64_1_1_U4(
    .din0(s_word_num_bits_3_0_fu_82),
    .din1(s_word_num_bits_3_0_fu_82),
    .din2(s_word_num_bits_3_0_fu_82),
    .din3(64'd0),
    .din4(phi_ln29_reg_114),
    .dout(s_word_num_bits_3_1_fu_275_p6)
);

add_mux_42_64_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 64 ),
    .din1_WIDTH( 64 ),
    .din2_WIDTH( 64 ),
    .din3_WIDTH( 64 ),
    .din4_WIDTH( 2 ),
    .dout_WIDTH( 64 ))
mux_42_64_1_1_U5(
    .din0(empty_reg_469),
    .din1(a_word_num_bits_assign_1_reg_474),
    .din2(a_word_num_bits_assign_2_reg_479),
    .din3(a_word_num_bits_assign_3_reg_484),
    .din4(trunc_ln50_fu_343_p1),
    .dout(tmp_fu_347_p6)
);

add_mux_42_64_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 64 ),
    .din1_WIDTH( 64 ),
    .din2_WIDTH( 64 ),
    .din3_WIDTH( 64 ),
    .din4_WIDTH( 2 ),
    .dout_WIDTH( 64 ))
mux_42_64_1_1_U6(
    .din0(empty_6_reg_489),
    .din1(b_word_num_bits_assign_1_reg_494),
    .din2(b_word_num_bits_assign_2_reg_499),
    .din3(b_word_num_bits_assign_3_reg_504),
    .din4(trunc_ln50_fu_343_p1),
    .dout(tmp_1_fu_357_p6)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        i_reg_125 <= 3'd0;
    end else if (((icmp_ln173_fu_337_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        i_reg_125 <= i_1_fu_331_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        k_reg_136 <= 1'd0;
    end else if (((icmp_ln173_fu_337_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        k_reg_136 <= k_1_fu_415_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln29_fu_289_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        phi_ln29_reg_114 <= add_ln29_fu_215_p2;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        phi_ln29_reg_114 <= 2'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        s_word_num_bits_0_2_fu_86 <= s_word_num_bits_0_1_reg_514;
    end else if (((icmp_ln173_fu_337_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4) & (trunc_ln50_fu_343_p1 == 2'd0))) begin
        s_word_num_bits_0_2_fu_86 <= add_ln177_fu_383_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        s_word_num_bits_1_2_fu_90 <= s_word_num_bits_1_1_reg_519;
    end else if (((icmp_ln173_fu_337_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4) & (trunc_ln50_fu_343_p1 == 2'd1))) begin
        s_word_num_bits_1_2_fu_90 <= add_ln177_fu_383_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        s_word_num_bits_2_2_fu_94 <= s_word_num_bits_2_1_reg_524;
    end else if (((icmp_ln173_fu_337_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4) & (trunc_ln50_fu_343_p1 == 2'd2))) begin
        s_word_num_bits_2_2_fu_94 <= add_ln177_fu_383_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        s_word_num_bits_3_2_fu_98 <= s_word_num_bits_3_1_reg_529;
    end else if (((icmp_ln173_fu_337_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4) & (trunc_ln50_fu_343_p1 == 2'd3))) begin
        s_word_num_bits_3_2_fu_98 <= add_ln177_fu_383_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        a_word_num_bits_assign_1_reg_474 <= {{a[127:64]}};
        a_word_num_bits_assign_2_reg_479 <= {{a[191:128]}};
        a_word_num_bits_assign_3_reg_484 <= {{a[255:192]}};
        b_word_num_bits_assign_1_reg_494 <= {{b[127:64]}};
        b_word_num_bits_assign_2_reg_499 <= {{b[191:128]}};
        b_word_num_bits_assign_3_reg_504 <= {{b[255:192]}};
        empty_6_reg_489 <= empty_6_fu_181_p1;
        empty_reg_469 <= empty_fu_147_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        s_word_num_bits_0_0_fu_70 <= s_word_num_bits_0_1_fu_233_p6;
        s_word_num_bits_0_1_reg_514 <= s_word_num_bits_0_1_fu_233_p6;
        s_word_num_bits_1_0_fu_74 <= s_word_num_bits_1_1_fu_247_p6;
        s_word_num_bits_1_1_reg_519 <= s_word_num_bits_1_1_fu_247_p6;
        s_word_num_bits_2_0_fu_78 <= s_word_num_bits_2_1_fu_261_p6;
        s_word_num_bits_2_1_reg_524 <= s_word_num_bits_2_1_fu_261_p6;
        s_word_num_bits_3_0_fu_82 <= s_word_num_bits_3_1_fu_275_p6;
        s_word_num_bits_3_1_reg_529 <= s_word_num_bits_3_1_fu_275_p6;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((icmp_ln29_fu_289_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((icmp_ln173_fu_337_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln175_fu_367_p2 = (tmp_1_fu_357_p6 + tmp_fu_347_p6);

assign add_ln177_fu_383_p2 = (add_ln175_fu_367_p2 + zext_ln177_fu_379_p1);

assign add_ln29_fu_215_p2 = (phi_ln29_reg_114 + 2'd1);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_return = {{{{s_word_num_bits_3_2_fu_98}, {s_word_num_bits_2_2_fu_94}}, {s_word_num_bits_1_2_fu_90}}, {s_word_num_bits_0_2_fu_86}};

assign empty_6_fu_181_p1 = b[63:0];

assign empty_fu_147_p1 = a[63:0];

assign i_1_fu_331_p2 = (i_reg_125 + 3'd1);

assign icmp_ln173_fu_337_p2 = ((i_reg_125 == 3'd4) ? 1'b1 : 1'b0);

assign icmp_ln178_fu_409_p2 = ((add_ln177_fu_383_p2 < zext_ln177_fu_379_p1) ? 1'b1 : 1'b0);

assign icmp_ln29_fu_289_p2 = ((phi_ln29_reg_114 == 2'd3) ? 1'b1 : 1'b0);

assign k1_fu_373_p2 = ((add_ln175_fu_367_p2 < tmp_fu_347_p6) ? 1'b1 : 1'b0);

assign k_1_fu_415_p2 = (k1_fu_373_p2 | icmp_ln178_fu_409_p2);

assign trunc_ln50_fu_343_p1 = i_reg_125[1:0];

assign zext_ln177_fu_379_p1 = k_reg_136;

endmodule //add
