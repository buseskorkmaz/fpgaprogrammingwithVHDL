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

-- DATE "01/07/2019 17:29:08"

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

ENTITY 	metro7 IS
    PORT (
	led : OUT std_logic_vector(6 DOWNTO 0);
	clk_hf : IN std_logic;
	ne_final : IN std_logic;
	ne_origen : IN std_logic;
	nsensor : IN std_logic
	);
END metro7;

-- Design Ports Information
-- led[6]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
-- led[5]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
-- led[4]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
-- led[3]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
-- led[2]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
-- led[1]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
-- led[0]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
-- ne_origen	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ne_final	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_hf	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nsensor	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF metro7 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_led : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_clk_hf : std_logic;
SIGNAL ww_ne_final : std_logic;
SIGNAL ww_ne_origen : std_logic;
SIGNAL ww_nsensor : std_logic;
SIGNAL \on_som|gen-q|45~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \gen-sensorf~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk_hf~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \led[6]~output_o\ : std_logic;
SIGNAL \led[5]~output_o\ : std_logic;
SIGNAL \led[4]~output_o\ : std_logic;
SIGNAL \led[3]~output_o\ : std_logic;
SIGNAL \led[2]~output_o\ : std_logic;
SIGNAL \led[1]~output_o\ : std_logic;
SIGNAL \led[0]~output_o\ : std_logic;
SIGNAL \clk_hf~input_o\ : std_logic;
SIGNAL \clk_hf~inputclkctrl_outclk\ : std_logic;
SIGNAL \divf|Add0~33\ : std_logic;
SIGNAL \divf|Add0~34_combout\ : std_logic;
SIGNAL \divf|divlimit[17]~33_combout\ : std_logic;
SIGNAL \divf|Add0~35\ : std_logic;
SIGNAL \divf|Add0~36_combout\ : std_logic;
SIGNAL \divf|divlimit~12_combout\ : std_logic;
SIGNAL \divf|Add0~37\ : std_logic;
SIGNAL \divf|Add0~38_combout\ : std_logic;
SIGNAL \divf|divlimit[19]~34_combout\ : std_logic;
SIGNAL \divf|Add0~39\ : std_logic;
SIGNAL \divf|Add0~40_combout\ : std_logic;
SIGNAL \divf|divlimit[20]~36_combout\ : std_logic;
SIGNAL \divf|Add0~41\ : std_logic;
SIGNAL \divf|Add0~42_combout\ : std_logic;
SIGNAL \divf|divlimit~13_combout\ : std_logic;
SIGNAL \divf|Add0~43\ : std_logic;
SIGNAL \divf|Add0~44_combout\ : std_logic;
SIGNAL \divf|divlimit~14_combout\ : std_logic;
SIGNAL \divf|Add0~45\ : std_logic;
SIGNAL \divf|Add0~46_combout\ : std_logic;
SIGNAL \divf|divlimit~15_combout\ : std_logic;
SIGNAL \divf|Equal0~6_combout\ : std_logic;
SIGNAL \divf|Add0~25\ : std_logic;
SIGNAL \divf|Add0~26_combout\ : std_logic;
SIGNAL \divf|divlimit~9_combout\ : std_logic;
SIGNAL \divf|Add0~27\ : std_logic;
SIGNAL \divf|Add0~28_combout\ : std_logic;
SIGNAL \divf|divlimit~10_combout\ : std_logic;
SIGNAL \divf|Add0~29\ : std_logic;
SIGNAL \divf|Add0~30_combout\ : std_logic;
SIGNAL \divf|divlimit~11_combout\ : std_logic;
SIGNAL \divf|Add0~31\ : std_logic;
SIGNAL \divf|Add0~32_combout\ : std_logic;
SIGNAL \divf|divlimit[16]~32_combout\ : std_logic;
SIGNAL \divf|Equal0~5_combout\ : std_logic;
SIGNAL \divf|Add0~0_combout\ : std_logic;
SIGNAL \divf|divlimit[0]~27_combout\ : std_logic;
SIGNAL \divf|Add0~1\ : std_logic;
SIGNAL \divf|Add0~2_combout\ : std_logic;
SIGNAL \divf|divlimit[1]~26_combout\ : std_logic;
SIGNAL \divf|Add0~3\ : std_logic;
SIGNAL \divf|Add0~4_combout\ : std_logic;
SIGNAL \divf|divlimit[2]~25_combout\ : std_logic;
SIGNAL \divf|Add0~5\ : std_logic;
SIGNAL \divf|Add0~6_combout\ : std_logic;
SIGNAL \divf|divlimit[3]~23_combout\ : std_logic;
SIGNAL \divf|Add0~7\ : std_logic;
SIGNAL \divf|Add0~8_combout\ : std_logic;
SIGNAL \divf|divlimit[4]~22_combout\ : std_logic;
SIGNAL \divf|Add0~9\ : std_logic;
SIGNAL \divf|Add0~10_combout\ : std_logic;
SIGNAL \divf|divlimit[5]~21_combout\ : std_logic;
SIGNAL \divf|Add0~11\ : std_logic;
SIGNAL \divf|Add0~12_combout\ : std_logic;
SIGNAL \divf|divlimit~8_combout\ : std_logic;
SIGNAL \divf|Add0~13\ : std_logic;
SIGNAL \divf|Add0~14_combout\ : std_logic;
SIGNAL \divf|divlimit~7_combout\ : std_logic;
SIGNAL \divf|Add0~15\ : std_logic;
SIGNAL \divf|Add0~16_combout\ : std_logic;
SIGNAL \divf|divlimit~6_combout\ : std_logic;
SIGNAL \divf|Add0~17\ : std_logic;
SIGNAL \divf|Add0~18_combout\ : std_logic;
SIGNAL \divf|divlimit[9]~17_combout\ : std_logic;
SIGNAL \divf|Add0~19\ : std_logic;
SIGNAL \divf|Add0~20_combout\ : std_logic;
SIGNAL \divf|divlimit[10]~16_combout\ : std_logic;
SIGNAL \divf|Add0~21\ : std_logic;
SIGNAL \divf|Add0~22_combout\ : std_logic;
SIGNAL \divf|divlimit[11]~24_combout\ : std_logic;
SIGNAL \divf|Add0~23\ : std_logic;
SIGNAL \divf|Add0~24_combout\ : std_logic;
SIGNAL \divf|divlimit[12]~28_combout\ : std_logic;
SIGNAL \divf|Equal0~3_combout\ : std_logic;
SIGNAL \divf|Equal0~0_combout\ : std_logic;
SIGNAL \divf|Equal0~1_combout\ : std_logic;
SIGNAL \divf|Equal0~2_combout\ : std_logic;
SIGNAL \divf|Equal0~4_combout\ : std_logic;
SIGNAL \divf|div2~0_combout\ : std_logic;
SIGNAL \divf|div2~q\ : std_logic;
SIGNAL \nsensor~input_o\ : std_logic;
SIGNAL \gen-sensorf~0_combout\ : std_logic;
SIGNAL \gen-sensorf~q\ : std_logic;
SIGNAL \gen-sensorf~clkctrl_outclk\ : std_logic;
SIGNAL \on_som|gen-q|46~0_combout\ : std_logic;
SIGNAL \ne_origen~input_o\ : std_logic;
SIGNAL \ne_final~input_o\ : std_logic;
SIGNAL \on_som|gen-q|97~combout\ : std_logic;
SIGNAL \on_som|gen-q|46~q\ : std_logic;
SIGNAL \on_som|gen-q|100~combout\ : std_logic;
SIGNAL \on_som|gen-q|45~1_combout\ : std_logic;
SIGNAL \on_som|gen_sm~1_combout\ : std_logic;
SIGNAL \on_som|gen-q|45~3_combout\ : std_logic;
SIGNAL \on_som|gen-q|45~0_combout\ : std_logic;
SIGNAL \on_som|gen-q|45~0clkctrl_outclk\ : std_logic;
SIGNAL \on_som|gen-q|45~_emulated_q\ : std_logic;
SIGNAL \on_som|gen-q|45~2_combout\ : std_logic;
SIGNAL \s_int|si~0_combout\ : std_logic;
SIGNAL \on_som|gen-q|55~2_combout\ : std_logic;
SIGNAL \on_som|gen-q|55~3_combout\ : std_logic;
SIGNAL \on_som|gen-q|44~1_combout\ : std_logic;
SIGNAL \on_som|gen-q|44~_emulated_q\ : std_logic;
SIGNAL \on_som|gen-q|44~0_combout\ : std_logic;
SIGNAL \s_fix|sf[6]~0_combout\ : std_logic;
SIGNAL \on_som|gen-q|55~0_combout\ : std_logic;
SIGNAL \gen-leds[5]~0_combout\ : std_logic;
SIGNAL \gen-leds[5]~1_combout\ : std_logic;
SIGNAL \s_fix|sf[4]~1_combout\ : std_logic;
SIGNAL \on_som|gen-q|55~1_combout\ : std_logic;
SIGNAL \gen-leds[3]~2_combout\ : std_logic;
SIGNAL \s_fix|sf[2]~2_combout\ : std_logic;
SIGNAL \gen-leds[1]~3_combout\ : std_logic;
SIGNAL \gen-leds[1]~4_combout\ : std_logic;
SIGNAL \s_fix|sf[0]~3_combout\ : std_logic;
SIGNAL \gen-leds\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \divf|divlimit\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \on_som|gen-q|ALT_INV_97~combout\ : std_logic;
SIGNAL \on_som|gen-q|ALT_INV_45~0clkctrl_outclk\ : std_logic;

BEGIN

led <= ww_led;
ww_clk_hf <= clk_hf;
ww_ne_final <= ne_final;
ww_ne_origen <= ne_origen;
ww_nsensor <= nsensor;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\on_som|gen-q|45~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \on_som|gen-q|45~0_combout\);

\gen-sensorf~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \gen-sensorf~q\);

\clk_hf~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_hf~input_o\);
\on_som|gen-q|ALT_INV_97~combout\ <= NOT \on_som|gen-q|97~combout\;
\on_som|gen-q|ALT_INV_45~0clkctrl_outclk\ <= NOT \on_som|gen-q|45~0clkctrl_outclk\;

-- Location: IOOBUF_X0_Y26_N23
\led[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen-leds\(6),
	devoe => ww_devoe,
	o => \led[6]~output_o\);

-- Location: IOOBUF_X0_Y24_N16
\led[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen-leds[5]~1_combout\,
	devoe => ww_devoe,
	o => \led[5]~output_o\);

-- Location: IOOBUF_X0_Y24_N23
\led[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen-leds\(4),
	devoe => ww_devoe,
	o => \led[4]~output_o\);

-- Location: IOOBUF_X0_Y21_N16
\led[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen-leds[3]~2_combout\,
	devoe => ww_devoe,
	o => \led[3]~output_o\);

-- Location: IOOBUF_X0_Y21_N23
\led[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen-leds\(2),
	devoe => ww_devoe,
	o => \led[2]~output_o\);

-- Location: IOOBUF_X0_Y20_N2
\led[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen-leds[1]~4_combout\,
	devoe => ww_devoe,
	o => \led[1]~output_o\);

-- Location: IOOBUF_X0_Y20_N9
\led[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen-leds\(0),
	devoe => ww_devoe,
	o => \led[0]~output_o\);

-- Location: IOIBUF_X41_Y15_N1
\clk_hf~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_hf,
	o => \clk_hf~input_o\);

-- Location: CLKCTRL_G9
\clk_hf~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_hf~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_hf~inputclkctrl_outclk\);

-- Location: LCCOMB_X22_Y15_N8
\divf|Add0~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divf|Add0~32_combout\ = (\divf|divlimit\(16) & (!\divf|Add0~31\ & VCC)) # (!\divf|divlimit\(16) & (\divf|Add0~31\ $ (GND)))
-- \divf|Add0~33\ = CARRY((!\divf|divlimit\(16) & !\divf|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divf|divlimit\(16),
	datad => VCC,
	cin => \divf|Add0~31\,
	combout => \divf|Add0~32_combout\,
	cout => \divf|Add0~33\);

-- Location: LCCOMB_X22_Y15_N10
\divf|Add0~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divf|Add0~34_combout\ = (\divf|divlimit\(17) & ((\divf|Add0~33\) # (GND))) # (!\divf|divlimit\(17) & (!\divf|Add0~33\))
-- \divf|Add0~35\ = CARRY((\divf|divlimit\(17)) # (!\divf|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divf|divlimit\(17),
	datad => VCC,
	cin => \divf|Add0~33\,
	combout => \divf|Add0~34_combout\,
	cout => \divf|Add0~35\);

-- Location: LCCOMB_X22_Y15_N24
\divf|divlimit[17]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divf|divlimit[17]~33_combout\ = !\divf|Add0~34_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \divf|Add0~34_combout\,
	combout => \divf|divlimit[17]~33_combout\);

-- Location: FF_X22_Y15_N25
\divf|divlimit[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_hf~inputclkctrl_outclk\,
	d => \divf|divlimit[17]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divf|divlimit\(17));

-- Location: LCCOMB_X22_Y15_N12
\divf|Add0~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divf|Add0~36_combout\ = (\divf|divlimit\(18) & (!\divf|Add0~35\ & VCC)) # (!\divf|divlimit\(18) & (\divf|Add0~35\ $ (GND)))
-- \divf|Add0~37\ = CARRY((!\divf|divlimit\(18) & !\divf|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divf|divlimit\(18),
	datad => VCC,
	cin => \divf|Add0~35\,
	combout => \divf|Add0~36_combout\,
	cout => \divf|Add0~37\);

-- Location: LCCOMB_X22_Y15_N28
\divf|divlimit~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divf|divlimit~12_combout\ = ((\divf|Equal0~4_combout\ & (\divf|Equal0~6_combout\ & \divf|Equal0~5_combout\))) # (!\divf|Add0~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divf|Equal0~4_combout\,
	datab => \divf|Add0~36_combout\,
	datac => \divf|Equal0~6_combout\,
	datad => \divf|Equal0~5_combout\,
	combout => \divf|divlimit~12_combout\);

-- Location: FF_X22_Y15_N29
\divf|divlimit[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_hf~inputclkctrl_outclk\,
	d => \divf|divlimit~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divf|divlimit\(18));

-- Location: LCCOMB_X22_Y15_N14
\divf|Add0~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divf|Add0~38_combout\ = (\divf|divlimit\(19) & ((\divf|Add0~37\) # (GND))) # (!\divf|divlimit\(19) & (!\divf|Add0~37\))
-- \divf|Add0~39\ = CARRY((\divf|divlimit\(19)) # (!\divf|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divf|divlimit\(19),
	datad => VCC,
	cin => \divf|Add0~37\,
	combout => \divf|Add0~38_combout\,
	cout => \divf|Add0~39\);

-- Location: LCCOMB_X22_Y15_N26
\divf|divlimit[19]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divf|divlimit[19]~34_combout\ = !\divf|Add0~38_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \divf|Add0~38_combout\,
	combout => \divf|divlimit[19]~34_combout\);

-- Location: FF_X22_Y15_N27
\divf|divlimit[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_hf~inputclkctrl_outclk\,
	d => \divf|divlimit[19]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divf|divlimit\(19));

-- Location: LCCOMB_X22_Y15_N16
\divf|Add0~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divf|Add0~40_combout\ = (\divf|divlimit\(20) & (!\divf|Add0~39\ & VCC)) # (!\divf|divlimit\(20) & (\divf|Add0~39\ $ (GND)))
-- \divf|Add0~41\ = CARRY((!\divf|divlimit\(20) & !\divf|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divf|divlimit\(20),
	datad => VCC,
	cin => \divf|Add0~39\,
	combout => \divf|Add0~40_combout\,
	cout => \divf|Add0~41\);

-- Location: LCCOMB_X22_Y11_N24
\divf|divlimit[20]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divf|divlimit[20]~36_combout\ = !\divf|Add0~40_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \divf|Add0~40_combout\,
	combout => \divf|divlimit[20]~36_combout\);

-- Location: FF_X22_Y11_N25
\divf|divlimit[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_hf~inputclkctrl_outclk\,
	d => \divf|divlimit[20]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divf|divlimit\(20));

-- Location: LCCOMB_X22_Y15_N18
\divf|Add0~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divf|Add0~42_combout\ = (\divf|divlimit\(21) & ((\divf|Add0~41\) # (GND))) # (!\divf|divlimit\(21) & (!\divf|Add0~41\))
-- \divf|Add0~43\ = CARRY((\divf|divlimit\(21)) # (!\divf|Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divf|divlimit\(21),
	datad => VCC,
	cin => \divf|Add0~41\,
	combout => \divf|Add0~42_combout\,
	cout => \divf|Add0~43\);

-- Location: LCCOMB_X21_Y16_N22
\divf|divlimit~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divf|divlimit~13_combout\ = ((\divf|Equal0~4_combout\ & (\divf|Equal0~6_combout\ & \divf|Equal0~5_combout\))) # (!\divf|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divf|Equal0~4_combout\,
	datab => \divf|Equal0~6_combout\,
	datac => \divf|Add0~42_combout\,
	datad => \divf|Equal0~5_combout\,
	combout => \divf|divlimit~13_combout\);

-- Location: FF_X21_Y16_N23
\divf|divlimit[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_hf~inputclkctrl_outclk\,
	d => \divf|divlimit~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divf|divlimit\(21));

-- Location: LCCOMB_X22_Y15_N20
\divf|Add0~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divf|Add0~44_combout\ = (\divf|divlimit\(22) & (!\divf|Add0~43\ & VCC)) # (!\divf|divlimit\(22) & (\divf|Add0~43\ $ (GND)))
-- \divf|Add0~45\ = CARRY((!\divf|divlimit\(22) & !\divf|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divf|divlimit\(22),
	datad => VCC,
	cin => \divf|Add0~43\,
	combout => \divf|Add0~44_combout\,
	cout => \divf|Add0~45\);

-- Location: LCCOMB_X21_Y16_N24
\divf|divlimit~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divf|divlimit~14_combout\ = ((\divf|Equal0~4_combout\ & (\divf|Equal0~6_combout\ & \divf|Equal0~5_combout\))) # (!\divf|Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divf|Equal0~4_combout\,
	datab => \divf|Equal0~6_combout\,
	datac => \divf|Add0~44_combout\,
	datad => \divf|Equal0~5_combout\,
	combout => \divf|divlimit~14_combout\);

-- Location: FF_X21_Y16_N25
\divf|divlimit[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_hf~inputclkctrl_outclk\,
	d => \divf|divlimit~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divf|divlimit\(22));

-- Location: LCCOMB_X22_Y15_N22
\divf|Add0~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divf|Add0~46_combout\ = \divf|divlimit\(23) $ (!\divf|Add0~45\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divf|divlimit\(23),
	cin => \divf|Add0~45\,
	combout => \divf|Add0~46_combout\);

-- Location: LCCOMB_X21_Y16_N14
\divf|divlimit~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divf|divlimit~15_combout\ = ((\divf|Equal0~4_combout\ & (\divf|Equal0~6_combout\ & \divf|Equal0~5_combout\))) # (!\divf|Add0~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divf|Equal0~4_combout\,
	datab => \divf|Equal0~6_combout\,
	datac => \divf|Add0~46_combout\,
	datad => \divf|Equal0~5_combout\,
	combout => \divf|divlimit~15_combout\);

-- Location: FF_X21_Y16_N15
\divf|divlimit[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_hf~inputclkctrl_outclk\,
	d => \divf|divlimit~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divf|divlimit\(23));

-- Location: LCCOMB_X21_Y16_N4
\divf|Equal0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divf|Equal0~6_combout\ = (!\divf|divlimit\(21) & (!\divf|divlimit\(22) & (!\divf|divlimit\(23) & \divf|divlimit\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divf|divlimit\(21),
	datab => \divf|divlimit\(22),
	datac => \divf|divlimit\(23),
	datad => \divf|divlimit\(20),
	combout => \divf|Equal0~6_combout\);

-- Location: LCCOMB_X22_Y15_N0
\divf|Add0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divf|Add0~24_combout\ = (\divf|divlimit\(12) & (!\divf|Add0~23\ & VCC)) # (!\divf|divlimit\(12) & (\divf|Add0~23\ $ (GND)))
-- \divf|Add0~25\ = CARRY((!\divf|divlimit\(12) & !\divf|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divf|divlimit\(12),
	datad => VCC,
	cin => \divf|Add0~23\,
	combout => \divf|Add0~24_combout\,
	cout => \divf|Add0~25\);

-- Location: LCCOMB_X22_Y15_N2
\divf|Add0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divf|Add0~26_combout\ = (\divf|divlimit\(13) & ((\divf|Add0~25\) # (GND))) # (!\divf|divlimit\(13) & (!\divf|Add0~25\))
-- \divf|Add0~27\ = CARRY((\divf|divlimit\(13)) # (!\divf|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divf|divlimit\(13),
	datad => VCC,
	cin => \divf|Add0~25\,
	combout => \divf|Add0~26_combout\,
	cout => \divf|Add0~27\);

-- Location: LCCOMB_X21_Y16_N28
\divf|divlimit~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divf|divlimit~9_combout\ = ((\divf|Equal0~4_combout\ & (\divf|Equal0~5_combout\ & \divf|Equal0~6_combout\))) # (!\divf|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divf|Equal0~4_combout\,
	datab => \divf|Equal0~5_combout\,
	datac => \divf|Equal0~6_combout\,
	datad => \divf|Add0~26_combout\,
	combout => \divf|divlimit~9_combout\);

-- Location: FF_X21_Y16_N29
\divf|divlimit[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_hf~inputclkctrl_outclk\,
	d => \divf|divlimit~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divf|divlimit\(13));

-- Location: LCCOMB_X22_Y15_N4
\divf|Add0~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divf|Add0~28_combout\ = (\divf|divlimit\(14) & (!\divf|Add0~27\ & VCC)) # (!\divf|divlimit\(14) & (\divf|Add0~27\ $ (GND)))
-- \divf|Add0~29\ = CARRY((!\divf|divlimit\(14) & !\divf|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divf|divlimit\(14),
	datad => VCC,
	cin => \divf|Add0~27\,
	combout => \divf|Add0~28_combout\,
	cout => \divf|Add0~29\);

-- Location: LCCOMB_X21_Y16_N30
\divf|divlimit~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divf|divlimit~10_combout\ = ((\divf|Equal0~4_combout\ & (\divf|Equal0~6_combout\ & \divf|Equal0~5_combout\))) # (!\divf|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divf|Equal0~4_combout\,
	datab => \divf|Add0~28_combout\,
	datac => \divf|Equal0~6_combout\,
	datad => \divf|Equal0~5_combout\,
	combout => \divf|divlimit~10_combout\);

-- Location: FF_X21_Y16_N31
\divf|divlimit[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_hf~inputclkctrl_outclk\,
	d => \divf|divlimit~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divf|divlimit\(14));

-- Location: LCCOMB_X22_Y15_N6
\divf|Add0~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divf|Add0~30_combout\ = (\divf|divlimit\(15) & ((\divf|Add0~29\) # (GND))) # (!\divf|divlimit\(15) & (!\divf|Add0~29\))
-- \divf|Add0~31\ = CARRY((\divf|divlimit\(15)) # (!\divf|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divf|divlimit\(15),
	datad => VCC,
	cin => \divf|Add0~29\,
	combout => \divf|Add0~30_combout\,
	cout => \divf|Add0~31\);

-- Location: LCCOMB_X21_Y16_N18
\divf|divlimit~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divf|divlimit~11_combout\ = ((\divf|Equal0~4_combout\ & (\divf|Equal0~6_combout\ & \divf|Equal0~5_combout\))) # (!\divf|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divf|Equal0~4_combout\,
	datab => \divf|Add0~30_combout\,
	datac => \divf|Equal0~6_combout\,
	datad => \divf|Equal0~5_combout\,
	combout => \divf|divlimit~11_combout\);

-- Location: FF_X21_Y16_N19
\divf|divlimit[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_hf~inputclkctrl_outclk\,
	d => \divf|divlimit~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divf|divlimit\(15));

-- Location: LCCOMB_X27_Y13_N0
\divf|divlimit[16]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divf|divlimit[16]~32_combout\ = !\divf|Add0~32_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \divf|Add0~32_combout\,
	combout => \divf|divlimit[16]~32_combout\);

-- Location: FF_X27_Y13_N1
\divf|divlimit[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_hf~inputclkctrl_outclk\,
	d => \divf|divlimit[16]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divf|divlimit\(16));

-- Location: LCCOMB_X22_Y15_N30
\divf|Equal0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divf|Equal0~5_combout\ = (\divf|divlimit\(16) & (!\divf|divlimit\(18) & (\divf|divlimit\(19) & \divf|divlimit\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divf|divlimit\(16),
	datab => \divf|divlimit\(18),
	datac => \divf|divlimit\(19),
	datad => \divf|divlimit\(17),
	combout => \divf|Equal0~5_combout\);

-- Location: LCCOMB_X22_Y16_N8
\divf|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divf|Add0~0_combout\ = \divf|divlimit\(0) $ (GND)
-- \divf|Add0~1\ = CARRY(!\divf|divlimit\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \divf|divlimit\(0),
	datad => VCC,
	combout => \divf|Add0~0_combout\,
	cout => \divf|Add0~1\);

-- Location: LCCOMB_X22_Y16_N4
\divf|divlimit[0]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divf|divlimit[0]~27_combout\ = !\divf|Add0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \divf|Add0~0_combout\,
	combout => \divf|divlimit[0]~27_combout\);

-- Location: FF_X22_Y16_N5
\divf|divlimit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_hf~inputclkctrl_outclk\,
	d => \divf|divlimit[0]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divf|divlimit\(0));

-- Location: LCCOMB_X22_Y16_N10
\divf|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divf|Add0~2_combout\ = (\divf|divlimit\(1) & ((\divf|Add0~1\) # (GND))) # (!\divf|divlimit\(1) & (!\divf|Add0~1\))
-- \divf|Add0~3\ = CARRY((\divf|divlimit\(1)) # (!\divf|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divf|divlimit\(1),
	datad => VCC,
	cin => \divf|Add0~1\,
	combout => \divf|Add0~2_combout\,
	cout => \divf|Add0~3\);

-- Location: LCCOMB_X22_Y16_N2
\divf|divlimit[1]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divf|divlimit[1]~26_combout\ = !\divf|Add0~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \divf|Add0~2_combout\,
	combout => \divf|divlimit[1]~26_combout\);

-- Location: FF_X22_Y16_N3
\divf|divlimit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_hf~inputclkctrl_outclk\,
	d => \divf|divlimit[1]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divf|divlimit\(1));

-- Location: LCCOMB_X22_Y16_N12
\divf|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divf|Add0~4_combout\ = (\divf|divlimit\(2) & (!\divf|Add0~3\ & VCC)) # (!\divf|divlimit\(2) & (\divf|Add0~3\ $ (GND)))
-- \divf|Add0~5\ = CARRY((!\divf|divlimit\(2) & !\divf|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divf|divlimit\(2),
	datad => VCC,
	cin => \divf|Add0~3\,
	combout => \divf|Add0~4_combout\,
	cout => \divf|Add0~5\);

-- Location: LCCOMB_X24_Y19_N0
\divf|divlimit[2]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divf|divlimit[2]~25_combout\ = !\divf|Add0~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \divf|Add0~4_combout\,
	combout => \divf|divlimit[2]~25_combout\);

-- Location: FF_X24_Y19_N1
\divf|divlimit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_hf~inputclkctrl_outclk\,
	d => \divf|divlimit[2]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divf|divlimit\(2));

-- Location: LCCOMB_X22_Y16_N14
\divf|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divf|Add0~6_combout\ = (\divf|divlimit\(3) & ((\divf|Add0~5\) # (GND))) # (!\divf|divlimit\(3) & (!\divf|Add0~5\))
-- \divf|Add0~7\ = CARRY((\divf|divlimit\(3)) # (!\divf|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divf|divlimit\(3),
	datad => VCC,
	cin => \divf|Add0~5\,
	combout => \divf|Add0~6_combout\,
	cout => \divf|Add0~7\);

-- Location: LCCOMB_X23_Y17_N4
\divf|divlimit[3]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divf|divlimit[3]~23_combout\ = !\divf|Add0~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \divf|Add0~6_combout\,
	combout => \divf|divlimit[3]~23_combout\);

-- Location: FF_X23_Y17_N5
\divf|divlimit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_hf~inputclkctrl_outclk\,
	d => \divf|divlimit[3]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divf|divlimit\(3));

-- Location: LCCOMB_X22_Y16_N16
\divf|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divf|Add0~8_combout\ = (\divf|divlimit\(4) & (!\divf|Add0~7\ & VCC)) # (!\divf|divlimit\(4) & (\divf|Add0~7\ $ (GND)))
-- \divf|Add0~9\ = CARRY((!\divf|divlimit\(4) & !\divf|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divf|divlimit\(4),
	datad => VCC,
	cin => \divf|Add0~7\,
	combout => \divf|Add0~8_combout\,
	cout => \divf|Add0~9\);

-- Location: LCCOMB_X23_Y17_N26
\divf|divlimit[4]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divf|divlimit[4]~22_combout\ = !\divf|Add0~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \divf|Add0~8_combout\,
	combout => \divf|divlimit[4]~22_combout\);

-- Location: FF_X23_Y17_N27
\divf|divlimit[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_hf~inputclkctrl_outclk\,
	d => \divf|divlimit[4]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divf|divlimit\(4));

-- Location: LCCOMB_X22_Y16_N18
\divf|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divf|Add0~10_combout\ = (\divf|divlimit\(5) & ((\divf|Add0~9\) # (GND))) # (!\divf|divlimit\(5) & (!\divf|Add0~9\))
-- \divf|Add0~11\ = CARRY((\divf|divlimit\(5)) # (!\divf|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divf|divlimit\(5),
	datad => VCC,
	cin => \divf|Add0~9\,
	combout => \divf|Add0~10_combout\,
	cout => \divf|Add0~11\);

-- Location: LCCOMB_X23_Y17_N16
\divf|divlimit[5]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divf|divlimit[5]~21_combout\ = !\divf|Add0~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \divf|Add0~10_combout\,
	combout => \divf|divlimit[5]~21_combout\);

-- Location: FF_X23_Y17_N17
\divf|divlimit[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_hf~inputclkctrl_outclk\,
	d => \divf|divlimit[5]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divf|divlimit\(5));

-- Location: LCCOMB_X22_Y16_N20
\divf|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divf|Add0~12_combout\ = (\divf|divlimit\(6) & (!\divf|Add0~11\ & VCC)) # (!\divf|divlimit\(6) & (\divf|Add0~11\ $ (GND)))
-- \divf|Add0~13\ = CARRY((!\divf|divlimit\(6) & !\divf|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divf|divlimit\(6),
	datad => VCC,
	cin => \divf|Add0~11\,
	combout => \divf|Add0~12_combout\,
	cout => \divf|Add0~13\);

-- Location: LCCOMB_X21_Y16_N6
\divf|divlimit~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divf|divlimit~8_combout\ = ((\divf|Equal0~4_combout\ & (\divf|Equal0~6_combout\ & \divf|Equal0~5_combout\))) # (!\divf|Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divf|Equal0~4_combout\,
	datab => \divf|Equal0~6_combout\,
	datac => \divf|Add0~12_combout\,
	datad => \divf|Equal0~5_combout\,
	combout => \divf|divlimit~8_combout\);

-- Location: FF_X21_Y16_N7
\divf|divlimit[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_hf~inputclkctrl_outclk\,
	d => \divf|divlimit~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divf|divlimit\(6));

-- Location: LCCOMB_X22_Y16_N22
\divf|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divf|Add0~14_combout\ = (\divf|divlimit\(7) & ((\divf|Add0~13\) # (GND))) # (!\divf|divlimit\(7) & (!\divf|Add0~13\))
-- \divf|Add0~15\ = CARRY((\divf|divlimit\(7)) # (!\divf|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divf|divlimit\(7),
	datad => VCC,
	cin => \divf|Add0~13\,
	combout => \divf|Add0~14_combout\,
	cout => \divf|Add0~15\);

-- Location: LCCOMB_X21_Y16_N16
\divf|divlimit~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divf|divlimit~7_combout\ = ((\divf|Equal0~4_combout\ & (\divf|Equal0~5_combout\ & \divf|Equal0~6_combout\))) # (!\divf|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divf|Equal0~4_combout\,
	datab => \divf|Equal0~5_combout\,
	datac => \divf|Equal0~6_combout\,
	datad => \divf|Add0~14_combout\,
	combout => \divf|divlimit~7_combout\);

-- Location: FF_X21_Y16_N17
\divf|divlimit[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_hf~inputclkctrl_outclk\,
	d => \divf|divlimit~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divf|divlimit\(7));

-- Location: LCCOMB_X22_Y16_N24
\divf|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divf|Add0~16_combout\ = (\divf|divlimit\(8) & (!\divf|Add0~15\ & VCC)) # (!\divf|divlimit\(8) & (\divf|Add0~15\ $ (GND)))
-- \divf|Add0~17\ = CARRY((!\divf|divlimit\(8) & !\divf|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divf|divlimit\(8),
	datad => VCC,
	cin => \divf|Add0~15\,
	combout => \divf|Add0~16_combout\,
	cout => \divf|Add0~17\);

-- Location: LCCOMB_X21_Y16_N20
\divf|divlimit~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divf|divlimit~6_combout\ = ((\divf|Equal0~4_combout\ & (\divf|Equal0~5_combout\ & \divf|Equal0~6_combout\))) # (!\divf|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divf|Equal0~4_combout\,
	datab => \divf|Equal0~5_combout\,
	datac => \divf|Equal0~6_combout\,
	datad => \divf|Add0~16_combout\,
	combout => \divf|divlimit~6_combout\);

-- Location: FF_X21_Y16_N21
\divf|divlimit[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_hf~inputclkctrl_outclk\,
	d => \divf|divlimit~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divf|divlimit\(8));

-- Location: LCCOMB_X22_Y16_N26
\divf|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divf|Add0~18_combout\ = (\divf|divlimit\(9) & ((\divf|Add0~17\) # (GND))) # (!\divf|divlimit\(9) & (!\divf|Add0~17\))
-- \divf|Add0~19\ = CARRY((\divf|divlimit\(9)) # (!\divf|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divf|divlimit\(9),
	datad => VCC,
	cin => \divf|Add0~17\,
	combout => \divf|Add0~18_combout\,
	cout => \divf|Add0~19\);

-- Location: LCCOMB_X22_Y12_N24
\divf|divlimit[9]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divf|divlimit[9]~17_combout\ = !\divf|Add0~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \divf|Add0~18_combout\,
	combout => \divf|divlimit[9]~17_combout\);

-- Location: FF_X22_Y12_N25
\divf|divlimit[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_hf~inputclkctrl_outclk\,
	d => \divf|divlimit[9]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divf|divlimit\(9));

-- Location: LCCOMB_X22_Y16_N28
\divf|Add0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divf|Add0~20_combout\ = (\divf|divlimit\(10) & (!\divf|Add0~19\ & VCC)) # (!\divf|divlimit\(10) & (\divf|Add0~19\ $ (GND)))
-- \divf|Add0~21\ = CARRY((!\divf|divlimit\(10) & !\divf|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divf|divlimit\(10),
	datad => VCC,
	cin => \divf|Add0~19\,
	combout => \divf|Add0~20_combout\,
	cout => \divf|Add0~21\);

-- Location: LCCOMB_X21_Y16_N26
\divf|divlimit[10]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divf|divlimit[10]~16_combout\ = !\divf|Add0~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \divf|Add0~20_combout\,
	combout => \divf|divlimit[10]~16_combout\);

-- Location: FF_X21_Y16_N27
\divf|divlimit[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_hf~inputclkctrl_outclk\,
	d => \divf|divlimit[10]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divf|divlimit\(10));

-- Location: LCCOMB_X22_Y16_N30
\divf|Add0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divf|Add0~22_combout\ = (\divf|divlimit\(11) & ((\divf|Add0~21\) # (GND))) # (!\divf|divlimit\(11) & (!\divf|Add0~21\))
-- \divf|Add0~23\ = CARRY((\divf|divlimit\(11)) # (!\divf|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divf|divlimit\(11),
	datad => VCC,
	cin => \divf|Add0~21\,
	combout => \divf|Add0~22_combout\,
	cout => \divf|Add0~23\);

-- Location: LCCOMB_X22_Y16_N0
\divf|divlimit[11]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divf|divlimit[11]~24_combout\ = !\divf|Add0~22_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \divf|Add0~22_combout\,
	combout => \divf|divlimit[11]~24_combout\);

-- Location: FF_X22_Y16_N1
\divf|divlimit[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_hf~inputclkctrl_outclk\,
	d => \divf|divlimit[11]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divf|divlimit\(11));

-- Location: LCCOMB_X22_Y14_N0
\divf|divlimit[12]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divf|divlimit[12]~28_combout\ = !\divf|Add0~24_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \divf|Add0~24_combout\,
	combout => \divf|divlimit[12]~28_combout\);

-- Location: FF_X22_Y14_N1
\divf|divlimit[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_hf~inputclkctrl_outclk\,
	d => \divf|divlimit[12]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divf|divlimit\(12));

-- Location: LCCOMB_X21_Y16_N12
\divf|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divf|Equal0~3_combout\ = (\divf|divlimit\(12) & (!\divf|divlimit\(15) & (!\divf|divlimit\(14) & !\divf|divlimit\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divf|divlimit\(12),
	datab => \divf|divlimit\(15),
	datac => \divf|divlimit\(14),
	datad => \divf|divlimit\(13),
	combout => \divf|Equal0~3_combout\);

-- Location: LCCOMB_X21_Y16_N2
\divf|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divf|Equal0~0_combout\ = (!\divf|divlimit\(7) & (!\divf|divlimit\(8) & (\divf|divlimit\(10) & \divf|divlimit\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divf|divlimit\(7),
	datab => \divf|divlimit\(8),
	datac => \divf|divlimit\(10),
	datad => \divf|divlimit\(9),
	combout => \divf|Equal0~0_combout\);

-- Location: LCCOMB_X23_Y17_N30
\divf|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divf|Equal0~1_combout\ = (!\divf|divlimit\(4) & (\divf|divlimit\(6) & (!\divf|divlimit\(3) & !\divf|divlimit\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divf|divlimit\(4),
	datab => \divf|divlimit\(6),
	datac => \divf|divlimit\(3),
	datad => \divf|divlimit\(5),
	combout => \divf|Equal0~1_combout\);

-- Location: LCCOMB_X22_Y16_N6
\divf|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divf|Equal0~2_combout\ = (!\divf|divlimit\(1) & (\divf|divlimit\(11) & (!\divf|divlimit\(0) & !\divf|divlimit\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divf|divlimit\(1),
	datab => \divf|divlimit\(11),
	datac => \divf|divlimit\(0),
	datad => \divf|divlimit\(2),
	combout => \divf|Equal0~2_combout\);

-- Location: LCCOMB_X21_Y16_N10
\divf|Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divf|Equal0~4_combout\ = (\divf|Equal0~3_combout\ & (\divf|Equal0~0_combout\ & (\divf|Equal0~1_combout\ & \divf|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divf|Equal0~3_combout\,
	datab => \divf|Equal0~0_combout\,
	datac => \divf|Equal0~1_combout\,
	datad => \divf|Equal0~2_combout\,
	combout => \divf|Equal0~4_combout\);

-- Location: LCCOMB_X21_Y16_N0
\divf|div2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \divf|div2~0_combout\ = \divf|div2~q\ $ (((\divf|Equal0~4_combout\ & (\divf|Equal0~6_combout\ & \divf|Equal0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divf|Equal0~4_combout\,
	datab => \divf|Equal0~6_combout\,
	datac => \divf|div2~q\,
	datad => \divf|Equal0~5_combout\,
	combout => \divf|div2~0_combout\);

-- Location: FF_X21_Y16_N1
\divf|div2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_hf~inputclkctrl_outclk\,
	d => \divf|div2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divf|div2~q\);

-- Location: IOIBUF_X0_Y23_N15
\nsensor~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nsensor,
	o => \nsensor~input_o\);

-- Location: LCCOMB_X21_Y16_N8
\gen-sensorf~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gen-sensorf~0_combout\ = !\nsensor~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \nsensor~input_o\,
	combout => \gen-sensorf~0_combout\);

-- Location: FF_X21_Y16_N9
\gen-sensorf\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divf|div2~q\,
	d => \gen-sensorf~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen-sensorf~q\);

-- Location: CLKCTRL_G10
\gen-sensorf~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \gen-sensorf~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \gen-sensorf~clkctrl_outclk\);

-- Location: LCCOMB_X5_Y23_N0
\on_som|gen-q|46~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \on_som|gen-q|46~0_combout\ = !\on_som|gen-q|46~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \on_som|gen-q|46~q\,
	combout => \on_som|gen-q|46~0_combout\);

-- Location: IOIBUF_X0_Y21_N8
\ne_origen~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ne_origen,
	o => \ne_origen~input_o\);

-- Location: IOIBUF_X0_Y23_N1
\ne_final~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ne_final,
	o => \ne_final~input_o\);

-- Location: LCCOMB_X5_Y23_N2
\on_som|gen-q|97\ : cycloneiii_lcell_comb
-- Equation(s):
-- \on_som|gen-q|97~combout\ = (!\ne_final~input_o\) # (!\ne_origen~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ne_origen~input_o\,
	datad => \ne_final~input_o\,
	combout => \on_som|gen-q|97~combout\);

-- Location: FF_X5_Y23_N1
\on_som|gen-q|46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen-sensorf~clkctrl_outclk\,
	d => \on_som|gen-q|46~0_combout\,
	clrn => \on_som|gen-q|ALT_INV_97~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \on_som|gen-q|46~q\);

-- Location: LCCOMB_X5_Y23_N22
\on_som|gen-q|100\ : cycloneiii_lcell_comb
-- Equation(s):
-- \on_som|gen-q|100~combout\ = (\ne_origen~input_o\ & !\ne_final~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ne_origen~input_o\,
	datad => \ne_final~input_o\,
	combout => \on_som|gen-q|100~combout\);

-- Location: LCCOMB_X5_Y24_N30
\on_som|gen-q|45~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \on_som|gen-q|45~1_combout\ = (\ne_origen~input_o\ & ((\on_som|gen-q|45~1_combout\) # (\on_som|gen-q|100~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ne_origen~input_o\,
	datac => \on_som|gen-q|45~1_combout\,
	datad => \on_som|gen-q|100~combout\,
	combout => \on_som|gen-q|45~1_combout\);

-- Location: LCCOMB_X5_Y24_N8
\on_som|gen_sm~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \on_som|gen_sm~1_combout\ = (\ne_final~input_o\ & ((\on_som|gen_sm~1_combout\) # (!\ne_origen~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ne_origen~input_o\,
	datac => \ne_final~input_o\,
	datad => \on_som|gen_sm~1_combout\,
	combout => \on_som|gen_sm~1_combout\);

-- Location: LCCOMB_X5_Y24_N12
\on_som|gen-q|45~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \on_som|gen-q|45~3_combout\ = \on_som|gen-q|45~2_combout\ $ (\on_som|gen-q|46~q\ $ (\on_som|gen-q|45~1_combout\ $ (!\on_som|gen_sm~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \on_som|gen-q|45~2_combout\,
	datab => \on_som|gen-q|46~q\,
	datac => \on_som|gen-q|45~1_combout\,
	datad => \on_som|gen_sm~1_combout\,
	combout => \on_som|gen-q|45~3_combout\);

-- Location: LCCOMB_X5_Y23_N4
\on_som|gen-q|45~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \on_som|gen-q|45~0_combout\ = (\on_som|gen-q|100~combout\) # (!\ne_origen~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ne_origen~input_o\,
	datac => \on_som|gen-q|100~combout\,
	combout => \on_som|gen-q|45~0_combout\);

-- Location: CLKCTRL_G12
\on_som|gen-q|45~0clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \on_som|gen-q|45~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \on_som|gen-q|45~0clkctrl_outclk\);

-- Location: FF_X5_Y24_N13
\on_som|gen-q|45~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen-sensorf~clkctrl_outclk\,
	d => \on_som|gen-q|45~3_combout\,
	clrn => \on_som|gen-q|ALT_INV_45~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \on_som|gen-q|45~_emulated_q\);

-- Location: LCCOMB_X5_Y24_N6
\on_som|gen-q|45~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \on_som|gen-q|45~2_combout\ = (\ne_origen~input_o\ & ((\on_som|gen-q|100~combout\) # (\on_som|gen-q|45~1_combout\ $ (\on_som|gen-q|45~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ne_origen~input_o\,
	datab => \on_som|gen-q|100~combout\,
	datac => \on_som|gen-q|45~1_combout\,
	datad => \on_som|gen-q|45~_emulated_q\,
	combout => \on_som|gen-q|45~2_combout\);

-- Location: LCCOMB_X5_Y22_N0
\s_int|si~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_int|si~0_combout\ = (!\divf|div2~q\ & (!\on_som|gen-q|46~q\ & \on_som|gen-q|45~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divf|div2~q\,
	datac => \on_som|gen-q|46~q\,
	datad => \on_som|gen-q|45~2_combout\,
	combout => \s_int|si~0_combout\);

-- Location: LCCOMB_X5_Y24_N26
\on_som|gen-q|55~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \on_som|gen-q|55~2_combout\ = (!\on_som|gen-q|45~2_combout\ & (!\on_som|gen-q|46~q\ & !\on_som|gen_sm~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \on_som|gen-q|45~2_combout\,
	datab => \on_som|gen-q|46~q\,
	datad => \on_som|gen_sm~1_combout\,
	combout => \on_som|gen-q|55~2_combout\);

-- Location: LCCOMB_X5_Y24_N4
\on_som|gen-q|55~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \on_som|gen-q|55~3_combout\ = (\on_som|gen-q|45~2_combout\ & (\on_som|gen-q|46~q\ & \on_som|gen_sm~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \on_som|gen-q|45~2_combout\,
	datab => \on_som|gen-q|46~q\,
	datad => \on_som|gen_sm~1_combout\,
	combout => \on_som|gen-q|55~3_combout\);

-- Location: LCCOMB_X5_Y24_N16
\on_som|gen-q|44~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \on_som|gen-q|44~1_combout\ = \on_som|gen-q|45~1_combout\ $ (\on_som|gen-q|44~0_combout\ $ (((\on_som|gen-q|55~2_combout\) # (\on_som|gen-q|55~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \on_som|gen-q|55~2_combout\,
	datab => \on_som|gen-q|55~3_combout\,
	datac => \on_som|gen-q|45~1_combout\,
	datad => \on_som|gen-q|44~0_combout\,
	combout => \on_som|gen-q|44~1_combout\);

-- Location: FF_X5_Y24_N17
\on_som|gen-q|44~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen-sensorf~clkctrl_outclk\,
	d => \on_som|gen-q|44~1_combout\,
	clrn => \on_som|gen-q|ALT_INV_45~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \on_som|gen-q|44~_emulated_q\);

-- Location: LCCOMB_X5_Y24_N10
\on_som|gen-q|44~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \on_som|gen-q|44~0_combout\ = (\ne_origen~input_o\ & ((\on_som|gen-q|100~combout\) # (\on_som|gen-q|45~1_combout\ $ (\on_som|gen-q|44~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ne_origen~input_o\,
	datab => \on_som|gen-q|100~combout\,
	datac => \on_som|gen-q|45~1_combout\,
	datad => \on_som|gen-q|44~_emulated_q\,
	combout => \on_som|gen-q|44~0_combout\);

-- Location: LCCOMB_X5_Y22_N26
\s_fix|sf[6]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_fix|sf[6]~0_combout\ = (\on_som|gen-q|45~2_combout\ & ((\on_som|gen-q|44~0_combout\ & ((!\on_som|gen_sm~1_combout\) # (!\on_som|gen-q|46~q\))) # (!\on_som|gen-q|44~0_combout\ & ((\on_som|gen_sm~1_combout\))))) # (!\on_som|gen-q|45~2_combout\ & 
-- (((\on_som|gen_sm~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \on_som|gen-q|45~2_combout\,
	datab => \on_som|gen-q|44~0_combout\,
	datac => \on_som|gen-q|46~q\,
	datad => \on_som|gen_sm~1_combout\,
	combout => \s_fix|sf[6]~0_combout\);

-- Location: LCCOMB_X5_Y22_N20
\gen-leds[6]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gen-leds\(6) = ((\s_int|si~0_combout\ & \on_som|gen-q|44~0_combout\)) # (!\s_fix|sf[6]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_int|si~0_combout\,
	datac => \s_fix|sf[6]~0_combout\,
	datad => \on_som|gen-q|44~0_combout\,
	combout => \gen-leds\(6));

-- Location: LCCOMB_X5_Y24_N0
\on_som|gen-q|55~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \on_som|gen-q|55~0_combout\ = (!\on_som|gen-q|46~q\ & !\on_som|gen-q|45~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \on_som|gen-q|46~q\,
	datad => \on_som|gen-q|45~2_combout\,
	combout => \on_som|gen-q|55~0_combout\);

-- Location: LCCOMB_X5_Y22_N6
\gen-leds[5]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gen-leds[5]~0_combout\ = (\on_som|gen-q|45~2_combout\ & (((\on_som|gen_sm~1_combout\)))) # (!\on_som|gen-q|45~2_combout\ & (!\divf|div2~q\ & (\on_som|gen-q|46~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divf|div2~q\,
	datab => \on_som|gen-q|45~2_combout\,
	datac => \on_som|gen-q|46~q\,
	datad => \on_som|gen_sm~1_combout\,
	combout => \gen-leds[5]~0_combout\);

-- Location: LCCOMB_X5_Y24_N2
\gen-leds[5]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gen-leds[5]~1_combout\ = (\on_som|gen-q|44~0_combout\ & ((\gen-leds[5]~0_combout\) # ((!\on_som|gen_sm~1_combout\ & \on_som|gen-q|55~0_combout\)))) # (!\on_som|gen-q|44~0_combout\ & (!\on_som|gen_sm~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \on_som|gen_sm~1_combout\,
	datab => \on_som|gen-q|55~0_combout\,
	datac => \on_som|gen-q|44~0_combout\,
	datad => \gen-leds[5]~0_combout\,
	combout => \gen-leds[5]~1_combout\);

-- Location: LCCOMB_X5_Y24_N28
\s_fix|sf[4]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_fix|sf[4]~1_combout\ = (\on_som|gen-q|44~0_combout\ & (((!\on_som|gen-q|45~2_combout\ & !\on_som|gen-q|46~q\)) # (!\on_som|gen_sm~1_combout\))) # (!\on_som|gen-q|44~0_combout\ & (((\on_som|gen_sm~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \on_som|gen-q|45~2_combout\,
	datab => \on_som|gen-q|46~q\,
	datac => \on_som|gen-q|44~0_combout\,
	datad => \on_som|gen_sm~1_combout\,
	combout => \s_fix|sf[4]~1_combout\);

-- Location: LCCOMB_X5_Y24_N22
\gen-leds[4]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gen-leds\(4) = ((\on_som|gen-q|44~0_combout\ & (!\divf|div2~q\ & \on_som|gen-q|55~0_combout\))) # (!\s_fix|sf[4]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \on_som|gen-q|44~0_combout\,
	datab => \divf|div2~q\,
	datac => \s_fix|sf[4]~1_combout\,
	datad => \on_som|gen-q|55~0_combout\,
	combout => \gen-leds\(4));

-- Location: LCCOMB_X5_Y24_N24
\on_som|gen-q|55~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \on_som|gen-q|55~1_combout\ = (\on_som|gen-q|46~q\ & \on_som|gen-q|45~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \on_som|gen-q|46~q\,
	datad => \on_som|gen-q|45~2_combout\,
	combout => \on_som|gen-q|55~1_combout\);

-- Location: LCCOMB_X5_Y24_N18
\gen-leds[3]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gen-leds[3]~2_combout\ = (\on_som|gen-q|44~0_combout\ & (((\on_som|gen_sm~1_combout\)))) # (!\on_som|gen-q|44~0_combout\ & ((\on_som|gen-q|55~1_combout\ & ((!\divf|div2~q\))) # (!\on_som|gen-q|55~1_combout\ & (!\on_som|gen_sm~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000111100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \on_som|gen-q|44~0_combout\,
	datab => \on_som|gen-q|55~1_combout\,
	datac => \on_som|gen_sm~1_combout\,
	datad => \divf|div2~q\,
	combout => \gen-leds[3]~2_combout\);

-- Location: LCCOMB_X5_Y22_N24
\s_fix|sf[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_fix|sf[2]~2_combout\ = (\on_som|gen-q|45~2_combout\ & (((!\on_som|gen-q|44~0_combout\ & !\on_som|gen-q|46~q\)) # (!\on_som|gen_sm~1_combout\))) # (!\on_som|gen-q|45~2_combout\ & (\on_som|gen-q|44~0_combout\ $ (((\on_som|gen_sm~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \on_som|gen-q|45~2_combout\,
	datab => \on_som|gen-q|44~0_combout\,
	datac => \on_som|gen-q|46~q\,
	datad => \on_som|gen_sm~1_combout\,
	combout => \s_fix|sf[2]~2_combout\);

-- Location: LCCOMB_X5_Y22_N10
\gen-leds[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gen-leds\(2) = ((\s_int|si~0_combout\ & !\on_som|gen-q|44~0_combout\)) # (!\s_fix|sf[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_int|si~0_combout\,
	datac => \s_fix|sf[2]~2_combout\,
	datad => \on_som|gen-q|44~0_combout\,
	combout => \gen-leds\(2));

-- Location: LCCOMB_X5_Y22_N12
\gen-leds[1]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gen-leds[1]~3_combout\ = (\on_som|gen-q|46~q\ & (!\divf|div2~q\)) # (!\on_som|gen-q|46~q\ & ((!\on_som|gen_sm~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divf|div2~q\,
	datac => \on_som|gen-q|46~q\,
	datad => \on_som|gen_sm~1_combout\,
	combout => \gen-leds[1]~3_combout\);

-- Location: LCCOMB_X5_Y22_N30
\gen-leds[1]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gen-leds[1]~4_combout\ = (\on_som|gen-q|44~0_combout\ & (((\on_som|gen_sm~1_combout\)))) # (!\on_som|gen-q|44~0_combout\ & ((\on_som|gen-q|45~2_combout\ & ((\on_som|gen_sm~1_combout\))) # (!\on_som|gen-q|45~2_combout\ & (\gen-leds[1]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen-leds[1]~3_combout\,
	datab => \on_som|gen-q|44~0_combout\,
	datac => \on_som|gen-q|45~2_combout\,
	datad => \on_som|gen_sm~1_combout\,
	combout => \gen-leds[1]~4_combout\);

-- Location: LCCOMB_X5_Y24_N20
\s_fix|sf[0]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_fix|sf[0]~3_combout\ = (\on_som|gen_sm~1_combout\ & ((\on_som|gen-q|45~2_combout\) # ((\on_som|gen-q|46~q\) # (\on_som|gen-q|44~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \on_som|gen-q|45~2_combout\,
	datab => \on_som|gen-q|46~q\,
	datac => \on_som|gen-q|44~0_combout\,
	datad => \on_som|gen_sm~1_combout\,
	combout => \s_fix|sf[0]~3_combout\);

-- Location: LCCOMB_X5_Y24_N14
\gen-leds[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gen-leds\(0) = (\s_fix|sf[0]~3_combout\) # ((!\on_som|gen-q|44~0_combout\ & (\on_som|gen-q|55~0_combout\ & !\divf|div2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \on_som|gen-q|44~0_combout\,
	datab => \on_som|gen-q|55~0_combout\,
	datac => \s_fix|sf[0]~3_combout\,
	datad => \divf|div2~q\,
	combout => \gen-leds\(0));

ww_led(6) <= \led[6]~output_o\;

ww_led(5) <= \led[5]~output_o\;

ww_led(4) <= \led[4]~output_o\;

ww_led(3) <= \led[3]~output_o\;

ww_led(2) <= \led[2]~output_o\;

ww_led(1) <= \led[1]~output_o\;

ww_led(0) <= \led[0]~output_o\;
END structure;


