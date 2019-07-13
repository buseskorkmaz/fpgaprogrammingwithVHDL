-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "01/07/2019 17:41:39"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	cronometre IS
    PORT (
	clkin : IN std_logic;
	nstart_nstop : IN std_logic;
	nactual_nmem : IN std_logic;
	nss_desenes_s : OUT std_logic_vector(6 DOWNTO 0);
	nss_unitats_s : OUT std_logic_vector(6 DOWNTO 0);
	nss_desenes_c : OUT std_logic_vector(6 DOWNTO 0);
	nss_unitats_c : OUT std_logic_vector(6 DOWNTO 0);
	npd_desenes_s : OUT std_logic;
	npd_unitats_s : OUT std_logic;
	npd_desenes_c : OUT std_logic;
	npd_unitats_c : OUT std_logic
	);
END cronometre;

-- Design Ports Information
-- nss_desenes_s[0]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- nss_desenes_s[1]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- nss_desenes_s[2]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- nss_desenes_s[3]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- nss_desenes_s[4]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- nss_desenes_s[5]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- nss_desenes_s[6]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- nss_unitats_s[0]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- nss_unitats_s[1]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- nss_unitats_s[2]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- nss_unitats_s[3]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- nss_unitats_s[4]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- nss_unitats_s[5]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- nss_unitats_s[6]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- nss_desenes_c[0]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- nss_desenes_c[1]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- nss_desenes_c[2]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- nss_desenes_c[3]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- nss_desenes_c[4]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- nss_desenes_c[5]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- nss_desenes_c[6]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- nss_unitats_c[0]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- nss_unitats_c[1]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- nss_unitats_c[2]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- nss_unitats_c[3]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- nss_unitats_c[4]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- nss_unitats_c[5]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- nss_unitats_c[6]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- npd_desenes_s	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- npd_unitats_s	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- npd_desenes_c	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- npd_unitats_c	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- nstart_nstop	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clkin	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nactual_nmem	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF cronometre IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clkin : std_logic;
SIGNAL ww_nstart_nstop : std_logic;
SIGNAL ww_nactual_nmem : std_logic;
SIGNAL ww_nss_desenes_s : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_nss_unitats_s : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_nss_desenes_c : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_nss_unitats_c : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_npd_desenes_s : std_logic;
SIGNAL ww_npd_unitats_s : std_logic;
SIGNAL ww_npd_desenes_c : std_logic;
SIGNAL ww_npd_unitats_c : std_logic;
SIGNAL \clk100~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clkin~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \nss_desenes_s[0]~output_o\ : std_logic;
SIGNAL \nss_desenes_s[1]~output_o\ : std_logic;
SIGNAL \nss_desenes_s[2]~output_o\ : std_logic;
SIGNAL \nss_desenes_s[3]~output_o\ : std_logic;
SIGNAL \nss_desenes_s[4]~output_o\ : std_logic;
SIGNAL \nss_desenes_s[5]~output_o\ : std_logic;
SIGNAL \nss_desenes_s[6]~output_o\ : std_logic;
SIGNAL \nss_unitats_s[0]~output_o\ : std_logic;
SIGNAL \nss_unitats_s[1]~output_o\ : std_logic;
SIGNAL \nss_unitats_s[2]~output_o\ : std_logic;
SIGNAL \nss_unitats_s[3]~output_o\ : std_logic;
SIGNAL \nss_unitats_s[4]~output_o\ : std_logic;
SIGNAL \nss_unitats_s[5]~output_o\ : std_logic;
SIGNAL \nss_unitats_s[6]~output_o\ : std_logic;
SIGNAL \nss_desenes_c[0]~output_o\ : std_logic;
SIGNAL \nss_desenes_c[1]~output_o\ : std_logic;
SIGNAL \nss_desenes_c[2]~output_o\ : std_logic;
SIGNAL \nss_desenes_c[3]~output_o\ : std_logic;
SIGNAL \nss_desenes_c[4]~output_o\ : std_logic;
SIGNAL \nss_desenes_c[5]~output_o\ : std_logic;
SIGNAL \nss_desenes_c[6]~output_o\ : std_logic;
SIGNAL \nss_unitats_c[0]~output_o\ : std_logic;
SIGNAL \nss_unitats_c[1]~output_o\ : std_logic;
SIGNAL \nss_unitats_c[2]~output_o\ : std_logic;
SIGNAL \nss_unitats_c[3]~output_o\ : std_logic;
SIGNAL \nss_unitats_c[4]~output_o\ : std_logic;
SIGNAL \nss_unitats_c[5]~output_o\ : std_logic;
SIGNAL \nss_unitats_c[6]~output_o\ : std_logic;
SIGNAL \npd_desenes_s~output_o\ : std_logic;
SIGNAL \npd_unitats_s~output_o\ : std_logic;
SIGNAL \npd_desenes_c~output_o\ : std_logic;
SIGNAL \npd_unitats_c~output_o\ : std_logic;
SIGNAL \clkin~input_o\ : std_logic;
SIGNAL \clkin~inputclkctrl_outclk\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \divf:divlimit[0]~q\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \divf:divlimit[1]~q\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \divf:divlimit[2]~q\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \divf:divlimit[3]~q\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \divf:divlimit[9]~q\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \divf:divlimit[10]~q\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \divf:divlimit[11]~q\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \divlimit~4_combout\ : std_logic;
SIGNAL \divf:divlimit[12]~q\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \divf:divlimit[13]~q\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \divlimit~5_combout\ : std_logic;
SIGNAL \divf:divlimit[14]~q\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \divlimit~6_combout\ : std_logic;
SIGNAL \divf:divlimit[15]~q\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \divlimit~0_combout\ : std_logic;
SIGNAL \divf:divlimit[16]~q\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \divlimit~3_combout\ : std_logic;
SIGNAL \divf:divlimit[4]~q\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \divf:divlimit[5]~q\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \divf:divlimit[6]~q\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \divlimit~2_combout\ : std_logic;
SIGNAL \divf:divlimit[7]~q\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \divf:divlimit[8]~q\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \divlimit~1_combout\ : std_logic;
SIGNAL \divf:divlimit[17]~q\ : std_logic;
SIGNAL \clk100~0_combout\ : std_logic;
SIGNAL \clk100~q\ : std_logic;
SIGNAL \clk100~clkctrl_outclk\ : std_logic;
SIGNAL \nstart_nstop~input_o\ : std_logic;
SIGNAL \nstart_nstop_s~0_combout\ : std_logic;
SIGNAL \nstart_nstop_s~q\ : std_logic;
SIGNAL \nstart_nstop_sa~q\ : std_logic;
SIGNAL \nstart_nstop_fb~combout\ : std_logic;
SIGNAL \nactual_nmem~input_o\ : std_logic;
SIGNAL \nactual_nmem_s~0_combout\ : std_logic;
SIGNAL \nactual_nmem_s~q\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \Selector0~1_combout\ : std_logic;
SIGNAL \estat_control.aturat_actual~q\ : std_logic;
SIGNAL \nactual_nmem_sa~q\ : std_logic;
SIGNAL \Selector1~7_combout\ : std_logic;
SIGNAL \control~0_combout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \estat_control.marxa~q\ : std_logic;
SIGNAL \Selector1~4_combout\ : std_logic;
SIGNAL \Selector1~5_combout\ : std_logic;
SIGNAL \Selector1~6_combout\ : std_logic;
SIGNAL \estat_control.aturat_mem~q\ : std_logic;
SIGNAL \clr_compt_reg~combout\ : std_logic;
SIGNAL \Add4~2_combout\ : std_logic;
SIGNAL \desenes_s_act[3]~3_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \unitats_s_act~0_combout\ : std_logic;
SIGNAL \unitats_c_act~4_combout\ : std_logic;
SIGNAL \desenes_c_mem~2_combout\ : std_logic;
SIGNAL \unitats_c_act~10_combout\ : std_logic;
SIGNAL \unitats_c_act~11_combout\ : std_logic;
SIGNAL \unitats_c_act[3]~12_combout\ : std_logic;
SIGNAL \unitats_c_act~7_combout\ : std_logic;
SIGNAL \unitats_c_act~8_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \comptador~0_combout\ : std_logic;
SIGNAL \unitats_c_act~9_combout\ : std_logic;
SIGNAL \unitats_c_act~5_combout\ : std_logic;
SIGNAL \unitats_c_act~6_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \desenes_c_act~4_combout\ : std_logic;
SIGNAL \desenes_c_act~5_combout\ : std_logic;
SIGNAL \Add2~1_combout\ : std_logic;
SIGNAL \desenes_c_act~6_combout\ : std_logic;
SIGNAL \desenes_c_act[1]~2_combout\ : std_logic;
SIGNAL \desenes_c_act~0_combout\ : std_logic;
SIGNAL \desenes_c_act~1_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \desenes_c_act~3_combout\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \unitats_s_act[1]~1_combout\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \unitats_s_act~4_combout\ : std_logic;
SIGNAL \unitats_s_act~2_combout\ : std_logic;
SIGNAL \unitats_s_act~3_combout\ : std_logic;
SIGNAL \Add3~1_combout\ : std_logic;
SIGNAL \unitats_s_act~5_combout\ : std_logic;
SIGNAL \Equal4~0_combout\ : std_logic;
SIGNAL \unitats_c_act~3_combout\ : std_logic;
SIGNAL \desenes_s_act[0]~6_combout\ : std_logic;
SIGNAL \unitats_c_act~2_combout\ : std_logic;
SIGNAL \desenes_s_act[0]~7_combout\ : std_logic;
SIGNAL \desenes_s_act[0]~0_combout\ : std_logic;
SIGNAL \Add4~0_combout\ : std_logic;
SIGNAL \desenes_s_act[1]~1_combout\ : std_logic;
SIGNAL \Add4~1_combout\ : std_logic;
SIGNAL \desenes_s_act[2]~2_combout\ : std_logic;
SIGNAL \desenes_s_mem~2_combout\ : std_logic;
SIGNAL \control~1_combout\ : std_logic;
SIGNAL \ld_registre~q\ : std_logic;
SIGNAL \unitats_s_mem[0]~0_combout\ : std_logic;
SIGNAL \desenes_s[2]~2_combout\ : std_logic;
SIGNAL \desenes_s_mem~0_combout\ : std_logic;
SIGNAL \desenes_s[0]~0_combout\ : std_logic;
SIGNAL \desenes_s_mem~3_combout\ : std_logic;
SIGNAL \desenes_s[3]~3_combout\ : std_logic;
SIGNAL \desenes_s_mem~1_combout\ : std_logic;
SIGNAL \desenes_s[1]~1_combout\ : std_logic;
SIGNAL \cc_d_s|Mux6~0_combout\ : std_logic;
SIGNAL \cc_d_s|Mux5~0_combout\ : std_logic;
SIGNAL \cc_d_s|Mux4~0_combout\ : std_logic;
SIGNAL \cc_d_s|Mux3~0_combout\ : std_logic;
SIGNAL \cc_d_s|Mux2~0_combout\ : std_logic;
SIGNAL \cc_d_s|Mux1~0_combout\ : std_logic;
SIGNAL \cc_d_s|Mux0~0_combout\ : std_logic;
SIGNAL \unitats_s_mem~2_combout\ : std_logic;
SIGNAL \unitats_s[1]~1_combout\ : std_logic;
SIGNAL \unitats_s_mem~4_combout\ : std_logic;
SIGNAL \unitats_s[3]~3_combout\ : std_logic;
SIGNAL \unitats_s_mem~3_combout\ : std_logic;
SIGNAL \unitats_s[2]~2_combout\ : std_logic;
SIGNAL \unitats_s_mem~1_combout\ : std_logic;
SIGNAL \unitats_s[0]~0_combout\ : std_logic;
SIGNAL \cc_u_s|Mux6~0_combout\ : std_logic;
SIGNAL \cc_u_s|Mux5~0_combout\ : std_logic;
SIGNAL \cc_u_s|Mux4~0_combout\ : std_logic;
SIGNAL \cc_u_s|Mux3~0_combout\ : std_logic;
SIGNAL \cc_u_s|Mux2~0_combout\ : std_logic;
SIGNAL \cc_u_s|Mux1~0_combout\ : std_logic;
SIGNAL \cc_u_s|Mux0~0_combout\ : std_logic;
SIGNAL \desenes_c_mem~3_combout\ : std_logic;
SIGNAL \desenes_c[3]~3_combout\ : std_logic;
SIGNAL \desenes_c[2]~2_combout\ : std_logic;
SIGNAL \desenes_c_mem~1_combout\ : std_logic;
SIGNAL \desenes_c[1]~1_combout\ : std_logic;
SIGNAL \desenes_c_mem~0_combout\ : std_logic;
SIGNAL \desenes_c[0]~0_combout\ : std_logic;
SIGNAL \cc_d_c|Mux6~0_combout\ : std_logic;
SIGNAL \cc_d_c|Mux5~0_combout\ : std_logic;
SIGNAL \cc_d_c|Mux4~0_combout\ : std_logic;
SIGNAL \cc_d_c|Mux3~0_combout\ : std_logic;
SIGNAL \cc_d_c|Mux2~0_combout\ : std_logic;
SIGNAL \cc_d_c|Mux1~0_combout\ : std_logic;
SIGNAL \cc_d_c|Mux0~0_combout\ : std_logic;
SIGNAL \unitats_c_mem~2_combout\ : std_logic;
SIGNAL \unitats_c[2]~2_combout\ : std_logic;
SIGNAL \unitats_c_mem~3_combout\ : std_logic;
SIGNAL \unitats_c[3]~3_combout\ : std_logic;
SIGNAL \unitats_c_mem~0_combout\ : std_logic;
SIGNAL \unitats_c[0]~0_combout\ : std_logic;
SIGNAL \unitats_c_mem~1_combout\ : std_logic;
SIGNAL \unitats_c[1]~1_combout\ : std_logic;
SIGNAL \cc_u_c|Mux6~0_combout\ : std_logic;
SIGNAL \cc_u_c|Mux5~0_combout\ : std_logic;
SIGNAL \cc_u_c|Mux4~0_combout\ : std_logic;
SIGNAL \cc_u_c|Mux3~0_combout\ : std_logic;
SIGNAL \cc_u_c|Mux2~0_combout\ : std_logic;
SIGNAL \cc_u_c|Mux1~0_combout\ : std_logic;
SIGNAL \cc_u_c|Mux0~0_combout\ : std_logic;
SIGNAL \Equal6~0_combout\ : std_logic;
SIGNAL unitats_s_mem : std_logic_vector(3 DOWNTO 0);
SIGNAL unitats_s_act : std_logic_vector(3 DOWNTO 0);
SIGNAL unitats_c_mem : std_logic_vector(3 DOWNTO 0);
SIGNAL unitats_c_act : std_logic_vector(3 DOWNTO 0);
SIGNAL desenes_s_mem : std_logic_vector(3 DOWNTO 0);
SIGNAL desenes_s_act : std_logic_vector(3 DOWNTO 0);
SIGNAL desenes_c_mem : std_logic_vector(3 DOWNTO 0);
SIGNAL desenes_c_act : std_logic_vector(3 DOWNTO 0);
SIGNAL \cc_u_c|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \cc_d_c|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \cc_u_s|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \cc_d_s|ALT_INV_Mux0~0_combout\ : std_logic;

BEGIN

ww_clkin <= clkin;
ww_nstart_nstop <= nstart_nstop;
ww_nactual_nmem <= nactual_nmem;
nss_desenes_s <= ww_nss_desenes_s;
nss_unitats_s <= ww_nss_unitats_s;
nss_desenes_c <= ww_nss_desenes_c;
nss_unitats_c <= ww_nss_unitats_c;
npd_desenes_s <= ww_npd_desenes_s;
npd_unitats_s <= ww_npd_unitats_s;
npd_desenes_c <= ww_npd_desenes_c;
npd_unitats_c <= ww_npd_unitats_c;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk100~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk100~q\);

\clkin~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clkin~input_o\);
\cc_u_c|ALT_INV_Mux0~0_combout\ <= NOT \cc_u_c|Mux0~0_combout\;
\cc_d_c|ALT_INV_Mux0~0_combout\ <= NOT \cc_d_c|Mux0~0_combout\;
\cc_u_s|ALT_INV_Mux0~0_combout\ <= NOT \cc_u_s|Mux0~0_combout\;
\cc_d_s|ALT_INV_Mux0~0_combout\ <= NOT \cc_d_s|Mux0~0_combout\;

-- Location: IOOBUF_X32_Y29_N23
\nss_desenes_s[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cc_d_s|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \nss_desenes_s[0]~output_o\);

-- Location: IOOBUF_X39_Y29_N16
\nss_desenes_s[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cc_d_s|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \nss_desenes_s[1]~output_o\);

-- Location: IOOBUF_X32_Y29_N9
\nss_desenes_s[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cc_d_s|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \nss_desenes_s[2]~output_o\);

-- Location: IOOBUF_X32_Y29_N2
\nss_desenes_s[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cc_d_s|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \nss_desenes_s[3]~output_o\);

-- Location: IOOBUF_X37_Y29_N23
\nss_desenes_s[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cc_d_s|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \nss_desenes_s[4]~output_o\);

-- Location: IOOBUF_X37_Y29_N30
\nss_desenes_s[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cc_d_s|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \nss_desenes_s[5]~output_o\);

-- Location: IOOBUF_X39_Y29_N30
\nss_desenes_s[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cc_d_s|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \nss_desenes_s[6]~output_o\);

-- Location: IOOBUF_X32_Y29_N30
\nss_unitats_s[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cc_u_s|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \nss_unitats_s[0]~output_o\);

-- Location: IOOBUF_X30_Y29_N30
\nss_unitats_s[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cc_u_s|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \nss_unitats_s[1]~output_o\);

-- Location: IOOBUF_X28_Y29_N2
\nss_unitats_s[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cc_u_s|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \nss_unitats_s[2]~output_o\);

-- Location: IOOBUF_X30_Y29_N2
\nss_unitats_s[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cc_u_s|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \nss_unitats_s[3]~output_o\);

-- Location: IOOBUF_X30_Y29_N16
\nss_unitats_s[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cc_u_s|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \nss_unitats_s[4]~output_o\);

-- Location: IOOBUF_X30_Y29_N23
\nss_unitats_s[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cc_u_s|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \nss_unitats_s[5]~output_o\);

-- Location: IOOBUF_X37_Y29_N2
\nss_unitats_s[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cc_u_s|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \nss_unitats_s[6]~output_o\);

-- Location: IOOBUF_X21_Y29_N2
\nss_desenes_c[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cc_d_c|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \nss_desenes_c[0]~output_o\);

-- Location: IOOBUF_X21_Y29_N9
\nss_desenes_c[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cc_d_c|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \nss_desenes_c[1]~output_o\);

-- Location: IOOBUF_X23_Y29_N2
\nss_desenes_c[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cc_d_c|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \nss_desenes_c[2]~output_o\);

-- Location: IOOBUF_X23_Y29_N23
\nss_desenes_c[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cc_d_c|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \nss_desenes_c[3]~output_o\);

-- Location: IOOBUF_X23_Y29_N30
\nss_desenes_c[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cc_d_c|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \nss_desenes_c[4]~output_o\);

-- Location: IOOBUF_X28_Y29_N16
\nss_desenes_c[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cc_d_c|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \nss_desenes_c[5]~output_o\);

-- Location: IOOBUF_X26_Y29_N23
\nss_desenes_c[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cc_d_c|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \nss_desenes_c[6]~output_o\);

-- Location: IOOBUF_X21_Y29_N23
\nss_unitats_c[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cc_u_c|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \nss_unitats_c[0]~output_o\);

-- Location: IOOBUF_X21_Y29_N30
\nss_unitats_c[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cc_u_c|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \nss_unitats_c[1]~output_o\);

-- Location: IOOBUF_X26_Y29_N2
\nss_unitats_c[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cc_u_c|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \nss_unitats_c[2]~output_o\);

-- Location: IOOBUF_X28_Y29_N30
\nss_unitats_c[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cc_u_c|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \nss_unitats_c[3]~output_o\);

-- Location: IOOBUF_X26_Y29_N9
\nss_unitats_c[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cc_u_c|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \nss_unitats_c[4]~output_o\);

-- Location: IOOBUF_X28_Y29_N23
\nss_unitats_c[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cc_u_c|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \nss_unitats_c[5]~output_o\);

-- Location: IOOBUF_X26_Y29_N16
\nss_unitats_c[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cc_u_c|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \nss_unitats_c[6]~output_o\);

-- Location: IOOBUF_X39_Y29_N23
\npd_desenes_s~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \npd_desenes_s~output_o\);

-- Location: IOOBUF_X32_Y29_N16
\npd_unitats_s~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal6~0_combout\,
	devoe => ww_devoe,
	o => \npd_unitats_s~output_o\);

-- Location: IOOBUF_X26_Y29_N30
\npd_desenes_c~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \npd_desenes_c~output_o\);

-- Location: IOOBUF_X23_Y29_N9
\npd_unitats_c~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \npd_unitats_c~output_o\);

-- Location: IOIBUF_X41_Y15_N1
\clkin~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clkin,
	o => \clkin~input_o\);

-- Location: CLKCTRL_G9
\clkin~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clkin~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clkin~inputclkctrl_outclk\);

-- Location: LCCOMB_X4_Y25_N14
\Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = \divf:divlimit[0]~q\ $ (VCC)
-- \Add0~1\ = CARRY(\divf:divlimit[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \divf:divlimit[0]~q\,
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: FF_X4_Y25_N15
\divf:divlimit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputclkctrl_outclk\,
	d => \Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divf:divlimit[0]~q\);

-- Location: LCCOMB_X4_Y25_N16
\Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\divf:divlimit[1]~q\ & (!\Add0~1\)) # (!\divf:divlimit[1]~q\ & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!\divf:divlimit[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divf:divlimit[1]~q\,
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: FF_X4_Y25_N17
\divf:divlimit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputclkctrl_outclk\,
	d => \Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divf:divlimit[1]~q\);

-- Location: LCCOMB_X4_Y25_N18
\Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (\divf:divlimit[2]~q\ & (\Add0~3\ $ (GND))) # (!\divf:divlimit[2]~q\ & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((\divf:divlimit[2]~q\ & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divf:divlimit[2]~q\,
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: FF_X4_Y25_N19
\divf:divlimit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputclkctrl_outclk\,
	d => \Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divf:divlimit[2]~q\);

-- Location: LCCOMB_X4_Y25_N20
\Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (\divf:divlimit[3]~q\ & (!\Add0~5\)) # (!\divf:divlimit[3]~q\ & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!\divf:divlimit[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divf:divlimit[3]~q\,
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: FF_X4_Y25_N21
\divf:divlimit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputclkctrl_outclk\,
	d => \Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divf:divlimit[3]~q\);

-- Location: LCCOMB_X4_Y25_N10
\Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (\divf:divlimit[2]~q\ & (\divf:divlimit[1]~q\ & (\divf:divlimit[0]~q\ & \divf:divlimit[3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divf:divlimit[2]~q\,
	datab => \divf:divlimit[1]~q\,
	datac => \divf:divlimit[0]~q\,
	datad => \divf:divlimit[3]~q\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X4_Y25_N30
\Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (\divf:divlimit[8]~q\ & (\Add0~15\ $ (GND))) # (!\divf:divlimit[8]~q\ & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((\divf:divlimit[8]~q\ & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divf:divlimit[8]~q\,
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X4_Y24_N0
\Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (\divf:divlimit[9]~q\ & (!\Add0~17\)) # (!\divf:divlimit[9]~q\ & ((\Add0~17\) # (GND)))
-- \Add0~19\ = CARRY((!\Add0~17\) # (!\divf:divlimit[9]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divf:divlimit[9]~q\,
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: FF_X4_Y24_N1
\divf:divlimit[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputclkctrl_outclk\,
	d => \Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divf:divlimit[9]~q\);

-- Location: LCCOMB_X4_Y24_N2
\Add0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (\divf:divlimit[10]~q\ & (\Add0~19\ $ (GND))) # (!\divf:divlimit[10]~q\ & (!\Add0~19\ & VCC))
-- \Add0~21\ = CARRY((\divf:divlimit[10]~q\ & !\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divf:divlimit[10]~q\,
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: FF_X4_Y24_N3
\divf:divlimit[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputclkctrl_outclk\,
	d => \Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divf:divlimit[10]~q\);

-- Location: LCCOMB_X4_Y24_N4
\Add0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (\divf:divlimit[11]~q\ & (!\Add0~21\)) # (!\divf:divlimit[11]~q\ & ((\Add0~21\) # (GND)))
-- \Add0~23\ = CARRY((!\Add0~21\) # (!\divf:divlimit[11]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divf:divlimit[11]~q\,
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: FF_X4_Y24_N5
\divf:divlimit[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputclkctrl_outclk\,
	d => \Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divf:divlimit[11]~q\);

-- Location: LCCOMB_X4_Y24_N6
\Add0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (\divf:divlimit[12]~q\ & (\Add0~23\ $ (GND))) # (!\divf:divlimit[12]~q\ & (!\Add0~23\ & VCC))
-- \Add0~25\ = CARRY((\divf:divlimit[12]~q\ & !\Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divf:divlimit[12]~q\,
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: LCCOMB_X4_Y24_N24
\divlimit~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divlimit~4_combout\ = (\Add0~24_combout\ & (((!\divf:divlimit[17]~q\) # (!\Equal0~4_combout\)) # (!\divf:divlimit[16]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~24_combout\,
	datab => \divf:divlimit[16]~q\,
	datac => \Equal0~4_combout\,
	datad => \divf:divlimit[17]~q\,
	combout => \divlimit~4_combout\);

-- Location: FF_X4_Y24_N25
\divf:divlimit[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputclkctrl_outclk\,
	d => \divlimit~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divf:divlimit[12]~q\);

-- Location: LCCOMB_X4_Y24_N8
\Add0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (\divf:divlimit[13]~q\ & (!\Add0~25\)) # (!\divf:divlimit[13]~q\ & ((\Add0~25\) # (GND)))
-- \Add0~27\ = CARRY((!\Add0~25\) # (!\divf:divlimit[13]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divf:divlimit[13]~q\,
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: FF_X4_Y24_N9
\divf:divlimit[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputclkctrl_outclk\,
	d => \Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divf:divlimit[13]~q\);

-- Location: LCCOMB_X4_Y24_N10
\Add0~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (\divf:divlimit[14]~q\ & (\Add0~27\ $ (GND))) # (!\divf:divlimit[14]~q\ & (!\Add0~27\ & VCC))
-- \Add0~29\ = CARRY((\divf:divlimit[14]~q\ & !\Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divf:divlimit[14]~q\,
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: LCCOMB_X4_Y24_N26
\divlimit~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divlimit~5_combout\ = (\Add0~28_combout\ & (((!\divf:divlimit[17]~q\) # (!\Equal0~4_combout\)) # (!\divf:divlimit[16]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~28_combout\,
	datab => \divf:divlimit[16]~q\,
	datac => \Equal0~4_combout\,
	datad => \divf:divlimit[17]~q\,
	combout => \divlimit~5_combout\);

-- Location: FF_X4_Y24_N27
\divf:divlimit[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputclkctrl_outclk\,
	d => \divlimit~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divf:divlimit[14]~q\);

-- Location: LCCOMB_X4_Y24_N12
\Add0~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (\divf:divlimit[15]~q\ & (!\Add0~29\)) # (!\divf:divlimit[15]~q\ & ((\Add0~29\) # (GND)))
-- \Add0~31\ = CARRY((!\Add0~29\) # (!\divf:divlimit[15]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divf:divlimit[15]~q\,
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: LCCOMB_X4_Y24_N28
\divlimit~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divlimit~6_combout\ = (\Add0~30_combout\ & (((!\divf:divlimit[17]~q\) # (!\Equal0~4_combout\)) # (!\divf:divlimit[16]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~30_combout\,
	datab => \divf:divlimit[16]~q\,
	datac => \Equal0~4_combout\,
	datad => \divf:divlimit[17]~q\,
	combout => \divlimit~6_combout\);

-- Location: FF_X4_Y24_N29
\divf:divlimit[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputclkctrl_outclk\,
	d => \divlimit~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divf:divlimit[15]~q\);

-- Location: LCCOMB_X4_Y24_N14
\Add0~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (\divf:divlimit[16]~q\ & (\Add0~31\ $ (GND))) # (!\divf:divlimit[16]~q\ & (!\Add0~31\ & VCC))
-- \Add0~33\ = CARRY((\divf:divlimit[16]~q\ & !\Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divf:divlimit[16]~q\,
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

-- Location: LCCOMB_X4_Y24_N18
\divlimit~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divlimit~0_combout\ = (\Add0~32_combout\ & (((!\divf:divlimit[17]~q\) # (!\divf:divlimit[16]~q\)) # (!\Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~4_combout\,
	datab => \Add0~32_combout\,
	datac => \divf:divlimit[16]~q\,
	datad => \divf:divlimit[17]~q\,
	combout => \divlimit~0_combout\);

-- Location: FF_X4_Y24_N19
\divf:divlimit[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputclkctrl_outclk\,
	d => \divlimit~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divf:divlimit[16]~q\);

-- Location: LCCOMB_X4_Y25_N22
\Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (\divf:divlimit[4]~q\ & (\Add0~7\ $ (GND))) # (!\divf:divlimit[4]~q\ & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((\divf:divlimit[4]~q\ & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divf:divlimit[4]~q\,
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X4_Y25_N12
\divlimit~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divlimit~3_combout\ = (\Add0~8_combout\ & (((!\Equal0~4_combout\) # (!\divf:divlimit[16]~q\)) # (!\divf:divlimit[17]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divf:divlimit[17]~q\,
	datab => \divf:divlimit[16]~q\,
	datac => \Add0~8_combout\,
	datad => \Equal0~4_combout\,
	combout => \divlimit~3_combout\);

-- Location: FF_X4_Y25_N13
\divf:divlimit[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputclkctrl_outclk\,
	d => \divlimit~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divf:divlimit[4]~q\);

-- Location: LCCOMB_X4_Y25_N24
\Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (\divf:divlimit[5]~q\ & (!\Add0~9\)) # (!\divf:divlimit[5]~q\ & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!\divf:divlimit[5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divf:divlimit[5]~q\,
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: FF_X4_Y25_N25
\divf:divlimit[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputclkctrl_outclk\,
	d => \Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divf:divlimit[5]~q\);

-- Location: LCCOMB_X4_Y25_N26
\Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (\divf:divlimit[6]~q\ & (\Add0~11\ $ (GND))) # (!\divf:divlimit[6]~q\ & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((\divf:divlimit[6]~q\ & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divf:divlimit[6]~q\,
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: FF_X4_Y25_N27
\divf:divlimit[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputclkctrl_outclk\,
	d => \Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divf:divlimit[6]~q\);

-- Location: LCCOMB_X4_Y25_N28
\Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (\divf:divlimit[7]~q\ & (!\Add0~13\)) # (!\divf:divlimit[7]~q\ & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!\divf:divlimit[7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divf:divlimit[7]~q\,
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X4_Y25_N6
\divlimit~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divlimit~2_combout\ = (\Add0~14_combout\ & (((!\Equal0~4_combout\) # (!\divf:divlimit[16]~q\)) # (!\divf:divlimit[17]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divf:divlimit[17]~q\,
	datab => \Add0~14_combout\,
	datac => \divf:divlimit[16]~q\,
	datad => \Equal0~4_combout\,
	combout => \divlimit~2_combout\);

-- Location: FF_X4_Y25_N7
\divf:divlimit[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputclkctrl_outclk\,
	d => \divlimit~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divf:divlimit[7]~q\);

-- Location: FF_X4_Y25_N31
\divf:divlimit[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputclkctrl_outclk\,
	d => \Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divf:divlimit[8]~q\);

-- Location: LCCOMB_X4_Y24_N22
\Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!\divf:divlimit[8]~q\ & (!\divf:divlimit[9]~q\ & (!\divf:divlimit[11]~q\ & !\divf:divlimit[10]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divf:divlimit[8]~q\,
	datab => \divf:divlimit[9]~q\,
	datac => \divf:divlimit[11]~q\,
	datad => \divf:divlimit[10]~q\,
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X4_Y25_N8
\Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!\divf:divlimit[4]~q\ & (!\divf:divlimit[5]~q\ & (!\divf:divlimit[6]~q\ & \divf:divlimit[7]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divf:divlimit[4]~q\,
	datab => \divf:divlimit[5]~q\,
	datac => \divf:divlimit[6]~q\,
	datad => \divf:divlimit[7]~q\,
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X4_Y24_N30
\Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (\divf:divlimit[14]~q\ & (\divf:divlimit[12]~q\ & (!\divf:divlimit[13]~q\ & \divf:divlimit[15]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divf:divlimit[14]~q\,
	datab => \divf:divlimit[12]~q\,
	datac => \divf:divlimit[13]~q\,
	datad => \divf:divlimit[15]~q\,
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X4_Y25_N0
\Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~0_combout\ & (\Equal0~2_combout\ & (\Equal0~1_combout\ & \Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \Equal0~2_combout\,
	datac => \Equal0~1_combout\,
	datad => \Equal0~3_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X4_Y24_N16
\Add0~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = \Add0~33\ $ (\divf:divlimit[17]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \divf:divlimit[17]~q\,
	cin => \Add0~33\,
	combout => \Add0~34_combout\);

-- Location: LCCOMB_X4_Y24_N20
\divlimit~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divlimit~1_combout\ = (\Add0~34_combout\ & (((!\divf:divlimit[16]~q\) # (!\divf:divlimit[17]~q\)) # (!\Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~4_combout\,
	datab => \Add0~34_combout\,
	datac => \divf:divlimit[17]~q\,
	datad => \divf:divlimit[16]~q\,
	combout => \divlimit~1_combout\);

-- Location: FF_X4_Y24_N21
\divf:divlimit[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputclkctrl_outclk\,
	d => \divlimit~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divf:divlimit[17]~q\);

-- Location: LCCOMB_X4_Y25_N4
\clk100~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk100~0_combout\ = \clk100~q\ $ (((\divf:divlimit[17]~q\ & (\divf:divlimit[16]~q\ & \Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divf:divlimit[17]~q\,
	datab => \divf:divlimit[16]~q\,
	datac => \clk100~q\,
	datad => \Equal0~4_combout\,
	combout => \clk100~0_combout\);

-- Location: FF_X4_Y25_N5
clk100 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputclkctrl_outclk\,
	d => \clk100~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk100~q\);

-- Location: CLKCTRL_G0
\clk100~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk100~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk100~clkctrl_outclk\);

-- Location: IOIBUF_X0_Y23_N1
\nstart_nstop~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nstart_nstop,
	o => \nstart_nstop~input_o\);

-- Location: LCCOMB_X23_Y18_N6
\nstart_nstop_s~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \nstart_nstop_s~0_combout\ = !\nstart_nstop~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \nstart_nstop~input_o\,
	combout => \nstart_nstop_s~0_combout\);

-- Location: FF_X23_Y18_N7
nstart_nstop_s : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk100~clkctrl_outclk\,
	d => \nstart_nstop_s~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \nstart_nstop_s~q\);

-- Location: FF_X23_Y18_N3
nstart_nstop_sa : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk100~clkctrl_outclk\,
	asdata => \nstart_nstop_s~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \nstart_nstop_sa~q\);

-- Location: LCCOMB_X23_Y18_N2
nstart_nstop_fb : cycloneiii_lcell_comb
-- Equation(s):
-- \nstart_nstop_fb~combout\ = (\nstart_nstop_sa~q\) # (!\nstart_nstop_s~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \nstart_nstop_sa~q\,
	datad => \nstart_nstop_s~q\,
	combout => \nstart_nstop_fb~combout\);

-- Location: IOIBUF_X0_Y23_N15
\nactual_nmem~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nactual_nmem,
	o => \nactual_nmem~input_o\);

-- Location: LCCOMB_X16_Y19_N12
\nactual_nmem_s~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \nactual_nmem_s~0_combout\ = !\nactual_nmem~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \nactual_nmem~input_o\,
	combout => \nactual_nmem_s~0_combout\);

-- Location: FF_X16_Y19_N13
nactual_nmem_s : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk100~clkctrl_outclk\,
	d => \nactual_nmem_s~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \nactual_nmem_s~q\);

-- Location: LCCOMB_X16_Y19_N6
\Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\nstart_nstop_sa~q\) # ((!\estat_control.aturat_mem~q\) # (!\nstart_nstop_s~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \nstart_nstop_sa~q\,
	datac => \nstart_nstop_s~q\,
	datad => \estat_control.aturat_mem~q\,
	combout => \Selector0~0_combout\);

-- Location: LCCOMB_X16_Y19_N8
\Selector0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector0~1_combout\ = ((\Selector1~5_combout\ & ((\Selector1~7_combout\))) # (!\Selector1~5_combout\ & (\estat_control.aturat_actual~q\))) # (!\Selector0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~0_combout\,
	datab => \Selector1~5_combout\,
	datac => \estat_control.aturat_actual~q\,
	datad => \Selector1~7_combout\,
	combout => \Selector0~1_combout\);

-- Location: FF_X16_Y19_N9
\estat_control.aturat_actual\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk100~clkctrl_outclk\,
	d => \Selector0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estat_control.aturat_actual~q\);

-- Location: FF_X16_Y19_N23
nactual_nmem_sa : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk100~clkctrl_outclk\,
	asdata => \nactual_nmem_s~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \nactual_nmem_sa~q\);

-- Location: LCCOMB_X16_Y19_N24
\Selector1~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector1~7_combout\ = (!\estat_control.aturat_actual~q\ & (((\nactual_nmem_s~q\ & !\nactual_nmem_sa~q\)) # (!\nstart_nstop_fb~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nactual_nmem_s~q\,
	datab => \estat_control.aturat_actual~q\,
	datac => \nstart_nstop_fb~combout\,
	datad => \nactual_nmem_sa~q\,
	combout => \Selector1~7_combout\);

-- Location: LCCOMB_X16_Y19_N22
\control~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control~0_combout\ = (!\nactual_nmem_sa~q\ & \nactual_nmem_s~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \nactual_nmem_sa~q\,
	datad => \nactual_nmem_s~q\,
	combout => \control~0_combout\);

-- Location: LCCOMB_X23_Y18_N0
\Selector2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = \estat_control.marxa~q\ $ (((!\nstart_nstop_sa~q\ & \nstart_nstop_s~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \nstart_nstop_sa~q\,
	datac => \estat_control.marxa~q\,
	datad => \nstart_nstop_s~q\,
	combout => \Selector2~0_combout\);

-- Location: FF_X23_Y18_N1
\estat_control.marxa\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk100~clkctrl_outclk\,
	d => \Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estat_control.marxa~q\);

-- Location: LCCOMB_X16_Y19_N26
\Selector1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector1~4_combout\ = (\nstart_nstop_fb~combout\ & (\estat_control.aturat_mem~q\ & (\control~0_combout\ & !\estat_control.marxa~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nstart_nstop_fb~combout\,
	datab => \estat_control.aturat_mem~q\,
	datac => \control~0_combout\,
	datad => \estat_control.marxa~q\,
	combout => \Selector1~4_combout\);

-- Location: LCCOMB_X16_Y19_N28
\Selector1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector1~5_combout\ = (\Selector1~7_combout\) # ((\Selector1~4_combout\) # ((!\nstart_nstop_fb~combout\ & \estat_control.marxa~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nstart_nstop_fb~combout\,
	datab => \Selector1~7_combout\,
	datac => \Selector1~4_combout\,
	datad => \estat_control.marxa~q\,
	combout => \Selector1~5_combout\);

-- Location: LCCOMB_X16_Y19_N16
\Selector1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector1~6_combout\ = (\nstart_nstop_fb~combout\ & ((\Selector1~7_combout\) # ((!\Selector1~5_combout\ & \estat_control.aturat_mem~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nstart_nstop_fb~combout\,
	datab => \Selector1~5_combout\,
	datac => \estat_control.aturat_mem~q\,
	datad => \Selector1~7_combout\,
	combout => \Selector1~6_combout\);

-- Location: FF_X16_Y19_N17
\estat_control.aturat_mem\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk100~clkctrl_outclk\,
	d => \Selector1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estat_control.aturat_mem~q\);

-- Location: LCCOMB_X23_Y18_N18
clr_compt_reg : cycloneiii_lcell_comb
-- Equation(s):
-- \clr_compt_reg~combout\ = ((\nstart_nstop_sa~q\) # (\estat_control.marxa~q\)) # (!\nstart_nstop_s~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nstart_nstop_s~q\,
	datab => \nstart_nstop_sa~q\,
	datad => \estat_control.marxa~q\,
	combout => \clr_compt_reg~combout\);

-- Location: LCCOMB_X24_Y17_N18
\Add4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~2_combout\ = desenes_s_act(3) $ (((desenes_s_act(1) & (desenes_s_act(2) & desenes_s_act(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => desenes_s_act(1),
	datab => desenes_s_act(2),
	datac => desenes_s_act(3),
	datad => desenes_s_act(0),
	combout => \Add4~2_combout\);

-- Location: LCCOMB_X24_Y17_N14
\desenes_s_act[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \desenes_s_act[3]~3_combout\ = (\desenes_s_act[0]~7_combout\ & (\clr_compt_reg~combout\)) # (!\desenes_s_act[0]~7_combout\ & ((\Add4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clr_compt_reg~combout\,
	datab => \Add4~2_combout\,
	datad => \desenes_s_act[0]~7_combout\,
	combout => \desenes_s_act[3]~3_combout\);

-- Location: LCCOMB_X24_Y17_N10
\Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (desenes_s_act(1) & (desenes_s_act(2) & (desenes_s_act(3) & desenes_s_act(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => desenes_s_act(1),
	datab => desenes_s_act(2),
	datac => desenes_s_act(3),
	datad => desenes_s_act(0),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X24_Y19_N2
\unitats_s_act~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \unitats_s_act~0_combout\ = (!unitats_s_act(0) & ((\estat_control.marxa~q\) # ((\nstart_nstop_sa~q\) # (!\nstart_nstop_s~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estat_control.marxa~q\,
	datab => \nstart_nstop_sa~q\,
	datac => unitats_s_act(0),
	datad => \nstart_nstop_s~q\,
	combout => \unitats_s_act~0_combout\);

-- Location: LCCOMB_X28_Y21_N12
\unitats_c_act~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \unitats_c_act~4_combout\ = (\unitats_c_act~2_combout\ & !\Equal4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \unitats_c_act~2_combout\,
	datad => \Equal4~0_combout\,
	combout => \unitats_c_act~4_combout\);

-- Location: LCCOMB_X23_Y18_N30
\desenes_c_mem~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \desenes_c_mem~2_combout\ = (desenes_c_act(2) & ((\nstart_nstop_sa~q\) # ((\estat_control.marxa~q\) # (!\nstart_nstop_s~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => desenes_c_act(2),
	datab => \nstart_nstop_sa~q\,
	datac => \nstart_nstop_s~q\,
	datad => \estat_control.marxa~q\,
	combout => \desenes_c_mem~2_combout\);

-- Location: LCCOMB_X28_Y21_N28
\unitats_c_act~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \unitats_c_act~10_combout\ = (unitats_c_act(0) & ((unitats_c_act(1) & (unitats_c_act(2) $ (unitats_c_act(3)))) # (!unitats_c_act(1) & (unitats_c_act(2) & unitats_c_act(3))))) # (!unitats_c_act(0) & (((unitats_c_act(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => unitats_c_act(0),
	datab => unitats_c_act(1),
	datac => unitats_c_act(2),
	datad => unitats_c_act(3),
	combout => \unitats_c_act~10_combout\);

-- Location: LCCOMB_X28_Y21_N20
\unitats_c_act~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \unitats_c_act~11_combout\ = (\clr_compt_reg~combout\ & ((\unitats_c_act~10_combout\) # ((\unitats_c_act~3_combout\ & \unitats_c_act~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unitats_c_act~3_combout\,
	datab => \clr_compt_reg~combout\,
	datac => \unitats_c_act~2_combout\,
	datad => \unitats_c_act~10_combout\,
	combout => \unitats_c_act~11_combout\);

-- Location: LCCOMB_X28_Y21_N30
\unitats_c_act[3]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \unitats_c_act[3]~12_combout\ = (\estat_control.marxa~q\ & (((!\Equal1~0_combout\)))) # (!\estat_control.marxa~q\ & (!\nstart_nstop_sa~q\ & (\nstart_nstop_s~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estat_control.marxa~q\,
	datab => \nstart_nstop_sa~q\,
	datac => \nstart_nstop_s~q\,
	datad => \Equal1~0_combout\,
	combout => \unitats_c_act[3]~12_combout\);

-- Location: FF_X28_Y21_N21
\unitats_c_act[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk100~clkctrl_outclk\,
	d => \unitats_c_act~11_combout\,
	ena => \unitats_c_act[3]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => unitats_c_act(3));

-- Location: LCCOMB_X28_Y21_N0
\unitats_c_act~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \unitats_c_act~7_combout\ = (unitats_c_act(0) & (!unitats_c_act(1) & ((unitats_c_act(2)) # (!unitats_c_act(3))))) # (!unitats_c_act(0) & (unitats_c_act(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => unitats_c_act(0),
	datab => unitats_c_act(1),
	datac => unitats_c_act(2),
	datad => unitats_c_act(3),
	combout => \unitats_c_act~7_combout\);

-- Location: LCCOMB_X28_Y21_N16
\unitats_c_act~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \unitats_c_act~8_combout\ = (\clr_compt_reg~combout\ & ((\unitats_c_act~7_combout\) # ((\unitats_c_act~3_combout\ & \unitats_c_act~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unitats_c_act~3_combout\,
	datab => \clr_compt_reg~combout\,
	datac => \unitats_c_act~2_combout\,
	datad => \unitats_c_act~7_combout\,
	combout => \unitats_c_act~8_combout\);

-- Location: FF_X28_Y21_N17
\unitats_c_act[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk100~clkctrl_outclk\,
	d => \unitats_c_act~8_combout\,
	ena => \unitats_c_act[3]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => unitats_c_act(1));

-- Location: LCCOMB_X28_Y21_N18
\Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = unitats_c_act(2) $ (((unitats_c_act(0) & unitats_c_act(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => unitats_c_act(0),
	datab => unitats_c_act(1),
	datac => unitats_c_act(2),
	combout => \Add1~0_combout\);

-- Location: LCCOMB_X23_Y18_N12
\comptador~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \comptador~0_combout\ = (\estat_control.marxa~q\ & !\Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estat_control.marxa~q\,
	datac => \Equal1~0_combout\,
	combout => \comptador~0_combout\);

-- Location: LCCOMB_X23_Y18_N24
\unitats_c_act~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \unitats_c_act~9_combout\ = (\clr_compt_reg~combout\ & ((\comptador~0_combout\ & (\Add1~0_combout\)) # (!\comptador~0_combout\ & ((unitats_c_act(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~0_combout\,
	datab => \clr_compt_reg~combout\,
	datac => unitats_c_act(2),
	datad => \comptador~0_combout\,
	combout => \unitats_c_act~9_combout\);

-- Location: FF_X23_Y18_N25
\unitats_c_act[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk100~clkctrl_outclk\,
	d => \unitats_c_act~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => unitats_c_act(2));

-- Location: LCCOMB_X28_Y21_N22
\unitats_c_act~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \unitats_c_act~5_combout\ = (!unitats_c_act(2) & (!unitats_c_act(1) & (!\Equal3~0_combout\ & unitats_c_act(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => unitats_c_act(2),
	datab => unitats_c_act(1),
	datac => \Equal3~0_combout\,
	datad => unitats_c_act(3),
	combout => \unitats_c_act~5_combout\);

-- Location: LCCOMB_X28_Y21_N26
\unitats_c_act~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \unitats_c_act~6_combout\ = (\clr_compt_reg~combout\ & (((\unitats_c_act~5_combout\ & \unitats_c_act~4_combout\)) # (!unitats_c_act(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unitats_c_act~5_combout\,
	datab => \clr_compt_reg~combout\,
	datac => unitats_c_act(0),
	datad => \unitats_c_act~4_combout\,
	combout => \unitats_c_act~6_combout\);

-- Location: FF_X28_Y21_N27
\unitats_c_act[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk100~clkctrl_outclk\,
	d => \unitats_c_act~6_combout\,
	ena => \unitats_c_act[3]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => unitats_c_act(0));

-- Location: LCCOMB_X28_Y21_N6
\Equal2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = ((unitats_c_act(1)) # ((unitats_c_act(2)) # (!unitats_c_act(3)))) # (!unitats_c_act(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => unitats_c_act(0),
	datab => unitats_c_act(1),
	datac => unitats_c_act(2),
	datad => unitats_c_act(3),
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X28_Y23_N30
\desenes_c_act~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \desenes_c_act~4_combout\ = (\clr_compt_reg~combout\ & (desenes_c_act(2) $ (((desenes_c_act(1) & desenes_c_act(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => desenes_c_act(1),
	datab => desenes_c_act(2),
	datac => \clr_compt_reg~combout\,
	datad => desenes_c_act(0),
	combout => \desenes_c_act~4_combout\);

-- Location: LCCOMB_X23_Y18_N10
\desenes_c_act~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \desenes_c_act~5_combout\ = (\Equal2~0_combout\ & (\desenes_c_mem~2_combout\)) # (!\Equal2~0_combout\ & ((\comptador~0_combout\ & ((\desenes_c_act~4_combout\))) # (!\comptador~0_combout\ & (\desenes_c_mem~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \desenes_c_mem~2_combout\,
	datab => \Equal2~0_combout\,
	datac => \desenes_c_act~4_combout\,
	datad => \comptador~0_combout\,
	combout => \desenes_c_act~5_combout\);

-- Location: FF_X23_Y18_N11
\desenes_c_act[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk100~clkctrl_outclk\,
	d => \desenes_c_act~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => desenes_c_act(2));

-- Location: LCCOMB_X28_Y23_N0
\Add2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~1_combout\ = desenes_c_act(3) $ (((desenes_c_act(1) & (desenes_c_act(2) & desenes_c_act(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => desenes_c_act(1),
	datab => desenes_c_act(2),
	datac => desenes_c_act(3),
	datad => desenes_c_act(0),
	combout => \Add2~1_combout\);

-- Location: LCCOMB_X28_Y23_N28
\desenes_c_act~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \desenes_c_act~6_combout\ = (\clr_compt_reg~combout\ & ((\Equal3~0_combout\ & ((\Add2~1_combout\))) # (!\Equal3~0_combout\ & (\unitats_c_act~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unitats_c_act~4_combout\,
	datab => \Add2~1_combout\,
	datac => \clr_compt_reg~combout\,
	datad => \Equal3~0_combout\,
	combout => \desenes_c_act~6_combout\);

-- Location: LCCOMB_X28_Y23_N2
\desenes_c_act[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \desenes_c_act[1]~2_combout\ = ((\estat_control.marxa~q\ & (!\Equal1~0_combout\ & !\Equal2~0_combout\))) # (!\clr_compt_reg~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clr_compt_reg~combout\,
	datab => \estat_control.marxa~q\,
	datac => \Equal1~0_combout\,
	datad => \Equal2~0_combout\,
	combout => \desenes_c_act[1]~2_combout\);

-- Location: FF_X28_Y23_N29
\desenes_c_act[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk100~clkctrl_outclk\,
	d => \desenes_c_act~6_combout\,
	ena => \desenes_c_act[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => desenes_c_act(3));

-- Location: LCCOMB_X28_Y23_N16
\desenes_c_act~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \desenes_c_act~0_combout\ = (!desenes_c_act(1) & (!desenes_c_act(2) & desenes_c_act(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => desenes_c_act(1),
	datab => desenes_c_act(2),
	datac => desenes_c_act(3),
	combout => \desenes_c_act~0_combout\);

-- Location: LCCOMB_X28_Y23_N24
\desenes_c_act~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \desenes_c_act~1_combout\ = (\clr_compt_reg~combout\ & (((\unitats_c_act~4_combout\ & \desenes_c_act~0_combout\)) # (!desenes_c_act(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unitats_c_act~4_combout\,
	datab => \clr_compt_reg~combout\,
	datac => desenes_c_act(0),
	datad => \desenes_c_act~0_combout\,
	combout => \desenes_c_act~1_combout\);

-- Location: FF_X28_Y23_N25
\desenes_c_act[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk100~clkctrl_outclk\,
	d => \desenes_c_act~1_combout\,
	ena => \desenes_c_act[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => desenes_c_act(0));

-- Location: LCCOMB_X28_Y23_N20
\Add2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = desenes_c_act(1) $ (desenes_c_act(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => desenes_c_act(1),
	datad => desenes_c_act(0),
	combout => \Add2~0_combout\);

-- Location: LCCOMB_X28_Y23_N26
\desenes_c_act~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \desenes_c_act~3_combout\ = (\clr_compt_reg~combout\ & ((\Equal3~0_combout\ & ((\Add2~0_combout\))) # (!\Equal3~0_combout\ & (\unitats_c_act~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unitats_c_act~4_combout\,
	datab => \Add2~0_combout\,
	datac => \clr_compt_reg~combout\,
	datad => \Equal3~0_combout\,
	combout => \desenes_c_act~3_combout\);

-- Location: FF_X28_Y23_N27
\desenes_c_act[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk100~clkctrl_outclk\,
	d => \desenes_c_act~3_combout\,
	ena => \desenes_c_act[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => desenes_c_act(1));

-- Location: LCCOMB_X28_Y23_N6
\Equal3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = (desenes_c_act(1)) # ((desenes_c_act(2)) # ((!desenes_c_act(0)) # (!desenes_c_act(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => desenes_c_act(1),
	datab => desenes_c_act(2),
	datac => desenes_c_act(3),
	datad => desenes_c_act(0),
	combout => \Equal3~0_combout\);

-- Location: LCCOMB_X28_Y21_N10
\unitats_s_act[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \unitats_s_act[1]~1_combout\ = (\unitats_c_act[3]~12_combout\ & (((!\Equal3~0_combout\ & !\Equal2~0_combout\)) # (!\estat_control.marxa~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estat_control.marxa~q\,
	datab => \Equal3~0_combout\,
	datac => \unitats_c_act[3]~12_combout\,
	datad => \Equal2~0_combout\,
	combout => \unitats_s_act[1]~1_combout\);

-- Location: FF_X24_Y19_N3
\unitats_s_act[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk100~clkctrl_outclk\,
	d => \unitats_s_act~0_combout\,
	ena => \unitats_s_act[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => unitats_s_act(0));

-- Location: LCCOMB_X24_Y19_N4
\Add3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~0_combout\ = unitats_s_act(2) $ (((unitats_s_act(1) & unitats_s_act(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => unitats_s_act(1),
	datac => unitats_s_act(2),
	datad => unitats_s_act(0),
	combout => \Add3~0_combout\);

-- Location: LCCOMB_X24_Y19_N22
\unitats_s_act~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \unitats_s_act~4_combout\ = (\clr_compt_reg~combout\ & (\Add3~0_combout\ & \Equal4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clr_compt_reg~combout\,
	datac => \Add3~0_combout\,
	datad => \Equal4~0_combout\,
	combout => \unitats_s_act~4_combout\);

-- Location: FF_X24_Y19_N23
\unitats_s_act[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk100~clkctrl_outclk\,
	d => \unitats_s_act~4_combout\,
	ena => \unitats_s_act[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => unitats_s_act(2));

-- Location: LCCOMB_X24_Y19_N26
\unitats_s_act~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \unitats_s_act~2_combout\ = (unitats_s_act(1) & (((!unitats_s_act(0))))) # (!unitats_s_act(1) & (unitats_s_act(0) & ((unitats_s_act(2)) # (!unitats_s_act(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => unitats_s_act(3),
	datab => unitats_s_act(1),
	datac => unitats_s_act(2),
	datad => unitats_s_act(0),
	combout => \unitats_s_act~2_combout\);

-- Location: LCCOMB_X24_Y19_N16
\unitats_s_act~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \unitats_s_act~3_combout\ = (\clr_compt_reg~combout\ & ((\unitats_s_act~2_combout\) # ((\unitats_c_act~2_combout\ & !\Equal4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unitats_c_act~2_combout\,
	datab => \Equal4~0_combout\,
	datac => \unitats_s_act~2_combout\,
	datad => \clr_compt_reg~combout\,
	combout => \unitats_s_act~3_combout\);

-- Location: FF_X24_Y19_N17
\unitats_s_act[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk100~clkctrl_outclk\,
	d => \unitats_s_act~3_combout\,
	ena => \unitats_s_act[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => unitats_s_act(1));

-- Location: LCCOMB_X24_Y19_N30
\Add3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~1_combout\ = unitats_s_act(3) $ (((unitats_s_act(1) & (unitats_s_act(2) & unitats_s_act(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => unitats_s_act(3),
	datab => unitats_s_act(1),
	datac => unitats_s_act(2),
	datad => unitats_s_act(0),
	combout => \Add3~1_combout\);

-- Location: LCCOMB_X24_Y19_N28
\unitats_s_act~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \unitats_s_act~5_combout\ = (\clr_compt_reg~combout\ & ((\Equal4~0_combout\ & ((\Add3~1_combout\))) # (!\Equal4~0_combout\ & (\unitats_c_act~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unitats_c_act~2_combout\,
	datab => \Equal4~0_combout\,
	datac => \Add3~1_combout\,
	datad => \clr_compt_reg~combout\,
	combout => \unitats_s_act~5_combout\);

-- Location: FF_X24_Y19_N29
\unitats_s_act[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk100~clkctrl_outclk\,
	d => \unitats_s_act~5_combout\,
	ena => \unitats_s_act[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => unitats_s_act(3));

-- Location: LCCOMB_X24_Y19_N24
\Equal4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal4~0_combout\ = ((unitats_s_act(1)) # ((unitats_s_act(2)) # (!unitats_s_act(0)))) # (!unitats_s_act(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => unitats_s_act(3),
	datab => unitats_s_act(1),
	datac => unitats_s_act(2),
	datad => unitats_s_act(0),
	combout => \Equal4~0_combout\);

-- Location: LCCOMB_X28_Y21_N24
\unitats_c_act~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \unitats_c_act~3_combout\ = (!\Equal4~0_combout\ & (!\Equal3~0_combout\ & !\Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~0_combout\,
	datac => \Equal3~0_combout\,
	datad => \Equal2~0_combout\,
	combout => \unitats_c_act~3_combout\);

-- Location: LCCOMB_X24_Y17_N20
\desenes_s_act[0]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \desenes_s_act[0]~6_combout\ = (\estat_control.marxa~q\ & ((\Equal1~0_combout\) # ((!\unitats_c_act~3_combout\)))) # (!\estat_control.marxa~q\ & (((\nstart_nstop_fb~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => \estat_control.marxa~q\,
	datac => \nstart_nstop_fb~combout\,
	datad => \unitats_c_act~3_combout\,
	combout => \desenes_s_act[0]~6_combout\);

-- Location: FF_X24_Y17_N15
\desenes_s_act[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk100~clkctrl_outclk\,
	d => \desenes_s_act[3]~3_combout\,
	asdata => desenes_s_act(3),
	sload => \desenes_s_act[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => desenes_s_act(3));

-- Location: LCCOMB_X24_Y17_N16
\unitats_c_act~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \unitats_c_act~2_combout\ = (!desenes_s_act(1) & (!desenes_s_act(2) & (desenes_s_act(3) & desenes_s_act(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => desenes_s_act(1),
	datab => desenes_s_act(2),
	datac => desenes_s_act(3),
	datad => desenes_s_act(0),
	combout => \unitats_c_act~2_combout\);

-- Location: LCCOMB_X24_Y17_N28
\desenes_s_act[0]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \desenes_s_act[0]~7_combout\ = (\unitats_c_act~2_combout\) # ((!\nstart_nstop_sa~q\ & (!\estat_control.marxa~q\ & \nstart_nstop_s~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nstart_nstop_sa~q\,
	datab => \estat_control.marxa~q\,
	datac => \unitats_c_act~2_combout\,
	datad => \nstart_nstop_s~q\,
	combout => \desenes_s_act[0]~7_combout\);

-- Location: LCCOMB_X24_Y17_N24
\desenes_s_act[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \desenes_s_act[0]~0_combout\ = (\desenes_s_act[0]~7_combout\ & (\clr_compt_reg~combout\)) # (!\desenes_s_act[0]~7_combout\ & ((!desenes_s_act(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clr_compt_reg~combout\,
	datac => desenes_s_act(0),
	datad => \desenes_s_act[0]~7_combout\,
	combout => \desenes_s_act[0]~0_combout\);

-- Location: FF_X24_Y17_N25
\desenes_s_act[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk100~clkctrl_outclk\,
	d => \desenes_s_act[0]~0_combout\,
	asdata => desenes_s_act(0),
	sload => \desenes_s_act[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => desenes_s_act(0));

-- Location: LCCOMB_X24_Y17_N30
\Add4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~0_combout\ = desenes_s_act(1) $ (desenes_s_act(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => desenes_s_act(1),
	datad => desenes_s_act(0),
	combout => \Add4~0_combout\);

-- Location: LCCOMB_X24_Y17_N26
\desenes_s_act[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \desenes_s_act[1]~1_combout\ = (\desenes_s_act[0]~7_combout\ & ((\clr_compt_reg~combout\))) # (!\desenes_s_act[0]~7_combout\ & (\Add4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~0_combout\,
	datab => \clr_compt_reg~combout\,
	datad => \desenes_s_act[0]~7_combout\,
	combout => \desenes_s_act[1]~1_combout\);

-- Location: FF_X24_Y17_N27
\desenes_s_act[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk100~clkctrl_outclk\,
	d => \desenes_s_act[1]~1_combout\,
	asdata => desenes_s_act(1),
	sload => \desenes_s_act[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => desenes_s_act(1));

-- Location: LCCOMB_X24_Y17_N0
\Add4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~1_combout\ = desenes_s_act(2) $ (((desenes_s_act(1) & desenes_s_act(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => desenes_s_act(1),
	datac => desenes_s_act(2),
	datad => desenes_s_act(0),
	combout => \Add4~1_combout\);

-- Location: LCCOMB_X24_Y17_N12
\desenes_s_act[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \desenes_s_act[2]~2_combout\ = (\desenes_s_act[0]~7_combout\ & (\clr_compt_reg~combout\)) # (!\desenes_s_act[0]~7_combout\ & ((\Add4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clr_compt_reg~combout\,
	datab => \Add4~1_combout\,
	datad => \desenes_s_act[0]~7_combout\,
	combout => \desenes_s_act[2]~2_combout\);

-- Location: FF_X24_Y17_N13
\desenes_s_act[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk100~clkctrl_outclk\,
	d => \desenes_s_act[2]~2_combout\,
	asdata => desenes_s_act(2),
	sload => \desenes_s_act[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => desenes_s_act(2));

-- Location: LCCOMB_X30_Y25_N24
\desenes_s_mem~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \desenes_s_mem~2_combout\ = (desenes_s_act(2) & (((\nstart_nstop_sa~q\) # (\estat_control.marxa~q\)) # (!\nstart_nstop_s~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nstart_nstop_s~q\,
	datab => desenes_s_act(2),
	datac => \nstart_nstop_sa~q\,
	datad => \estat_control.marxa~q\,
	combout => \desenes_s_mem~2_combout\);

-- Location: LCCOMB_X16_Y19_N10
\control~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control~1_combout\ = (\nactual_nmem_s~q\ & (!\nactual_nmem_sa~q\ & \estat_control.marxa~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nactual_nmem_s~q\,
	datab => \nactual_nmem_sa~q\,
	datad => \estat_control.marxa~q\,
	combout => \control~1_combout\);

-- Location: FF_X16_Y19_N11
ld_registre : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk100~clkctrl_outclk\,
	d => \control~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ld_registre~q\);

-- Location: LCCOMB_X23_Y18_N28
\unitats_s_mem[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \unitats_s_mem[0]~0_combout\ = (\ld_registre~q\) # ((\nstart_nstop_s~q\ & (!\nstart_nstop_sa~q\ & !\estat_control.marxa~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nstart_nstop_s~q\,
	datab => \nstart_nstop_sa~q\,
	datac => \ld_registre~q\,
	datad => \estat_control.marxa~q\,
	combout => \unitats_s_mem[0]~0_combout\);

-- Location: FF_X30_Y25_N25
\desenes_s_mem[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk100~clkctrl_outclk\,
	d => \desenes_s_mem~2_combout\,
	ena => \unitats_s_mem[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => desenes_s_mem(2));

-- Location: LCCOMB_X30_Y25_N10
\desenes_s[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \desenes_s[2]~2_combout\ = (\estat_control.aturat_mem~q\ & ((desenes_s_mem(2)))) # (!\estat_control.aturat_mem~q\ & (desenes_s_act(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estat_control.aturat_mem~q\,
	datac => desenes_s_act(2),
	datad => desenes_s_mem(2),
	combout => \desenes_s[2]~2_combout\);

-- Location: LCCOMB_X30_Y25_N8
\desenes_s_mem~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \desenes_s_mem~0_combout\ = (desenes_s_act(0) & (((\nstart_nstop_sa~q\) # (\estat_control.marxa~q\)) # (!\nstart_nstop_s~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nstart_nstop_s~q\,
	datab => desenes_s_act(0),
	datac => \nstart_nstop_sa~q\,
	datad => \estat_control.marxa~q\,
	combout => \desenes_s_mem~0_combout\);

-- Location: FF_X30_Y25_N9
\desenes_s_mem[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk100~clkctrl_outclk\,
	d => \desenes_s_mem~0_combout\,
	ena => \unitats_s_mem[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => desenes_s_mem(0));

-- Location: LCCOMB_X30_Y25_N2
\desenes_s[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \desenes_s[0]~0_combout\ = (\estat_control.aturat_mem~q\ & (desenes_s_mem(0))) # (!\estat_control.aturat_mem~q\ & ((desenes_s_act(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estat_control.aturat_mem~q\,
	datac => desenes_s_mem(0),
	datad => desenes_s_act(0),
	combout => \desenes_s[0]~0_combout\);

-- Location: LCCOMB_X30_Y25_N20
\desenes_s_mem~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \desenes_s_mem~3_combout\ = (desenes_s_act(3) & (((\nstart_nstop_sa~q\) # (\estat_control.marxa~q\)) # (!\nstart_nstop_s~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nstart_nstop_s~q\,
	datab => \nstart_nstop_sa~q\,
	datac => desenes_s_act(3),
	datad => \estat_control.marxa~q\,
	combout => \desenes_s_mem~3_combout\);

-- Location: FF_X30_Y25_N21
\desenes_s_mem[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk100~clkctrl_outclk\,
	d => \desenes_s_mem~3_combout\,
	ena => \unitats_s_mem[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => desenes_s_mem(3));

-- Location: LCCOMB_X30_Y25_N30
\desenes_s[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \desenes_s[3]~3_combout\ = (\estat_control.aturat_mem~q\ & ((desenes_s_mem(3)))) # (!\estat_control.aturat_mem~q\ & (desenes_s_act(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estat_control.aturat_mem~q\,
	datac => desenes_s_act(3),
	datad => desenes_s_mem(3),
	combout => \desenes_s[3]~3_combout\);

-- Location: LCCOMB_X30_Y25_N12
\desenes_s_mem~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \desenes_s_mem~1_combout\ = (desenes_s_act(1) & (((\nstart_nstop_sa~q\) # (\estat_control.marxa~q\)) # (!\nstart_nstop_s~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nstart_nstop_s~q\,
	datab => desenes_s_act(1),
	datac => \nstart_nstop_sa~q\,
	datad => \estat_control.marxa~q\,
	combout => \desenes_s_mem~1_combout\);

-- Location: FF_X30_Y25_N13
\desenes_s_mem[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk100~clkctrl_outclk\,
	d => \desenes_s_mem~1_combout\,
	ena => \unitats_s_mem[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => desenes_s_mem(1));

-- Location: LCCOMB_X30_Y25_N6
\desenes_s[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \desenes_s[1]~1_combout\ = (\estat_control.aturat_mem~q\ & (desenes_s_mem(1))) # (!\estat_control.aturat_mem~q\ & ((desenes_s_act(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => desenes_s_mem(1),
	datab => desenes_s_act(1),
	datad => \estat_control.aturat_mem~q\,
	combout => \desenes_s[1]~1_combout\);

-- Location: LCCOMB_X30_Y25_N0
\cc_d_s|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cc_d_s|Mux6~0_combout\ = (\desenes_s[2]~2_combout\ & ((\desenes_s[3]~3_combout\) # ((!\desenes_s[0]~0_combout\ & !\desenes_s[1]~1_combout\)))) # (!\desenes_s[2]~2_combout\ & (\desenes_s[0]~0_combout\ & (\desenes_s[3]~3_combout\ $ 
-- (!\desenes_s[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \desenes_s[2]~2_combout\,
	datab => \desenes_s[0]~0_combout\,
	datac => \desenes_s[3]~3_combout\,
	datad => \desenes_s[1]~1_combout\,
	combout => \cc_d_s|Mux6~0_combout\);

-- Location: LCCOMB_X30_Y25_N18
\cc_d_s|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cc_d_s|Mux5~0_combout\ = (\desenes_s[2]~2_combout\ & ((\desenes_s[3]~3_combout\) # (\desenes_s[0]~0_combout\ $ (\desenes_s[1]~1_combout\)))) # (!\desenes_s[2]~2_combout\ & (((\desenes_s[3]~3_combout\ & \desenes_s[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \desenes_s[2]~2_combout\,
	datab => \desenes_s[0]~0_combout\,
	datac => \desenes_s[3]~3_combout\,
	datad => \desenes_s[1]~1_combout\,
	combout => \cc_d_s|Mux5~0_combout\);

-- Location: LCCOMB_X30_Y25_N28
\cc_d_s|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cc_d_s|Mux4~0_combout\ = (\desenes_s[2]~2_combout\ & (((\desenes_s[3]~3_combout\)))) # (!\desenes_s[2]~2_combout\ & (\desenes_s[1]~1_combout\ & ((\desenes_s[3]~3_combout\) # (!\desenes_s[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \desenes_s[2]~2_combout\,
	datab => \desenes_s[0]~0_combout\,
	datac => \desenes_s[3]~3_combout\,
	datad => \desenes_s[1]~1_combout\,
	combout => \cc_d_s|Mux4~0_combout\);

-- Location: LCCOMB_X30_Y25_N14
\cc_d_s|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cc_d_s|Mux3~0_combout\ = (\desenes_s[2]~2_combout\ & ((\desenes_s[3]~3_combout\) # (\desenes_s[0]~0_combout\ $ (!\desenes_s[1]~1_combout\)))) # (!\desenes_s[2]~2_combout\ & (\desenes_s[0]~0_combout\ & ((\desenes_s[3]~3_combout\) # 
-- (!\desenes_s[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \desenes_s[2]~2_combout\,
	datab => \desenes_s[0]~0_combout\,
	datac => \desenes_s[3]~3_combout\,
	datad => \desenes_s[1]~1_combout\,
	combout => \cc_d_s|Mux3~0_combout\);

-- Location: LCCOMB_X30_Y25_N16
\cc_d_s|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cc_d_s|Mux2~0_combout\ = (\desenes_s[1]~1_combout\ & ((\desenes_s[3]~3_combout\ & (\desenes_s[2]~2_combout\)) # (!\desenes_s[3]~3_combout\ & ((\desenes_s[0]~0_combout\))))) # (!\desenes_s[1]~1_combout\ & ((\desenes_s[2]~2_combout\) # 
-- ((\desenes_s[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \desenes_s[2]~2_combout\,
	datab => \desenes_s[0]~0_combout\,
	datac => \desenes_s[3]~3_combout\,
	datad => \desenes_s[1]~1_combout\,
	combout => \cc_d_s|Mux2~0_combout\);

-- Location: LCCOMB_X30_Y25_N26
\cc_d_s|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cc_d_s|Mux1~0_combout\ = (\desenes_s[0]~0_combout\ & ((\desenes_s[1]~1_combout\) # (\desenes_s[2]~2_combout\ $ (!\desenes_s[3]~3_combout\)))) # (!\desenes_s[0]~0_combout\ & ((\desenes_s[2]~2_combout\ & (\desenes_s[3]~3_combout\)) # 
-- (!\desenes_s[2]~2_combout\ & (!\desenes_s[3]~3_combout\ & \desenes_s[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \desenes_s[2]~2_combout\,
	datab => \desenes_s[0]~0_combout\,
	datac => \desenes_s[3]~3_combout\,
	datad => \desenes_s[1]~1_combout\,
	combout => \cc_d_s|Mux1~0_combout\);

-- Location: LCCOMB_X30_Y25_N4
\cc_d_s|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cc_d_s|Mux0~0_combout\ = (\desenes_s[2]~2_combout\ & (!\desenes_s[3]~3_combout\ & ((!\desenes_s[1]~1_combout\) # (!\desenes_s[0]~0_combout\)))) # (!\desenes_s[2]~2_combout\ & (((\desenes_s[3]~3_combout\) # (\desenes_s[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \desenes_s[2]~2_combout\,
	datab => \desenes_s[0]~0_combout\,
	datac => \desenes_s[3]~3_combout\,
	datad => \desenes_s[1]~1_combout\,
	combout => \cc_d_s|Mux0~0_combout\);

-- Location: LCCOMB_X24_Y19_N6
\unitats_s_mem~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \unitats_s_mem~2_combout\ = (unitats_s_act(1) & (((\nstart_nstop_sa~q\) # (\estat_control.marxa~q\)) # (!\nstart_nstop_s~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nstart_nstop_s~q\,
	datab => \nstart_nstop_sa~q\,
	datac => \estat_control.marxa~q\,
	datad => unitats_s_act(1),
	combout => \unitats_s_mem~2_combout\);

-- Location: FF_X24_Y19_N7
\unitats_s_mem[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk100~clkctrl_outclk\,
	d => \unitats_s_mem~2_combout\,
	ena => \unitats_s_mem[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => unitats_s_mem(1));

-- Location: LCCOMB_X24_Y19_N10
\unitats_s[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \unitats_s[1]~1_combout\ = (\estat_control.aturat_mem~q\ & (unitats_s_mem(1))) # (!\estat_control.aturat_mem~q\ & ((unitats_s_act(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => unitats_s_mem(1),
	datac => \estat_control.aturat_mem~q\,
	datad => unitats_s_act(1),
	combout => \unitats_s[1]~1_combout\);

-- Location: LCCOMB_X24_Y19_N18
\unitats_s_mem~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \unitats_s_mem~4_combout\ = (unitats_s_act(3) & (((\nstart_nstop_sa~q\) # (\estat_control.marxa~q\)) # (!\nstart_nstop_s~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nstart_nstop_s~q\,
	datab => \nstart_nstop_sa~q\,
	datac => \estat_control.marxa~q\,
	datad => unitats_s_act(3),
	combout => \unitats_s_mem~4_combout\);

-- Location: FF_X24_Y19_N19
\unitats_s_mem[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk100~clkctrl_outclk\,
	d => \unitats_s_mem~4_combout\,
	ena => \unitats_s_mem[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => unitats_s_mem(3));

-- Location: LCCOMB_X24_Y19_N14
\unitats_s[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \unitats_s[3]~3_combout\ = (\estat_control.aturat_mem~q\ & (unitats_s_mem(3))) # (!\estat_control.aturat_mem~q\ & ((unitats_s_act(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => unitats_s_mem(3),
	datac => \estat_control.aturat_mem~q\,
	datad => unitats_s_act(3),
	combout => \unitats_s[3]~3_combout\);

-- Location: LCCOMB_X24_Y19_N20
\unitats_s_mem~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \unitats_s_mem~3_combout\ = (unitats_s_act(2) & ((\nstart_nstop_sa~q\) # ((\estat_control.marxa~q\) # (!\nstart_nstop_s~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => unitats_s_act(2),
	datab => \nstart_nstop_sa~q\,
	datac => \estat_control.marxa~q\,
	datad => \nstart_nstop_s~q\,
	combout => \unitats_s_mem~3_combout\);

-- Location: FF_X24_Y19_N21
\unitats_s_mem[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk100~clkctrl_outclk\,
	d => \unitats_s_mem~3_combout\,
	ena => \unitats_s_mem[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => unitats_s_mem(2));

-- Location: LCCOMB_X24_Y19_N0
\unitats_s[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \unitats_s[2]~2_combout\ = (\estat_control.aturat_mem~q\ & ((unitats_s_mem(2)))) # (!\estat_control.aturat_mem~q\ & (unitats_s_act(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => unitats_s_act(2),
	datab => unitats_s_mem(2),
	datac => \estat_control.aturat_mem~q\,
	combout => \unitats_s[2]~2_combout\);

-- Location: LCCOMB_X24_Y19_N8
\unitats_s_mem~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \unitats_s_mem~1_combout\ = (unitats_s_act(0) & (((\nstart_nstop_sa~q\) # (\estat_control.marxa~q\)) # (!\nstart_nstop_s~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nstart_nstop_s~q\,
	datab => \nstart_nstop_sa~q\,
	datac => \estat_control.marxa~q\,
	datad => unitats_s_act(0),
	combout => \unitats_s_mem~1_combout\);

-- Location: FF_X24_Y19_N9
\unitats_s_mem[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk100~clkctrl_outclk\,
	d => \unitats_s_mem~1_combout\,
	ena => \unitats_s_mem[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => unitats_s_mem(0));

-- Location: LCCOMB_X24_Y19_N12
\unitats_s[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \unitats_s[0]~0_combout\ = (\estat_control.aturat_mem~q\ & (unitats_s_mem(0))) # (!\estat_control.aturat_mem~q\ & ((unitats_s_act(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => unitats_s_mem(0),
	datac => \estat_control.aturat_mem~q\,
	datad => unitats_s_act(0),
	combout => \unitats_s[0]~0_combout\);

-- Location: LCCOMB_X27_Y27_N24
\cc_u_s|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cc_u_s|Mux6~0_combout\ = (\unitats_s[1]~1_combout\ & (\unitats_s[3]~3_combout\ & ((\unitats_s[2]~2_combout\) # (\unitats_s[0]~0_combout\)))) # (!\unitats_s[1]~1_combout\ & (\unitats_s[2]~2_combout\ $ (((!\unitats_s[3]~3_combout\ & 
-- \unitats_s[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unitats_s[1]~1_combout\,
	datab => \unitats_s[3]~3_combout\,
	datac => \unitats_s[2]~2_combout\,
	datad => \unitats_s[0]~0_combout\,
	combout => \cc_u_s|Mux6~0_combout\);

-- Location: LCCOMB_X27_Y27_N26
\cc_u_s|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cc_u_s|Mux5~0_combout\ = (\unitats_s[3]~3_combout\ & ((\unitats_s[1]~1_combout\) # ((\unitats_s[2]~2_combout\)))) # (!\unitats_s[3]~3_combout\ & (\unitats_s[2]~2_combout\ & (\unitats_s[1]~1_combout\ $ (\unitats_s[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unitats_s[1]~1_combout\,
	datab => \unitats_s[3]~3_combout\,
	datac => \unitats_s[2]~2_combout\,
	datad => \unitats_s[0]~0_combout\,
	combout => \cc_u_s|Mux5~0_combout\);

-- Location: LCCOMB_X27_Y27_N4
\cc_u_s|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cc_u_s|Mux4~0_combout\ = (\unitats_s[2]~2_combout\ & (((\unitats_s[3]~3_combout\)))) # (!\unitats_s[2]~2_combout\ & (\unitats_s[1]~1_combout\ & ((\unitats_s[3]~3_combout\) # (!\unitats_s[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unitats_s[1]~1_combout\,
	datab => \unitats_s[3]~3_combout\,
	datac => \unitats_s[2]~2_combout\,
	datad => \unitats_s[0]~0_combout\,
	combout => \cc_u_s|Mux4~0_combout\);

-- Location: LCCOMB_X27_Y27_N30
\cc_u_s|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cc_u_s|Mux3~0_combout\ = (\unitats_s[2]~2_combout\ & ((\unitats_s[3]~3_combout\) # (\unitats_s[1]~1_combout\ $ (!\unitats_s[0]~0_combout\)))) # (!\unitats_s[2]~2_combout\ & (\unitats_s[0]~0_combout\ & ((\unitats_s[3]~3_combout\) # 
-- (!\unitats_s[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unitats_s[1]~1_combout\,
	datab => \unitats_s[3]~3_combout\,
	datac => \unitats_s[2]~2_combout\,
	datad => \unitats_s[0]~0_combout\,
	combout => \cc_u_s|Mux3~0_combout\);

-- Location: LCCOMB_X27_Y27_N0
\cc_u_s|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cc_u_s|Mux2~0_combout\ = (\unitats_s[1]~1_combout\ & ((\unitats_s[3]~3_combout\ & (\unitats_s[2]~2_combout\)) # (!\unitats_s[3]~3_combout\ & ((\unitats_s[0]~0_combout\))))) # (!\unitats_s[1]~1_combout\ & (((\unitats_s[2]~2_combout\) # 
-- (\unitats_s[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unitats_s[1]~1_combout\,
	datab => \unitats_s[3]~3_combout\,
	datac => \unitats_s[2]~2_combout\,
	datad => \unitats_s[0]~0_combout\,
	combout => \cc_u_s|Mux2~0_combout\);

-- Location: LCCOMB_X27_Y27_N10
\cc_u_s|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cc_u_s|Mux1~0_combout\ = (\unitats_s[1]~1_combout\ & ((\unitats_s[0]~0_combout\) # (\unitats_s[3]~3_combout\ $ (!\unitats_s[2]~2_combout\)))) # (!\unitats_s[1]~1_combout\ & ((\unitats_s[3]~3_combout\ & (\unitats_s[2]~2_combout\)) # 
-- (!\unitats_s[3]~3_combout\ & (!\unitats_s[2]~2_combout\ & \unitats_s[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unitats_s[1]~1_combout\,
	datab => \unitats_s[3]~3_combout\,
	datac => \unitats_s[2]~2_combout\,
	datad => \unitats_s[0]~0_combout\,
	combout => \cc_u_s|Mux1~0_combout\);

-- Location: LCCOMB_X27_Y27_N12
\cc_u_s|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cc_u_s|Mux0~0_combout\ = (\unitats_s[1]~1_combout\ & (((!\unitats_s[3]~3_combout\ & !\unitats_s[0]~0_combout\)) # (!\unitats_s[2]~2_combout\))) # (!\unitats_s[1]~1_combout\ & (\unitats_s[3]~3_combout\ $ ((\unitats_s[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unitats_s[1]~1_combout\,
	datab => \unitats_s[3]~3_combout\,
	datac => \unitats_s[2]~2_combout\,
	datad => \unitats_s[0]~0_combout\,
	combout => \cc_u_s|Mux0~0_combout\);

-- Location: LCCOMB_X23_Y18_N22
\desenes_c_mem~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \desenes_c_mem~3_combout\ = (desenes_c_act(3) & (((\nstart_nstop_sa~q\) # (\estat_control.marxa~q\)) # (!\nstart_nstop_s~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nstart_nstop_s~q\,
	datab => \nstart_nstop_sa~q\,
	datac => desenes_c_act(3),
	datad => \estat_control.marxa~q\,
	combout => \desenes_c_mem~3_combout\);

-- Location: FF_X23_Y18_N23
\desenes_c_mem[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk100~clkctrl_outclk\,
	d => \desenes_c_mem~3_combout\,
	ena => \unitats_s_mem[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => desenes_c_mem(3));

-- Location: LCCOMB_X26_Y26_N6
\desenes_c[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \desenes_c[3]~3_combout\ = (\estat_control.aturat_mem~q\ & ((desenes_c_mem(3)))) # (!\estat_control.aturat_mem~q\ & (desenes_c_act(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => desenes_c_act(3),
	datab => desenes_c_mem(3),
	datad => \estat_control.aturat_mem~q\,
	combout => \desenes_c[3]~3_combout\);

-- Location: FF_X23_Y18_N31
\desenes_c_mem[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk100~clkctrl_outclk\,
	d => \desenes_c_mem~2_combout\,
	ena => \unitats_s_mem[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => desenes_c_mem(2));

-- Location: LCCOMB_X26_Y26_N28
\desenes_c[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \desenes_c[2]~2_combout\ = (\estat_control.aturat_mem~q\ & ((desenes_c_mem(2)))) # (!\estat_control.aturat_mem~q\ & (desenes_c_act(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estat_control.aturat_mem~q\,
	datab => desenes_c_act(2),
	datad => desenes_c_mem(2),
	combout => \desenes_c[2]~2_combout\);

-- Location: LCCOMB_X23_Y18_N26
\desenes_c_mem~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \desenes_c_mem~1_combout\ = (desenes_c_act(1) & (((\nstart_nstop_sa~q\) # (\estat_control.marxa~q\)) # (!\nstart_nstop_s~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nstart_nstop_s~q\,
	datab => \nstart_nstop_sa~q\,
	datac => desenes_c_act(1),
	datad => \estat_control.marxa~q\,
	combout => \desenes_c_mem~1_combout\);

-- Location: FF_X23_Y18_N27
\desenes_c_mem[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk100~clkctrl_outclk\,
	d => \desenes_c_mem~1_combout\,
	ena => \unitats_s_mem[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => desenes_c_mem(1));

-- Location: LCCOMB_X26_Y26_N26
\desenes_c[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \desenes_c[1]~1_combout\ = (\estat_control.aturat_mem~q\ & ((desenes_c_mem(1)))) # (!\estat_control.aturat_mem~q\ & (desenes_c_act(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => desenes_c_act(1),
	datac => desenes_c_mem(1),
	datad => \estat_control.aturat_mem~q\,
	combout => \desenes_c[1]~1_combout\);

-- Location: LCCOMB_X23_Y18_N8
\desenes_c_mem~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \desenes_c_mem~0_combout\ = (desenes_c_act(0) & (((\nstart_nstop_sa~q\) # (\estat_control.marxa~q\)) # (!\nstart_nstop_s~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nstart_nstop_s~q\,
	datab => \nstart_nstop_sa~q\,
	datac => desenes_c_act(0),
	datad => \estat_control.marxa~q\,
	combout => \desenes_c_mem~0_combout\);

-- Location: FF_X23_Y18_N9
\desenes_c_mem[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk100~clkctrl_outclk\,
	d => \desenes_c_mem~0_combout\,
	ena => \unitats_s_mem[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => desenes_c_mem(0));

-- Location: LCCOMB_X26_Y26_N24
\desenes_c[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \desenes_c[0]~0_combout\ = (\estat_control.aturat_mem~q\ & (desenes_c_mem(0))) # (!\estat_control.aturat_mem~q\ & ((desenes_c_act(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estat_control.aturat_mem~q\,
	datac => desenes_c_mem(0),
	datad => desenes_c_act(0),
	combout => \desenes_c[0]~0_combout\);

-- Location: LCCOMB_X26_Y26_N0
\cc_d_c|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cc_d_c|Mux6~0_combout\ = (\desenes_c[3]~3_combout\ & ((\desenes_c[2]~2_combout\) # ((\desenes_c[1]~1_combout\ & \desenes_c[0]~0_combout\)))) # (!\desenes_c[3]~3_combout\ & (!\desenes_c[1]~1_combout\ & (\desenes_c[2]~2_combout\ $ 
-- (\desenes_c[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \desenes_c[3]~3_combout\,
	datab => \desenes_c[2]~2_combout\,
	datac => \desenes_c[1]~1_combout\,
	datad => \desenes_c[0]~0_combout\,
	combout => \cc_d_c|Mux6~0_combout\);

-- Location: LCCOMB_X26_Y26_N2
\cc_d_c|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cc_d_c|Mux5~0_combout\ = (\desenes_c[3]~3_combout\ & ((\desenes_c[2]~2_combout\) # ((\desenes_c[1]~1_combout\)))) # (!\desenes_c[3]~3_combout\ & (\desenes_c[2]~2_combout\ & (\desenes_c[1]~1_combout\ $ (\desenes_c[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \desenes_c[3]~3_combout\,
	datab => \desenes_c[2]~2_combout\,
	datac => \desenes_c[1]~1_combout\,
	datad => \desenes_c[0]~0_combout\,
	combout => \cc_d_c|Mux5~0_combout\);

-- Location: LCCOMB_X26_Y26_N20
\cc_d_c|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cc_d_c|Mux4~0_combout\ = (\desenes_c[2]~2_combout\ & (\desenes_c[3]~3_combout\)) # (!\desenes_c[2]~2_combout\ & (\desenes_c[1]~1_combout\ & ((\desenes_c[3]~3_combout\) # (!\desenes_c[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \desenes_c[3]~3_combout\,
	datab => \desenes_c[2]~2_combout\,
	datac => \desenes_c[1]~1_combout\,
	datad => \desenes_c[0]~0_combout\,
	combout => \cc_d_c|Mux4~0_combout\);

-- Location: LCCOMB_X26_Y26_N14
\cc_d_c|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cc_d_c|Mux3~0_combout\ = (\desenes_c[2]~2_combout\ & ((\desenes_c[3]~3_combout\) # (\desenes_c[1]~1_combout\ $ (!\desenes_c[0]~0_combout\)))) # (!\desenes_c[2]~2_combout\ & (\desenes_c[0]~0_combout\ & ((\desenes_c[3]~3_combout\) # 
-- (!\desenes_c[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \desenes_c[3]~3_combout\,
	datab => \desenes_c[2]~2_combout\,
	datac => \desenes_c[1]~1_combout\,
	datad => \desenes_c[0]~0_combout\,
	combout => \cc_d_c|Mux3~0_combout\);

-- Location: LCCOMB_X26_Y26_N8
\cc_d_c|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cc_d_c|Mux2~0_combout\ = (\desenes_c[1]~1_combout\ & ((\desenes_c[3]~3_combout\ & (\desenes_c[2]~2_combout\)) # (!\desenes_c[3]~3_combout\ & ((\desenes_c[0]~0_combout\))))) # (!\desenes_c[1]~1_combout\ & (((\desenes_c[2]~2_combout\) # 
-- (\desenes_c[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \desenes_c[3]~3_combout\,
	datab => \desenes_c[2]~2_combout\,
	datac => \desenes_c[1]~1_combout\,
	datad => \desenes_c[0]~0_combout\,
	combout => \cc_d_c|Mux2~0_combout\);

-- Location: LCCOMB_X26_Y26_N10
\cc_d_c|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cc_d_c|Mux1~0_combout\ = (\desenes_c[1]~1_combout\ & ((\desenes_c[0]~0_combout\) # (\desenes_c[3]~3_combout\ $ (!\desenes_c[2]~2_combout\)))) # (!\desenes_c[1]~1_combout\ & ((\desenes_c[3]~3_combout\ & (\desenes_c[2]~2_combout\)) # 
-- (!\desenes_c[3]~3_combout\ & (!\desenes_c[2]~2_combout\ & \desenes_c[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \desenes_c[3]~3_combout\,
	datab => \desenes_c[2]~2_combout\,
	datac => \desenes_c[1]~1_combout\,
	datad => \desenes_c[0]~0_combout\,
	combout => \cc_d_c|Mux1~0_combout\);

-- Location: LCCOMB_X26_Y26_N4
\cc_d_c|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cc_d_c|Mux0~0_combout\ = (\desenes_c[3]~3_combout\ & (!\desenes_c[2]~2_combout\)) # (!\desenes_c[3]~3_combout\ & ((\desenes_c[2]~2_combout\ & ((!\desenes_c[0]~0_combout\) # (!\desenes_c[1]~1_combout\))) # (!\desenes_c[2]~2_combout\ & 
-- (\desenes_c[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \desenes_c[3]~3_combout\,
	datab => \desenes_c[2]~2_combout\,
	datac => \desenes_c[1]~1_combout\,
	datad => \desenes_c[0]~0_combout\,
	combout => \cc_d_c|Mux0~0_combout\);

-- Location: LCCOMB_X23_Y18_N14
\unitats_c_mem~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \unitats_c_mem~2_combout\ = (unitats_c_act(2) & (((\nstart_nstop_sa~q\) # (\estat_control.marxa~q\)) # (!\nstart_nstop_s~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nstart_nstop_s~q\,
	datab => unitats_c_act(2),
	datac => \nstart_nstop_sa~q\,
	datad => \estat_control.marxa~q\,
	combout => \unitats_c_mem~2_combout\);

-- Location: FF_X23_Y18_N15
\unitats_c_mem[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk100~clkctrl_outclk\,
	d => \unitats_c_mem~2_combout\,
	ena => \unitats_s_mem[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => unitats_c_mem(2));

-- Location: LCCOMB_X23_Y18_N4
\unitats_c[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \unitats_c[2]~2_combout\ = (\estat_control.aturat_mem~q\ & (unitats_c_mem(2))) # (!\estat_control.aturat_mem~q\ & ((unitats_c_act(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => unitats_c_mem(2),
	datac => \estat_control.aturat_mem~q\,
	datad => unitats_c_act(2),
	combout => \unitats_c[2]~2_combout\);

-- Location: LCCOMB_X23_Y18_N20
\unitats_c_mem~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \unitats_c_mem~3_combout\ = (unitats_c_act(3) & (((\estat_control.marxa~q\) # (\nstart_nstop_sa~q\)) # (!\nstart_nstop_s~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nstart_nstop_s~q\,
	datab => \estat_control.marxa~q\,
	datac => unitats_c_act(3),
	datad => \nstart_nstop_sa~q\,
	combout => \unitats_c_mem~3_combout\);

-- Location: FF_X23_Y18_N21
\unitats_c_mem[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk100~clkctrl_outclk\,
	d => \unitats_c_mem~3_combout\,
	ena => \unitats_s_mem[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => unitats_c_mem(3));

-- Location: LCCOMB_X23_Y18_N16
\unitats_c[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \unitats_c[3]~3_combout\ = (\estat_control.aturat_mem~q\ & (unitats_c_mem(3))) # (!\estat_control.aturat_mem~q\ & ((unitats_c_act(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => unitats_c_mem(3),
	datac => \estat_control.aturat_mem~q\,
	datad => unitats_c_act(3),
	combout => \unitats_c[3]~3_combout\);

-- Location: LCCOMB_X28_Y21_N8
\unitats_c_mem~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \unitats_c_mem~0_combout\ = (unitats_c_act(0) & (((\nstart_nstop_sa~q\) # (\estat_control.marxa~q\)) # (!\nstart_nstop_s~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nstart_nstop_s~q\,
	datab => \nstart_nstop_sa~q\,
	datac => unitats_c_act(0),
	datad => \estat_control.marxa~q\,
	combout => \unitats_c_mem~0_combout\);

-- Location: FF_X28_Y21_N9
\unitats_c_mem[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk100~clkctrl_outclk\,
	d => \unitats_c_mem~0_combout\,
	ena => \unitats_s_mem[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => unitats_c_mem(0));

-- Location: LCCOMB_X28_Y21_N4
\unitats_c[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \unitats_c[0]~0_combout\ = (\estat_control.aturat_mem~q\ & ((unitats_c_mem(0)))) # (!\estat_control.aturat_mem~q\ & (unitats_c_act(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => unitats_c_act(0),
	datab => unitats_c_mem(0),
	datad => \estat_control.aturat_mem~q\,
	combout => \unitats_c[0]~0_combout\);

-- Location: LCCOMB_X28_Y21_N14
\unitats_c_mem~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \unitats_c_mem~1_combout\ = (unitats_c_act(1) & (((\nstart_nstop_sa~q\) # (\estat_control.marxa~q\)) # (!\nstart_nstop_s~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nstart_nstop_s~q\,
	datab => unitats_c_act(1),
	datac => \nstart_nstop_sa~q\,
	datad => \estat_control.marxa~q\,
	combout => \unitats_c_mem~1_combout\);

-- Location: FF_X28_Y21_N15
\unitats_c_mem[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk100~clkctrl_outclk\,
	d => \unitats_c_mem~1_combout\,
	ena => \unitats_s_mem[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => unitats_c_mem(1));

-- Location: LCCOMB_X28_Y21_N2
\unitats_c[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \unitats_c[1]~1_combout\ = (\estat_control.aturat_mem~q\ & ((unitats_c_mem(1)))) # (!\estat_control.aturat_mem~q\ & (unitats_c_act(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => unitats_c_act(1),
	datac => unitats_c_mem(1),
	datad => \estat_control.aturat_mem~q\,
	combout => \unitats_c[1]~1_combout\);

-- Location: LCCOMB_X28_Y26_N8
\cc_u_c|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cc_u_c|Mux6~0_combout\ = (\unitats_c[2]~2_combout\ & ((\unitats_c[3]~3_combout\) # ((!\unitats_c[0]~0_combout\ & !\unitats_c[1]~1_combout\)))) # (!\unitats_c[2]~2_combout\ & (\unitats_c[0]~0_combout\ & (\unitats_c[3]~3_combout\ $ 
-- (!\unitats_c[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unitats_c[2]~2_combout\,
	datab => \unitats_c[3]~3_combout\,
	datac => \unitats_c[0]~0_combout\,
	datad => \unitats_c[1]~1_combout\,
	combout => \cc_u_c|Mux6~0_combout\);

-- Location: LCCOMB_X28_Y26_N2
\cc_u_c|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cc_u_c|Mux5~0_combout\ = (\unitats_c[2]~2_combout\ & ((\unitats_c[3]~3_combout\) # (\unitats_c[0]~0_combout\ $ (\unitats_c[1]~1_combout\)))) # (!\unitats_c[2]~2_combout\ & (\unitats_c[3]~3_combout\ & ((\unitats_c[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unitats_c[2]~2_combout\,
	datab => \unitats_c[3]~3_combout\,
	datac => \unitats_c[0]~0_combout\,
	datad => \unitats_c[1]~1_combout\,
	combout => \cc_u_c|Mux5~0_combout\);

-- Location: LCCOMB_X28_Y26_N4
\cc_u_c|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cc_u_c|Mux4~0_combout\ = (\unitats_c[2]~2_combout\ & (\unitats_c[3]~3_combout\)) # (!\unitats_c[2]~2_combout\ & (\unitats_c[1]~1_combout\ & ((\unitats_c[3]~3_combout\) # (!\unitats_c[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unitats_c[2]~2_combout\,
	datab => \unitats_c[3]~3_combout\,
	datac => \unitats_c[0]~0_combout\,
	datad => \unitats_c[1]~1_combout\,
	combout => \cc_u_c|Mux4~0_combout\);

-- Location: LCCOMB_X28_Y26_N6
\cc_u_c|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cc_u_c|Mux3~0_combout\ = (\unitats_c[2]~2_combout\ & ((\unitats_c[3]~3_combout\) # (\unitats_c[0]~0_combout\ $ (!\unitats_c[1]~1_combout\)))) # (!\unitats_c[2]~2_combout\ & (\unitats_c[0]~0_combout\ & ((\unitats_c[3]~3_combout\) # 
-- (!\unitats_c[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unitats_c[2]~2_combout\,
	datab => \unitats_c[3]~3_combout\,
	datac => \unitats_c[0]~0_combout\,
	datad => \unitats_c[1]~1_combout\,
	combout => \cc_u_c|Mux3~0_combout\);

-- Location: LCCOMB_X28_Y26_N0
\cc_u_c|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cc_u_c|Mux2~0_combout\ = (\unitats_c[1]~1_combout\ & ((\unitats_c[3]~3_combout\ & (\unitats_c[2]~2_combout\)) # (!\unitats_c[3]~3_combout\ & ((\unitats_c[0]~0_combout\))))) # (!\unitats_c[1]~1_combout\ & ((\unitats_c[2]~2_combout\) # 
-- ((\unitats_c[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unitats_c[2]~2_combout\,
	datab => \unitats_c[3]~3_combout\,
	datac => \unitats_c[0]~0_combout\,
	datad => \unitats_c[1]~1_combout\,
	combout => \cc_u_c|Mux2~0_combout\);

-- Location: LCCOMB_X28_Y26_N26
\cc_u_c|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cc_u_c|Mux1~0_combout\ = (\unitats_c[0]~0_combout\ & ((\unitats_c[1]~1_combout\) # (\unitats_c[2]~2_combout\ $ (!\unitats_c[3]~3_combout\)))) # (!\unitats_c[0]~0_combout\ & ((\unitats_c[2]~2_combout\ & (\unitats_c[3]~3_combout\)) # 
-- (!\unitats_c[2]~2_combout\ & (!\unitats_c[3]~3_combout\ & \unitats_c[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unitats_c[2]~2_combout\,
	datab => \unitats_c[3]~3_combout\,
	datac => \unitats_c[0]~0_combout\,
	datad => \unitats_c[1]~1_combout\,
	combout => \cc_u_c|Mux1~0_combout\);

-- Location: LCCOMB_X28_Y26_N12
\cc_u_c|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cc_u_c|Mux0~0_combout\ = (\unitats_c[2]~2_combout\ & (!\unitats_c[3]~3_combout\ & ((!\unitats_c[1]~1_combout\) # (!\unitats_c[0]~0_combout\)))) # (!\unitats_c[2]~2_combout\ & ((\unitats_c[3]~3_combout\) # ((\unitats_c[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unitats_c[2]~2_combout\,
	datab => \unitats_c[3]~3_combout\,
	datac => \unitats_c[0]~0_combout\,
	datad => \unitats_c[1]~1_combout\,
	combout => \cc_u_c|Mux0~0_combout\);

-- Location: LCCOMB_X30_Y25_N22
\Equal6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal6~0_combout\ = (\desenes_s[2]~2_combout\ & (\desenes_s[0]~0_combout\ & (\desenes_s[3]~3_combout\ & \desenes_s[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \desenes_s[2]~2_combout\,
	datab => \desenes_s[0]~0_combout\,
	datac => \desenes_s[3]~3_combout\,
	datad => \desenes_s[1]~1_combout\,
	combout => \Equal6~0_combout\);

ww_nss_desenes_s(0) <= \nss_desenes_s[0]~output_o\;

ww_nss_desenes_s(1) <= \nss_desenes_s[1]~output_o\;

ww_nss_desenes_s(2) <= \nss_desenes_s[2]~output_o\;

ww_nss_desenes_s(3) <= \nss_desenes_s[3]~output_o\;

ww_nss_desenes_s(4) <= \nss_desenes_s[4]~output_o\;

ww_nss_desenes_s(5) <= \nss_desenes_s[5]~output_o\;

ww_nss_desenes_s(6) <= \nss_desenes_s[6]~output_o\;

ww_nss_unitats_s(0) <= \nss_unitats_s[0]~output_o\;

ww_nss_unitats_s(1) <= \nss_unitats_s[1]~output_o\;

ww_nss_unitats_s(2) <= \nss_unitats_s[2]~output_o\;

ww_nss_unitats_s(3) <= \nss_unitats_s[3]~output_o\;

ww_nss_unitats_s(4) <= \nss_unitats_s[4]~output_o\;

ww_nss_unitats_s(5) <= \nss_unitats_s[5]~output_o\;

ww_nss_unitats_s(6) <= \nss_unitats_s[6]~output_o\;

ww_nss_desenes_c(0) <= \nss_desenes_c[0]~output_o\;

ww_nss_desenes_c(1) <= \nss_desenes_c[1]~output_o\;

ww_nss_desenes_c(2) <= \nss_desenes_c[2]~output_o\;

ww_nss_desenes_c(3) <= \nss_desenes_c[3]~output_o\;

ww_nss_desenes_c(4) <= \nss_desenes_c[4]~output_o\;

ww_nss_desenes_c(5) <= \nss_desenes_c[5]~output_o\;

ww_nss_desenes_c(6) <= \nss_desenes_c[6]~output_o\;

ww_nss_unitats_c(0) <= \nss_unitats_c[0]~output_o\;

ww_nss_unitats_c(1) <= \nss_unitats_c[1]~output_o\;

ww_nss_unitats_c(2) <= \nss_unitats_c[2]~output_o\;

ww_nss_unitats_c(3) <= \nss_unitats_c[3]~output_o\;

ww_nss_unitats_c(4) <= \nss_unitats_c[4]~output_o\;

ww_nss_unitats_c(5) <= \nss_unitats_c[5]~output_o\;

ww_nss_unitats_c(6) <= \nss_unitats_c[6]~output_o\;

ww_npd_desenes_s <= \npd_desenes_s~output_o\;

ww_npd_unitats_s <= \npd_unitats_s~output_o\;

ww_npd_desenes_c <= \npd_desenes_c~output_o\;

ww_npd_unitats_c <= \npd_unitats_c~output_o\;
END structure;


