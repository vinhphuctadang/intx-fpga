-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
-- Version: 2020.2
-- Copyright (C) Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity add is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    a : IN STD_LOGIC_VECTOR (255 downto 0);
    b : IN STD_LOGIC_VECTOR (255 downto 0);
    ap_return : OUT STD_LOGIC_VECTOR (255 downto 0) );
end;


architecture behav of add is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "add_add,hls_ip_2020_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xcvu11p-flga2577-1-e,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=4.560286,HLS_SYN_LAT=11,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=1291,HLS_SYN_LUT=452,HLS_VERSION=2020_2}";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (4 downto 0) := "00001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (4 downto 0) := "00010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (4 downto 0) := "00100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (4 downto 0) := "01000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (4 downto 0) := "10000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv2_1 : STD_LOGIC_VECTOR (1 downto 0) := "01";
    constant ap_const_lv2_2 : STD_LOGIC_VECTOR (1 downto 0) := "10";
    constant ap_const_lv2_3 : STD_LOGIC_VECTOR (1 downto 0) := "11";
    constant ap_const_lv32_40 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001000000";
    constant ap_const_lv32_7F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001111111";
    constant ap_const_lv32_80 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000010000000";
    constant ap_const_lv32_BF : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000010111111";
    constant ap_const_lv32_C0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000011000000";
    constant ap_const_lv32_FF : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000011111111";
    constant ap_const_lv64_0 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
    constant ap_const_lv3_1 : STD_LOGIC_VECTOR (2 downto 0) := "001";
    constant ap_const_lv3_4 : STD_LOGIC_VECTOR (2 downto 0) := "100";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_CS_fsm : STD_LOGIC_VECTOR (4 downto 0) := "00001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal empty_fu_147_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal empty_reg_469 : STD_LOGIC_VECTOR (63 downto 0);
    signal a_word_num_bits_assign_1_reg_474 : STD_LOGIC_VECTOR (63 downto 0);
    signal a_word_num_bits_assign_2_reg_479 : STD_LOGIC_VECTOR (63 downto 0);
    signal a_word_num_bits_assign_3_reg_484 : STD_LOGIC_VECTOR (63 downto 0);
    signal empty_6_fu_181_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal empty_6_reg_489 : STD_LOGIC_VECTOR (63 downto 0);
    signal b_word_num_bits_assign_1_reg_494 : STD_LOGIC_VECTOR (63 downto 0);
    signal b_word_num_bits_assign_2_reg_499 : STD_LOGIC_VECTOR (63 downto 0);
    signal b_word_num_bits_assign_3_reg_504 : STD_LOGIC_VECTOR (63 downto 0);
    signal add_ln29_fu_215_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal s_word_num_bits_0_1_fu_233_p6 : STD_LOGIC_VECTOR (63 downto 0);
    signal s_word_num_bits_0_1_reg_514 : STD_LOGIC_VECTOR (63 downto 0);
    signal s_word_num_bits_1_1_fu_247_p6 : STD_LOGIC_VECTOR (63 downto 0);
    signal s_word_num_bits_1_1_reg_519 : STD_LOGIC_VECTOR (63 downto 0);
    signal s_word_num_bits_2_1_fu_261_p6 : STD_LOGIC_VECTOR (63 downto 0);
    signal s_word_num_bits_2_1_reg_524 : STD_LOGIC_VECTOR (63 downto 0);
    signal s_word_num_bits_3_1_fu_275_p6 : STD_LOGIC_VECTOR (63 downto 0);
    signal s_word_num_bits_3_1_reg_529 : STD_LOGIC_VECTOR (63 downto 0);
    signal i_1_fu_331_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal k_1_fu_415_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln173_fu_337_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal phi_ln29_reg_114 : STD_LOGIC_VECTOR (1 downto 0);
    signal icmp_ln29_fu_289_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_reg_125 : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal k_reg_136 : STD_LOGIC_VECTOR (0 downto 0);
    signal s_word_num_bits_0_0_fu_70 : STD_LOGIC_VECTOR (63 downto 0);
    signal s_word_num_bits_1_0_fu_74 : STD_LOGIC_VECTOR (63 downto 0);
    signal s_word_num_bits_2_0_fu_78 : STD_LOGIC_VECTOR (63 downto 0);
    signal s_word_num_bits_3_0_fu_82 : STD_LOGIC_VECTOR (63 downto 0);
    signal s_word_num_bits_0_2_fu_86 : STD_LOGIC_VECTOR (63 downto 0);
    signal add_ln177_fu_383_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal trunc_ln50_fu_343_p1 : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal s_word_num_bits_1_2_fu_90 : STD_LOGIC_VECTOR (63 downto 0);
    signal s_word_num_bits_2_2_fu_94 : STD_LOGIC_VECTOR (63 downto 0);
    signal s_word_num_bits_3_2_fu_98 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_1_fu_357_p6 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_fu_347_p6 : STD_LOGIC_VECTOR (63 downto 0);
    signal add_ln175_fu_367_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln177_fu_379_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal icmp_ln178_fu_409_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal k1_fu_373_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (4 downto 0);
    signal ap_ce_reg : STD_LOGIC;

    component add_mux_42_64_1_1 IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        din2_WIDTH : INTEGER;
        din3_WIDTH : INTEGER;
        din4_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        din0 : IN STD_LOGIC_VECTOR (63 downto 0);
        din1 : IN STD_LOGIC_VECTOR (63 downto 0);
        din2 : IN STD_LOGIC_VECTOR (63 downto 0);
        din3 : IN STD_LOGIC_VECTOR (63 downto 0);
        din4 : IN STD_LOGIC_VECTOR (1 downto 0);
        dout : OUT STD_LOGIC_VECTOR (63 downto 0) );
    end component;



begin
    mux_42_64_1_1_U1 : component add_mux_42_64_1_1
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 64,
        din1_WIDTH => 64,
        din2_WIDTH => 64,
        din3_WIDTH => 64,
        din4_WIDTH => 2,
        dout_WIDTH => 64)
    port map (
        din0 => ap_const_lv64_0,
        din1 => s_word_num_bits_0_0_fu_70,
        din2 => s_word_num_bits_0_0_fu_70,
        din3 => s_word_num_bits_0_0_fu_70,
        din4 => phi_ln29_reg_114,
        dout => s_word_num_bits_0_1_fu_233_p6);

    mux_42_64_1_1_U2 : component add_mux_42_64_1_1
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 64,
        din1_WIDTH => 64,
        din2_WIDTH => 64,
        din3_WIDTH => 64,
        din4_WIDTH => 2,
        dout_WIDTH => 64)
    port map (
        din0 => s_word_num_bits_1_0_fu_74,
        din1 => ap_const_lv64_0,
        din2 => s_word_num_bits_1_0_fu_74,
        din3 => s_word_num_bits_1_0_fu_74,
        din4 => phi_ln29_reg_114,
        dout => s_word_num_bits_1_1_fu_247_p6);

    mux_42_64_1_1_U3 : component add_mux_42_64_1_1
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 64,
        din1_WIDTH => 64,
        din2_WIDTH => 64,
        din3_WIDTH => 64,
        din4_WIDTH => 2,
        dout_WIDTH => 64)
    port map (
        din0 => s_word_num_bits_2_0_fu_78,
        din1 => s_word_num_bits_2_0_fu_78,
        din2 => ap_const_lv64_0,
        din3 => s_word_num_bits_2_0_fu_78,
        din4 => phi_ln29_reg_114,
        dout => s_word_num_bits_2_1_fu_261_p6);

    mux_42_64_1_1_U4 : component add_mux_42_64_1_1
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 64,
        din1_WIDTH => 64,
        din2_WIDTH => 64,
        din3_WIDTH => 64,
        din4_WIDTH => 2,
        dout_WIDTH => 64)
    port map (
        din0 => s_word_num_bits_3_0_fu_82,
        din1 => s_word_num_bits_3_0_fu_82,
        din2 => s_word_num_bits_3_0_fu_82,
        din3 => ap_const_lv64_0,
        din4 => phi_ln29_reg_114,
        dout => s_word_num_bits_3_1_fu_275_p6);

    mux_42_64_1_1_U5 : component add_mux_42_64_1_1
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 64,
        din1_WIDTH => 64,
        din2_WIDTH => 64,
        din3_WIDTH => 64,
        din4_WIDTH => 2,
        dout_WIDTH => 64)
    port map (
        din0 => empty_reg_469,
        din1 => a_word_num_bits_assign_1_reg_474,
        din2 => a_word_num_bits_assign_2_reg_479,
        din3 => a_word_num_bits_assign_3_reg_484,
        din4 => trunc_ln50_fu_343_p1,
        dout => tmp_fu_347_p6);

    mux_42_64_1_1_U6 : component add_mux_42_64_1_1
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 64,
        din1_WIDTH => 64,
        din2_WIDTH => 64,
        din3_WIDTH => 64,
        din4_WIDTH => 2,
        dout_WIDTH => 64)
    port map (
        din0 => empty_6_reg_489,
        din1 => b_word_num_bits_assign_1_reg_494,
        din2 => b_word_num_bits_assign_2_reg_499,
        din3 => b_word_num_bits_assign_3_reg_504,
        din4 => trunc_ln50_fu_343_p1,
        dout => tmp_1_fu_357_p6);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    i_reg_125_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
                i_reg_125 <= ap_const_lv3_0;
            elsif (((icmp_ln173_fu_337_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
                i_reg_125 <= i_1_fu_331_p2;
            end if; 
        end if;
    end process;

    k_reg_136_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
                k_reg_136 <= ap_const_lv1_0;
            elsif (((icmp_ln173_fu_337_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
                k_reg_136 <= k_1_fu_415_p2;
            end if; 
        end if;
    end process;

    phi_ln29_reg_114_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln29_fu_289_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                phi_ln29_reg_114 <= add_ln29_fu_215_p2;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                phi_ln29_reg_114 <= ap_const_lv2_0;
            end if; 
        end if;
    end process;

    s_word_num_bits_0_2_fu_86_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
                s_word_num_bits_0_2_fu_86 <= s_word_num_bits_0_1_reg_514;
            elsif (((icmp_ln173_fu_337_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state4) and (trunc_ln50_fu_343_p1 = ap_const_lv2_0))) then 
                s_word_num_bits_0_2_fu_86 <= add_ln177_fu_383_p2;
            end if; 
        end if;
    end process;

    s_word_num_bits_1_2_fu_90_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
                s_word_num_bits_1_2_fu_90 <= s_word_num_bits_1_1_reg_519;
            elsif (((icmp_ln173_fu_337_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state4) and (trunc_ln50_fu_343_p1 = ap_const_lv2_1))) then 
                s_word_num_bits_1_2_fu_90 <= add_ln177_fu_383_p2;
            end if; 
        end if;
    end process;

    s_word_num_bits_2_2_fu_94_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
                s_word_num_bits_2_2_fu_94 <= s_word_num_bits_2_1_reg_524;
            elsif (((icmp_ln173_fu_337_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state4) and (trunc_ln50_fu_343_p1 = ap_const_lv2_2))) then 
                s_word_num_bits_2_2_fu_94 <= add_ln177_fu_383_p2;
            end if; 
        end if;
    end process;

    s_word_num_bits_3_2_fu_98_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
                s_word_num_bits_3_2_fu_98 <= s_word_num_bits_3_1_reg_529;
            elsif (((icmp_ln173_fu_337_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state4) and (trunc_ln50_fu_343_p1 = ap_const_lv2_3))) then 
                s_word_num_bits_3_2_fu_98 <= add_ln177_fu_383_p2;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state1)) then
                a_word_num_bits_assign_1_reg_474 <= a(127 downto 64);
                a_word_num_bits_assign_2_reg_479 <= a(191 downto 128);
                a_word_num_bits_assign_3_reg_484 <= a(255 downto 192);
                b_word_num_bits_assign_1_reg_494 <= b(127 downto 64);
                b_word_num_bits_assign_2_reg_499 <= b(191 downto 128);
                b_word_num_bits_assign_3_reg_504 <= b(255 downto 192);
                empty_6_reg_489 <= empty_6_fu_181_p1;
                empty_reg_469 <= empty_fu_147_p1;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                s_word_num_bits_0_0_fu_70 <= s_word_num_bits_0_1_fu_233_p6;
                s_word_num_bits_0_1_reg_514 <= s_word_num_bits_0_1_fu_233_p6;
                s_word_num_bits_1_0_fu_74 <= s_word_num_bits_1_1_fu_247_p6;
                s_word_num_bits_1_1_reg_519 <= s_word_num_bits_1_1_fu_247_p6;
                s_word_num_bits_2_0_fu_78 <= s_word_num_bits_2_1_fu_261_p6;
                s_word_num_bits_2_1_reg_524 <= s_word_num_bits_2_1_fu_261_p6;
                s_word_num_bits_3_0_fu_82 <= s_word_num_bits_3_1_fu_275_p6;
                s_word_num_bits_3_1_reg_529 <= s_word_num_bits_3_1_fu_275_p6;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, ap_CS_fsm_state2, ap_CS_fsm_state4, icmp_ln173_fu_337_p2, icmp_ln29_fu_289_p2)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((icmp_ln29_fu_289_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state3 => 
                ap_NS_fsm <= ap_ST_fsm_state4;
            when ap_ST_fsm_state4 => 
                if (((icmp_ln173_fu_337_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state4))) then
                    ap_NS_fsm <= ap_ST_fsm_state4;
                else
                    ap_NS_fsm <= ap_ST_fsm_state5;
                end if;
            when ap_ST_fsm_state5 => 
                ap_NS_fsm <= ap_ST_fsm_state1;
            when others =>  
                ap_NS_fsm <= "XXXXX";
        end case;
    end process;
    add_ln175_fu_367_p2 <= std_logic_vector(unsigned(tmp_1_fu_357_p6) + unsigned(tmp_fu_347_p6));
    add_ln177_fu_383_p2 <= std_logic_vector(unsigned(add_ln175_fu_367_p2) + unsigned(zext_ln177_fu_379_p1));
    add_ln29_fu_215_p2 <= std_logic_vector(unsigned(phi_ln29_reg_114) + unsigned(ap_const_lv2_1));
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);
    ap_CS_fsm_state5 <= ap_CS_fsm(4);

    ap_done_assign_proc : process(ap_CS_fsm_state5)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(ap_CS_fsm_state5)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    ap_return <= (((s_word_num_bits_3_2_fu_98 & s_word_num_bits_2_2_fu_94) & s_word_num_bits_1_2_fu_90) & s_word_num_bits_0_2_fu_86);
    empty_6_fu_181_p1 <= b(64 - 1 downto 0);
    empty_fu_147_p1 <= a(64 - 1 downto 0);
    i_1_fu_331_p2 <= std_logic_vector(unsigned(i_reg_125) + unsigned(ap_const_lv3_1));
    icmp_ln173_fu_337_p2 <= "1" when (i_reg_125 = ap_const_lv3_4) else "0";
    icmp_ln178_fu_409_p2 <= "1" when (unsigned(add_ln177_fu_383_p2) < unsigned(zext_ln177_fu_379_p1)) else "0";
    icmp_ln29_fu_289_p2 <= "1" when (phi_ln29_reg_114 = ap_const_lv2_3) else "0";
    k1_fu_373_p2 <= "1" when (unsigned(add_ln175_fu_367_p2) < unsigned(tmp_fu_347_p6)) else "0";
    k_1_fu_415_p2 <= (k1_fu_373_p2 or icmp_ln178_fu_409_p2);
    trunc_ln50_fu_343_p1 <= i_reg_125(2 - 1 downto 0);
    zext_ln177_fu_379_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(k_reg_136),64));
end behav;
