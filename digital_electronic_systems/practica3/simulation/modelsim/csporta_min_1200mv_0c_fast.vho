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

-- DATE "03/16/2019 16:18:40"

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

ENTITY 	csporta IS
    PORT (
	clk50m : IN std_logic;
	fci : IN std_logic;
	fca : IN std_logic;
	npob : IN std_logic;
	cmd : IN std_logic;
	pia : OUT std_logic;
	pai : OUT std_logic;
	enp : OUT std_logic;
	nledet : OUT std_logic
	);
END csporta;

-- Design Ports Information
-- pia	=>  Location: PIN_T15,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- pai	=>  Location: PIN_U15,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- enp	=>  Location: PIN_Y17,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- nledet	=>  Location: PIN_T12,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- fci	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fca	=>  Location: PIN_W15,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- cmd	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk50m	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- npob	=>  Location: PIN_V15,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default


ARCHITECTURE structure OF csporta IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk50m : std_logic;
SIGNAL ww_fci : std_logic;
SIGNAL ww_fca : std_logic;
SIGNAL ww_npob : std_logic;
SIGNAL ww_cmd : std_logic;
SIGNAL ww_pia : std_logic;
SIGNAL ww_pai : std_logic;
SIGNAL ww_enp : std_logic;
SIGNAL ww_nledet : std_logic;
SIGNAL \clk400~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk50m~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \pia~output_o\ : std_logic;
SIGNAL \pai~output_o\ : std_logic;
SIGNAL \enp~output_o\ : std_logic;
SIGNAL \nledet~output_o\ : std_logic;
SIGNAL \clk50m~input_o\ : std_logic;
SIGNAL \clk50m~inputclkctrl_outclk\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \divf1:cntdivf1[0]~q\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \divf1:cntdivf1[1]~q\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \cntdivf1~0_combout\ : std_logic;
SIGNAL \divf1:cntdivf1[2]~q\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \divf1:cntdivf1[3]~q\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \divf1:cntdivf1[4]~q\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \cntdivf1~1_combout\ : std_logic;
SIGNAL \divf1:cntdivf1[5]~q\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \divf1:cntdivf1[6]~q\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \divf1:cntdivf1[7]~q\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \divf1:cntdivf1[8]~q\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \divf1:cntdivf1[9]~q\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \cntdivf1~2_combout\ : std_logic;
SIGNAL \divf1:cntdivf1[10]~q\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \divf1:cntdivf1[11]~q\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \cntdivf1~3_combout\ : std_logic;
SIGNAL \divf1:cntdivf1[12]~q\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \cntdivf1~4_combout\ : std_logic;
SIGNAL \divf1:cntdivf1[13]~q\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \cntdivf1~5_combout\ : std_logic;
SIGNAL \divf1:cntdivf1[14]~q\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \cntdivf1~6_combout\ : std_logic;
SIGNAL \divf1:cntdivf1[15]~q\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \clk400~0_combout\ : std_logic;
SIGNAL \clk400~q\ : std_logic;
SIGNAL \clk400~clkctrl_outclk\ : std_logic;
SIGNAL \npob~input_o\ : std_logic;
SIGNAL \qpob~0_combout\ : std_logic;
SIGNAL \qpob~q\ : std_logic;
SIGNAL \cntfpob~2_combout\ : std_logic;
SIGNAL \filtpob:cntfpob[0]~q\ : std_logic;
SIGNAL \cntfpob~4_combout\ : std_logic;
SIGNAL \filtpob:cntfpob[1]~q\ : std_logic;
SIGNAL \filtpob~0_combout\ : std_logic;
SIGNAL \cntfpob~3_combout\ : std_logic;
SIGNAL \filtpob:cntfpob[2]~q\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \cntfpob~5_combout\ : std_logic;
SIGNAL \filtpob:cntfpob[3]~q\ : std_logic;
SIGNAL \qpobf~0_combout\ : std_logic;
SIGNAL \qpobf~1_combout\ : std_logic;
SIGNAL \qpobf~q\ : std_logic;
SIGNAL \fci~input_o\ : std_logic;
SIGNAL \qfci~q\ : std_logic;
SIGNAL \change_state:counter[0]~1_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \change_state~5_combout\ : std_logic;
SIGNAL \change_state:counter[10]~2\ : std_logic;
SIGNAL \change_state:counter[11]~1_combout\ : std_logic;
SIGNAL \fca~input_o\ : std_logic;
SIGNAL \qfca~q\ : std_logic;
SIGNAL \Selector5~1_combout\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \cmd~input_o\ : std_logic;
SIGNAL \qcmd~q\ : std_logic;
SIGNAL \state.s0~feeder_combout\ : std_logic;
SIGNAL \state.s0~q\ : std_logic;
SIGNAL \Selector2~5_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \LessThan3~0_combout\ : std_logic;
SIGNAL \Selector2~1_combout\ : std_logic;
SIGNAL \Selector2~2_combout\ : std_logic;
SIGNAL \Selector2~3_combout\ : std_logic;
SIGNAL \Selector2~4_combout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \Selector2~6_combout\ : std_logic;
SIGNAL \state.s2~q\ : std_logic;
SIGNAL \Selector5~5_combout\ : std_logic;
SIGNAL \Selector5~4_combout\ : std_logic;
SIGNAL \Selector5~6_combout\ : std_logic;
SIGNAL \Selector4~1_combout\ : std_logic;
SIGNAL \state.s4~q\ : std_logic;
SIGNAL \WideOr0~combout\ : std_logic;
SIGNAL \change_state:counter[11]~q\ : std_logic;
SIGNAL \change_state:counter[11]~2\ : std_logic;
SIGNAL \change_state:counter[12]~3_combout\ : std_logic;
SIGNAL \change_state:counter[12]~q\ : std_logic;
SIGNAL \change_state:counter[12]~4\ : std_logic;
SIGNAL \change_state:counter[13]~1_combout\ : std_logic;
SIGNAL \change_state:counter[13]~q\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \LessThan0~6_combout\ : std_logic;
SIGNAL \Selector2~7_combout\ : std_logic;
SIGNAL \Selector5~2_combout\ : std_logic;
SIGNAL \Selector5~3_combout\ : std_logic;
SIGNAL \Selector5~7_combout\ : std_logic;
SIGNAL \state.s5~q\ : std_logic;
SIGNAL \change_state:counter[12]~1_combout\ : std_logic;
SIGNAL \change_state:counter[12]~2_combout\ : std_logic;
SIGNAL \change_state:counter[0]~q\ : std_logic;
SIGNAL \change_state:counter[0]~2\ : std_logic;
SIGNAL \change_state:counter[1]~1_combout\ : std_logic;
SIGNAL \change_state:counter[1]~q\ : std_logic;
SIGNAL \change_state:counter[1]~2\ : std_logic;
SIGNAL \change_state:counter[2]~1_combout\ : std_logic;
SIGNAL \change_state:counter[2]~q\ : std_logic;
SIGNAL \change_state:counter[2]~2\ : std_logic;
SIGNAL \change_state:counter[3]~1_combout\ : std_logic;
SIGNAL \change_state:counter[3]~q\ : std_logic;
SIGNAL \change_state:counter[3]~2\ : std_logic;
SIGNAL \change_state:counter[4]~1_combout\ : std_logic;
SIGNAL \change_state:counter[4]~q\ : std_logic;
SIGNAL \change_state:counter[4]~2\ : std_logic;
SIGNAL \change_state:counter[5]~1_combout\ : std_logic;
SIGNAL \change_state:counter[5]~q\ : std_logic;
SIGNAL \change_state:counter[5]~2\ : std_logic;
SIGNAL \change_state:counter[6]~1_combout\ : std_logic;
SIGNAL \change_state:counter[6]~q\ : std_logic;
SIGNAL \change_state:counter[6]~2\ : std_logic;
SIGNAL \change_state:counter[7]~1_combout\ : std_logic;
SIGNAL \change_state:counter[7]~q\ : std_logic;
SIGNAL \change_state:counter[7]~2\ : std_logic;
SIGNAL \change_state:counter[8]~1_combout\ : std_logic;
SIGNAL \change_state:counter[8]~q\ : std_logic;
SIGNAL \change_state:counter[8]~2\ : std_logic;
SIGNAL \change_state:counter[9]~1_combout\ : std_logic;
SIGNAL \change_state:counter[9]~q\ : std_logic;
SIGNAL \change_state:counter[9]~2\ : std_logic;
SIGNAL \change_state:counter[10]~1_combout\ : std_logic;
SIGNAL \change_state:counter[10]~q\ : std_logic;
SIGNAL \change_state~1_combout\ : std_logic;
SIGNAL \change_state~2_combout\ : std_logic;
SIGNAL \change_state~3_combout\ : std_logic;
SIGNAL \change_state~0_combout\ : std_logic;
SIGNAL \change_state~4_combout\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \Selector3~1_combout\ : std_logic;
SIGNAL \Selector3~2_combout\ : std_logic;
SIGNAL \state.s3~q\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \Selector1~1_combout\ : std_logic;
SIGNAL \Selector1~2_combout\ : std_logic;
SIGNAL \Selector1~3_combout\ : std_logic;
SIGNAL \state.s1~q\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector5~0_combout\ : std_logic;

BEGIN

ww_clk50m <= clk50m;
ww_fci <= fci;
ww_fca <= fca;
ww_npob <= npob;
ww_cmd <= cmd;
pia <= ww_pia;
pai <= ww_pai;
enp <= ww_enp;
nledet <= ww_nledet;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk400~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk400~q\);

\clk50m~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk50m~input_o\);
\ALT_INV_Selector5~0_combout\ <= NOT \Selector5~0_combout\;

-- Location: IOOBUF_X32_Y0_N9
\pia~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \state.s1~q\,
	devoe => ww_devoe,
	o => \pia~output_o\);

-- Location: IOOBUF_X39_Y0_N30
\pai~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \state.s2~q\,
	devoe => ww_devoe,
	o => \pai~output_o\);

-- Location: IOOBUF_X35_Y0_N2
\enp~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Selector5~0_combout\,
	devoe => ww_devoe,
	o => \enp~output_o\);

-- Location: IOOBUF_X28_Y0_N30
\nledet~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \state.s3~q\,
	devoe => ww_devoe,
	o => \nledet~output_o\);

-- Location: IOIBUF_X41_Y15_N1
\clk50m~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk50m,
	o => \clk50m~input_o\);

-- Location: CLKCTRL_G9
\clk50m~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk50m~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk50m~inputclkctrl_outclk\);

-- Location: LCCOMB_X36_Y28_N0
\Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = \divf1:cntdivf1[0]~q\ $ (VCC)
-- \Add0~1\ = CARRY(\divf1:cntdivf1[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \divf1:cntdivf1[0]~q\,
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: FF_X36_Y28_N1
\divf1:cntdivf1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50m~inputclkctrl_outclk\,
	d => \Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divf1:cntdivf1[0]~q\);

-- Location: LCCOMB_X36_Y28_N2
\Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\divf1:cntdivf1[1]~q\ & (!\Add0~1\)) # (!\divf1:cntdivf1[1]~q\ & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!\divf1:cntdivf1[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divf1:cntdivf1[1]~q\,
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: FF_X36_Y28_N3
\divf1:cntdivf1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50m~inputclkctrl_outclk\,
	d => \Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divf1:cntdivf1[1]~q\);

-- Location: LCCOMB_X36_Y28_N4
\Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (\divf1:cntdivf1[2]~q\ & (\Add0~3\ $ (GND))) # (!\divf1:cntdivf1[2]~q\ & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((\divf1:cntdivf1[2]~q\ & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divf1:cntdivf1[2]~q\,
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X37_Y28_N10
\cntdivf1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cntdivf1~0_combout\ = (\Add0~4_combout\ & !\Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~4_combout\,
	datad => \Equal0~4_combout\,
	combout => \cntdivf1~0_combout\);

-- Location: FF_X37_Y28_N11
\divf1:cntdivf1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50m~inputclkctrl_outclk\,
	d => \cntdivf1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divf1:cntdivf1[2]~q\);

-- Location: LCCOMB_X36_Y28_N6
\Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (\divf1:cntdivf1[3]~q\ & (!\Add0~5\)) # (!\divf1:cntdivf1[3]~q\ & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!\divf1:cntdivf1[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divf1:cntdivf1[3]~q\,
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: FF_X36_Y28_N7
\divf1:cntdivf1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50m~inputclkctrl_outclk\,
	d => \Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divf1:cntdivf1[3]~q\);

-- Location: LCCOMB_X36_Y28_N8
\Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (\divf1:cntdivf1[4]~q\ & (\Add0~7\ $ (GND))) # (!\divf1:cntdivf1[4]~q\ & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((\divf1:cntdivf1[4]~q\ & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divf1:cntdivf1[4]~q\,
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: FF_X36_Y28_N9
\divf1:cntdivf1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50m~inputclkctrl_outclk\,
	d => \Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divf1:cntdivf1[4]~q\);

-- Location: LCCOMB_X36_Y28_N10
\Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (\divf1:cntdivf1[5]~q\ & (!\Add0~9\)) # (!\divf1:cntdivf1[5]~q\ & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!\divf1:cntdivf1[5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divf1:cntdivf1[5]~q\,
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X37_Y28_N4
\cntdivf1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cntdivf1~1_combout\ = (\Add0~10_combout\ & !\Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~10_combout\,
	datad => \Equal0~4_combout\,
	combout => \cntdivf1~1_combout\);

-- Location: FF_X37_Y28_N5
\divf1:cntdivf1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50m~inputclkctrl_outclk\,
	d => \cntdivf1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divf1:cntdivf1[5]~q\);

-- Location: LCCOMB_X36_Y28_N12
\Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (\divf1:cntdivf1[6]~q\ & (\Add0~11\ $ (GND))) # (!\divf1:cntdivf1[6]~q\ & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((\divf1:cntdivf1[6]~q\ & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divf1:cntdivf1[6]~q\,
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: FF_X36_Y28_N13
\divf1:cntdivf1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50m~inputclkctrl_outclk\,
	d => \Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divf1:cntdivf1[6]~q\);

-- Location: LCCOMB_X36_Y28_N14
\Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (\divf1:cntdivf1[7]~q\ & (!\Add0~13\)) # (!\divf1:cntdivf1[7]~q\ & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!\divf1:cntdivf1[7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divf1:cntdivf1[7]~q\,
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: FF_X36_Y28_N15
\divf1:cntdivf1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50m~inputclkctrl_outclk\,
	d => \Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divf1:cntdivf1[7]~q\);

-- Location: LCCOMB_X36_Y28_N16
\Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (\divf1:cntdivf1[8]~q\ & (\Add0~15\ $ (GND))) # (!\divf1:cntdivf1[8]~q\ & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((\divf1:cntdivf1[8]~q\ & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divf1:cntdivf1[8]~q\,
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: FF_X36_Y28_N17
\divf1:cntdivf1[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50m~inputclkctrl_outclk\,
	d => \Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divf1:cntdivf1[8]~q\);

-- Location: LCCOMB_X36_Y28_N18
\Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (\divf1:cntdivf1[9]~q\ & (!\Add0~17\)) # (!\divf1:cntdivf1[9]~q\ & ((\Add0~17\) # (GND)))
-- \Add0~19\ = CARRY((!\Add0~17\) # (!\divf1:cntdivf1[9]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divf1:cntdivf1[9]~q\,
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: FF_X36_Y28_N19
\divf1:cntdivf1[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50m~inputclkctrl_outclk\,
	d => \Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divf1:cntdivf1[9]~q\);

-- Location: LCCOMB_X36_Y28_N20
\Add0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (\divf1:cntdivf1[10]~q\ & (\Add0~19\ $ (GND))) # (!\divf1:cntdivf1[10]~q\ & (!\Add0~19\ & VCC))
-- \Add0~21\ = CARRY((\divf1:cntdivf1[10]~q\ & !\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divf1:cntdivf1[10]~q\,
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: LCCOMB_X37_Y28_N0
\cntdivf1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cntdivf1~2_combout\ = (\Add0~20_combout\ & !\Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~20_combout\,
	datad => \Equal0~4_combout\,
	combout => \cntdivf1~2_combout\);

-- Location: FF_X37_Y28_N1
\divf1:cntdivf1[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50m~inputclkctrl_outclk\,
	d => \cntdivf1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divf1:cntdivf1[10]~q\);

-- Location: LCCOMB_X36_Y28_N22
\Add0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (\divf1:cntdivf1[11]~q\ & (!\Add0~21\)) # (!\divf1:cntdivf1[11]~q\ & ((\Add0~21\) # (GND)))
-- \Add0~23\ = CARRY((!\Add0~21\) # (!\divf1:cntdivf1[11]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divf1:cntdivf1[11]~q\,
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: FF_X36_Y28_N23
\divf1:cntdivf1[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50m~inputclkctrl_outclk\,
	d => \Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divf1:cntdivf1[11]~q\);

-- Location: LCCOMB_X36_Y28_N24
\Add0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (\divf1:cntdivf1[12]~q\ & (\Add0~23\ $ (GND))) # (!\divf1:cntdivf1[12]~q\ & (!\Add0~23\ & VCC))
-- \Add0~25\ = CARRY((\divf1:cntdivf1[12]~q\ & !\Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divf1:cntdivf1[12]~q\,
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: LCCOMB_X37_Y28_N6
\cntdivf1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cntdivf1~3_combout\ = (\Add0~24_combout\ & !\Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~24_combout\,
	datad => \Equal0~4_combout\,
	combout => \cntdivf1~3_combout\);

-- Location: FF_X37_Y28_N7
\divf1:cntdivf1[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50m~inputclkctrl_outclk\,
	d => \cntdivf1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divf1:cntdivf1[12]~q\);

-- Location: LCCOMB_X36_Y28_N26
\Add0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (\divf1:cntdivf1[13]~q\ & (!\Add0~25\)) # (!\divf1:cntdivf1[13]~q\ & ((\Add0~25\) # (GND)))
-- \Add0~27\ = CARRY((!\Add0~25\) # (!\divf1:cntdivf1[13]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divf1:cntdivf1[13]~q\,
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: LCCOMB_X37_Y28_N30
\cntdivf1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cntdivf1~4_combout\ = (\Add0~26_combout\ & !\Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~26_combout\,
	datad => \Equal0~4_combout\,
	combout => \cntdivf1~4_combout\);

-- Location: FF_X37_Y28_N31
\divf1:cntdivf1[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50m~inputclkctrl_outclk\,
	d => \cntdivf1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divf1:cntdivf1[13]~q\);

-- Location: LCCOMB_X36_Y28_N28
\Add0~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (\divf1:cntdivf1[14]~q\ & (\Add0~27\ $ (GND))) # (!\divf1:cntdivf1[14]~q\ & (!\Add0~27\ & VCC))
-- \Add0~29\ = CARRY((\divf1:cntdivf1[14]~q\ & !\Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divf1:cntdivf1[14]~q\,
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: LCCOMB_X37_Y28_N20
\cntdivf1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cntdivf1~5_combout\ = (\Add0~28_combout\ & !\Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~28_combout\,
	datad => \Equal0~4_combout\,
	combout => \cntdivf1~5_combout\);

-- Location: FF_X37_Y28_N21
\divf1:cntdivf1[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50m~inputclkctrl_outclk\,
	d => \cntdivf1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divf1:cntdivf1[14]~q\);

-- Location: LCCOMB_X36_Y28_N30
\Add0~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = \Add0~29\ $ (\divf1:cntdivf1[15]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \divf1:cntdivf1[15]~q\,
	cin => \Add0~29\,
	combout => \Add0~30_combout\);

-- Location: LCCOMB_X37_Y28_N26
\cntdivf1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cntdivf1~6_combout\ = (\Add0~30_combout\ & !\Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~30_combout\,
	datad => \Equal0~4_combout\,
	combout => \cntdivf1~6_combout\);

-- Location: FF_X37_Y28_N27
\divf1:cntdivf1[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50m~inputclkctrl_outclk\,
	d => \cntdivf1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divf1:cntdivf1[15]~q\);

-- Location: LCCOMB_X37_Y28_N12
\Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (\divf1:cntdivf1[13]~q\ & (\divf1:cntdivf1[14]~q\ & (\divf1:cntdivf1[15]~q\ & \divf1:cntdivf1[12]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divf1:cntdivf1[13]~q\,
	datab => \divf1:cntdivf1[14]~q\,
	datac => \divf1:cntdivf1[15]~q\,
	datad => \divf1:cntdivf1[12]~q\,
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X37_Y28_N24
\Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!\divf1:cntdivf1[11]~q\ & (!\divf1:cntdivf1[9]~q\ & (!\divf1:cntdivf1[8]~q\ & \divf1:cntdivf1[10]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divf1:cntdivf1[11]~q\,
	datab => \divf1:cntdivf1[9]~q\,
	datac => \divf1:cntdivf1[8]~q\,
	datad => \divf1:cntdivf1[10]~q\,
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X37_Y28_N22
\Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (\divf1:cntdivf1[1]~q\ & (!\divf1:cntdivf1[3]~q\ & (\divf1:cntdivf1[0]~q\ & !\divf1:cntdivf1[2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divf1:cntdivf1[1]~q\,
	datab => \divf1:cntdivf1[3]~q\,
	datac => \divf1:cntdivf1[0]~q\,
	datad => \divf1:cntdivf1[2]~q\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X37_Y28_N18
\Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!\divf1:cntdivf1[4]~q\ & (!\divf1:cntdivf1[6]~q\ & (\divf1:cntdivf1[5]~q\ & !\divf1:cntdivf1[7]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divf1:cntdivf1[4]~q\,
	datab => \divf1:cntdivf1[6]~q\,
	datac => \divf1:cntdivf1[5]~q\,
	datad => \divf1:cntdivf1[7]~q\,
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X37_Y28_N28
\Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~3_combout\ & (\Equal0~2_combout\ & (\Equal0~0_combout\ & \Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~3_combout\,
	datab => \Equal0~2_combout\,
	datac => \Equal0~0_combout\,
	datad => \Equal0~1_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X37_Y28_N14
\clk400~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk400~0_combout\ = \clk400~q\ $ (\Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk400~q\,
	datad => \Equal0~4_combout\,
	combout => \clk400~0_combout\);

-- Location: FF_X37_Y28_N15
clk400 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50m~input_o\,
	d => \clk400~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk400~q\);

-- Location: CLKCTRL_G6
\clk400~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk400~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk400~clkctrl_outclk\);

-- Location: IOIBUF_X32_Y0_N29
\npob~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_npob,
	o => \npob~input_o\);

-- Location: LCCOMB_X36_Y3_N2
\qpob~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \qpob~0_combout\ = !\npob~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \npob~input_o\,
	combout => \qpob~0_combout\);

-- Location: FF_X36_Y3_N3
qpob : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400~clkctrl_outclk\,
	d => \qpob~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \qpob~q\);

-- Location: LCCOMB_X36_Y3_N12
\cntfpob~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cntfpob~2_combout\ = (!\filtpob:cntfpob[0]~q\ & (\qpob~q\ $ (\qpobf~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \qpob~q\,
	datac => \filtpob:cntfpob[0]~q\,
	datad => \qpobf~q\,
	combout => \cntfpob~2_combout\);

-- Location: FF_X36_Y3_N13
\filtpob:cntfpob[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400~clkctrl_outclk\,
	d => \cntfpob~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \filtpob:cntfpob[0]~q\);

-- Location: LCCOMB_X36_Y3_N10
\cntfpob~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cntfpob~4_combout\ = (\filtpob:cntfpob[0]~q\ & (!\filtpob:cntfpob[1]~q\ & (\qpob~q\ $ (\qpobf~q\)))) # (!\filtpob:cntfpob[0]~q\ & (\filtpob:cntfpob[1]~q\ & (\qpob~q\ $ (\qpobf~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filtpob:cntfpob[0]~q\,
	datab => \qpob~q\,
	datac => \filtpob:cntfpob[1]~q\,
	datad => \qpobf~q\,
	combout => \cntfpob~4_combout\);

-- Location: FF_X36_Y3_N11
\filtpob:cntfpob[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400~clkctrl_outclk\,
	d => \cntfpob~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \filtpob:cntfpob[1]~q\);

-- Location: LCCOMB_X36_Y3_N16
\filtpob~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \filtpob~0_combout\ = \qpob~q\ $ (\qpobf~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \qpob~q\,
	datad => \qpobf~q\,
	combout => \filtpob~0_combout\);

-- Location: LCCOMB_X36_Y3_N0
\cntfpob~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cntfpob~3_combout\ = (\filtpob~0_combout\ & (\filtpob:cntfpob[2]~q\ $ (((\filtpob:cntfpob[1]~q\ & \filtpob:cntfpob[0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filtpob:cntfpob[1]~q\,
	datab => \filtpob~0_combout\,
	datac => \filtpob:cntfpob[2]~q\,
	datad => \filtpob:cntfpob[0]~q\,
	combout => \cntfpob~3_combout\);

-- Location: FF_X36_Y3_N1
\filtpob:cntfpob[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400~clkctrl_outclk\,
	d => \cntfpob~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \filtpob:cntfpob[2]~q\);

-- Location: LCCOMB_X36_Y3_N6
\Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = \filtpob:cntfpob[3]~q\ $ (((\filtpob:cntfpob[1]~q\ & (\filtpob:cntfpob[2]~q\ & \filtpob:cntfpob[0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filtpob:cntfpob[1]~q\,
	datab => \filtpob:cntfpob[2]~q\,
	datac => \filtpob:cntfpob[3]~q\,
	datad => \filtpob:cntfpob[0]~q\,
	combout => \Add1~0_combout\);

-- Location: LCCOMB_X36_Y3_N22
\cntfpob~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cntfpob~5_combout\ = (\Add1~0_combout\ & (\qpob~q\ $ (\qpobf~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~0_combout\,
	datab => \qpob~q\,
	datad => \qpobf~q\,
	combout => \cntfpob~5_combout\);

-- Location: FF_X36_Y3_N23
\filtpob:cntfpob[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400~clkctrl_outclk\,
	d => \cntfpob~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \filtpob:cntfpob[3]~q\);

-- Location: LCCOMB_X36_Y3_N20
\qpobf~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \qpobf~0_combout\ = (\filtpob:cntfpob[1]~q\ & (\filtpob:cntfpob[2]~q\ & (\filtpob:cntfpob[3]~q\ & \filtpob:cntfpob[0]~q\))) # (!\filtpob:cntfpob[1]~q\ & (!\filtpob:cntfpob[2]~q\ & (!\filtpob:cntfpob[3]~q\ & !\filtpob:cntfpob[0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filtpob:cntfpob[1]~q\,
	datab => \filtpob:cntfpob[2]~q\,
	datac => \filtpob:cntfpob[3]~q\,
	datad => \filtpob:cntfpob[0]~q\,
	combout => \qpobf~0_combout\);

-- Location: LCCOMB_X36_Y3_N24
\qpobf~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \qpobf~1_combout\ = (\filtpob:cntfpob[0]~q\ & ((\qpobf~0_combout\ & ((\qpob~q\))) # (!\qpobf~0_combout\ & (\qpobf~q\)))) # (!\filtpob:cntfpob[0]~q\ & (((\qpobf~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filtpob:cntfpob[0]~q\,
	datab => \qpobf~0_combout\,
	datac => \qpobf~q\,
	datad => \qpob~q\,
	combout => \qpobf~1_combout\);

-- Location: FF_X36_Y3_N25
qpobf : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400~clkctrl_outclk\,
	d => \qpobf~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \qpobf~q\);

-- Location: IOIBUF_X11_Y0_N8
\fci~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fci,
	o => \fci~input_o\);

-- Location: FF_X38_Y17_N27
qfci : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400~clkctrl_outclk\,
	asdata => \fci~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \qfci~q\);

-- Location: LCCOMB_X37_Y20_N4
\change_state:counter[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_state:counter[0]~1_combout\ = \change_state:counter[0]~q\ $ (VCC)
-- \change_state:counter[0]~2\ = CARRY(\change_state:counter[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \change_state:counter[0]~q\,
	datad => VCC,
	combout => \change_state:counter[0]~1_combout\,
	cout => \change_state:counter[0]~2\);

-- Location: LCCOMB_X35_Y20_N0
\~GND\ : cycloneiii_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: LCCOMB_X38_Y17_N10
\change_state~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_state~5_combout\ = (!\qpobf~q\ & (\qfci~q\ & !\change_state~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \qpobf~q\,
	datac => \qfci~q\,
	datad => \change_state~4_combout\,
	combout => \change_state~5_combout\);

-- Location: LCCOMB_X37_Y20_N24
\change_state:counter[10]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_state:counter[10]~1_combout\ = (\change_state:counter[10]~q\ & (\change_state:counter[9]~2\ $ (GND))) # (!\change_state:counter[10]~q\ & (!\change_state:counter[9]~2\ & VCC))
-- \change_state:counter[10]~2\ = CARRY((\change_state:counter[10]~q\ & !\change_state:counter[9]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \change_state:counter[10]~q\,
	datad => VCC,
	cin => \change_state:counter[9]~2\,
	combout => \change_state:counter[10]~1_combout\,
	cout => \change_state:counter[10]~2\);

-- Location: LCCOMB_X37_Y20_N26
\change_state:counter[11]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_state:counter[11]~1_combout\ = (\change_state:counter[11]~q\ & (!\change_state:counter[10]~2\)) # (!\change_state:counter[11]~q\ & ((\change_state:counter[10]~2\) # (GND)))
-- \change_state:counter[11]~2\ = CARRY((!\change_state:counter[10]~2\) # (!\change_state:counter[11]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \change_state:counter[11]~q\,
	datad => VCC,
	cin => \change_state:counter[10]~2\,
	combout => \change_state:counter[11]~1_combout\,
	cout => \change_state:counter[11]~2\);

-- Location: IOIBUF_X32_Y0_N22
\fca~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fca,
	o => \fca~input_o\);

-- Location: FF_X38_Y17_N9
qfca : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400~clkctrl_outclk\,
	asdata => \fca~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \qfca~q\);

-- Location: LCCOMB_X38_Y17_N14
\Selector5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector5~1_combout\ = (\state.s1~q\ & ((\qfca~q\) # (\LessThan0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s1~q\,
	datac => \qfca~q\,
	datad => \LessThan0~6_combout\,
	combout => \Selector5~1_combout\);

-- Location: LCCOMB_X38_Y17_N8
\Selector4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\qpobf~q\ & (\qfca~q\ & \state.s1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \qpobf~q\,
	datac => \qfca~q\,
	datad => \state.s1~q\,
	combout => \Selector4~0_combout\);

-- Location: IOIBUF_X11_Y0_N15
\cmd~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cmd,
	o => \cmd~input_o\);

-- Location: FF_X38_Y17_N29
qcmd : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400~clkctrl_outclk\,
	asdata => \cmd~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \qcmd~q\);

-- Location: LCCOMB_X35_Y17_N30
\state.s0~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \state.s0~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \state.s0~feeder_combout\);

-- Location: FF_X35_Y17_N31
\state.s0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400~clkctrl_outclk\,
	d => \state.s0~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s0~q\);

-- Location: LCCOMB_X35_Y17_N24
\Selector2~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector2~5_combout\ = (\state.s0~q\ & (\state.s2~q\)) # (!\state.s0~q\ & ((!\qpobf~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s0~q\,
	datab => \state.s2~q\,
	datad => \qpobf~q\,
	combout => \Selector2~5_combout\);

-- Location: LCCOMB_X37_Y20_N2
\LessThan0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (\change_state:counter[3]~q\) # ((\change_state:counter[2]~q\) # ((\change_state:counter[0]~q\) # (\change_state:counter[1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \change_state:counter[3]~q\,
	datab => \change_state:counter[2]~q\,
	datac => \change_state:counter[0]~q\,
	datad => \change_state:counter[1]~q\,
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X39_Y14_N26
\LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = (\LessThan0~2_combout\ & \change_state:counter[4]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan0~2_combout\,
	datac => \change_state:counter[4]~q\,
	combout => \LessThan0~3_combout\);

-- Location: LCCOMB_X39_Y14_N20
\LessThan3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan3~0_combout\ = (\change_state:counter[6]~q\ & (\change_state:counter[7]~q\ & (\change_state:counter[10]~q\ & \change_state:counter[8]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \change_state:counter[6]~q\,
	datab => \change_state:counter[7]~q\,
	datac => \change_state:counter[10]~q\,
	datad => \change_state:counter[8]~q\,
	combout => \LessThan3~0_combout\);

-- Location: LCCOMB_X39_Y14_N30
\Selector2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector2~1_combout\ = (\change_state:counter[9]~q\ & (\LessThan3~0_combout\ & ((\change_state:counter[5]~q\) # (\LessThan0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \change_state:counter[5]~q\,
	datab => \change_state:counter[9]~q\,
	datac => \LessThan0~3_combout\,
	datad => \LessThan3~0_combout\,
	combout => \Selector2~1_combout\);

-- Location: LCCOMB_X39_Y14_N24
\Selector2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector2~2_combout\ = (!\qpobf~q\ & (!\qfci~q\ & ((\Selector2~1_combout\) # (!\LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \qpobf~q\,
	datab => \LessThan0~1_combout\,
	datac => \Selector2~1_combout\,
	datad => \qfci~q\,
	combout => \Selector2~2_combout\);

-- Location: LCCOMB_X35_Y17_N18
\Selector2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector2~3_combout\ = (\Selector2~2_combout\) # ((!\qpobf~q\ & !\state.s5~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \qpobf~q\,
	datac => \state.s5~q\,
	datad => \Selector2~2_combout\,
	combout => \Selector2~3_combout\);

-- Location: LCCOMB_X35_Y17_N22
\Selector2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector2~4_combout\ = (\Selector2~3_combout\ & (\state.s0~q\ & ((\state.s4~q\) # (\state.s5~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s4~q\,
	datab => \Selector2~3_combout\,
	datac => \state.s0~q\,
	datad => \state.s5~q\,
	combout => \Selector2~4_combout\);

-- Location: LCCOMB_X38_Y17_N24
\Selector2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\state.s2~q\ & (((\qcmd~q\) # (\LessThan0~6_combout\)) # (!\Selector3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector3~0_combout\,
	datab => \qcmd~q\,
	datac => \state.s2~q\,
	datad => \LessThan0~6_combout\,
	combout => \Selector2~0_combout\);

-- Location: LCCOMB_X35_Y17_N2
\Selector2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector2~6_combout\ = (!\state.s3~q\ & (!\Selector2~0_combout\ & ((\Selector2~5_combout\) # (\Selector2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s3~q\,
	datab => \Selector2~5_combout\,
	datac => \Selector2~4_combout\,
	datad => \Selector2~0_combout\,
	combout => \Selector2~6_combout\);

-- Location: FF_X35_Y17_N3
\state.s2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400~clkctrl_outclk\,
	d => \Selector2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s2~q\);

-- Location: LCCOMB_X38_Y17_N28
\Selector5~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector5~5_combout\ = (\state.s2~q\ & (\Selector2~7_combout\ & ((\state.s1~q\) # (!\qcmd~q\)))) # (!\state.s2~q\ & (\state.s1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s1~q\,
	datab => \Selector2~7_combout\,
	datac => \qcmd~q\,
	datad => \state.s2~q\,
	combout => \Selector5~5_combout\);

-- Location: LCCOMB_X35_Y17_N14
\Selector5~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector5~4_combout\ = (!\state.s3~q\ & (!\Selector5~1_combout\ & \state.s0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s3~q\,
	datab => \Selector5~1_combout\,
	datac => \state.s0~q\,
	combout => \Selector5~4_combout\);

-- Location: LCCOMB_X35_Y17_N8
\Selector5~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector5~6_combout\ = ((!\Selector5~5_combout\ & ((\Selector2~3_combout\) # (\state.s2~q\)))) # (!\Selector5~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector5~5_combout\,
	datab => \Selector2~3_combout\,
	datac => \Selector5~4_combout\,
	datad => \state.s2~q\,
	combout => \Selector5~6_combout\);

-- Location: LCCOMB_X35_Y17_N12
\Selector4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector4~1_combout\ = (\Selector5~6_combout\ & (\Selector4~0_combout\ & ((!\state.s3~q\)))) # (!\Selector5~6_combout\ & (((\state.s4~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector4~0_combout\,
	datab => \Selector5~6_combout\,
	datac => \state.s4~q\,
	datad => \state.s3~q\,
	combout => \Selector4~1_combout\);

-- Location: FF_X35_Y17_N13
\state.s4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400~clkctrl_outclk\,
	d => \Selector4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s4~q\);

-- Location: LCCOMB_X35_Y17_N20
WideOr0 : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr0~combout\ = (!\state.s4~q\ & (\state.s0~q\ & !\state.s3~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s4~q\,
	datac => \state.s0~q\,
	datad => \state.s3~q\,
	combout => \WideOr0~combout\);

-- Location: FF_X37_Y20_N27
\change_state:counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400~clkctrl_outclk\,
	d => \change_state:counter[11]~1_combout\,
	asdata => \~GND~combout\,
	sclr => \change_state:counter[12]~2_combout\,
	sload => \Selector5~1_combout\,
	ena => \WideOr0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \change_state:counter[11]~q\);

-- Location: LCCOMB_X37_Y20_N28
\change_state:counter[12]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_state:counter[12]~3_combout\ = (\change_state:counter[12]~q\ & (\change_state:counter[11]~2\ $ (GND))) # (!\change_state:counter[12]~q\ & (!\change_state:counter[11]~2\ & VCC))
-- \change_state:counter[12]~4\ = CARRY((\change_state:counter[12]~q\ & !\change_state:counter[11]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \change_state:counter[12]~q\,
	datad => VCC,
	cin => \change_state:counter[11]~2\,
	combout => \change_state:counter[12]~3_combout\,
	cout => \change_state:counter[12]~4\);

-- Location: FF_X37_Y20_N29
\change_state:counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400~clkctrl_outclk\,
	d => \change_state:counter[12]~3_combout\,
	asdata => \~GND~combout\,
	sclr => \change_state:counter[12]~2_combout\,
	sload => \Selector5~1_combout\,
	ena => \WideOr0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \change_state:counter[12]~q\);

-- Location: LCCOMB_X37_Y20_N30
\change_state:counter[13]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_state:counter[13]~1_combout\ = \change_state:counter[13]~q\ $ (\change_state:counter[12]~4\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \change_state:counter[13]~q\,
	cin => \change_state:counter[12]~4\,
	combout => \change_state:counter[13]~1_combout\);

-- Location: FF_X37_Y20_N31
\change_state:counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400~clkctrl_outclk\,
	d => \change_state:counter[13]~1_combout\,
	asdata => \~GND~combout\,
	sclr => \change_state:counter[12]~2_combout\,
	sload => \Selector5~1_combout\,
	ena => \WideOr0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \change_state:counter[13]~q\);

-- Location: LCCOMB_X37_Y20_N0
\LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (!\change_state:counter[13]~q\ & (!\change_state:counter[11]~q\ & !\change_state:counter[12]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \change_state:counter[13]~q\,
	datac => \change_state:counter[11]~q\,
	datad => \change_state:counter[12]~q\,
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X39_Y14_N0
\LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (\change_state:counter[7]~q\ & \change_state:counter[10]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \change_state:counter[7]~q\,
	datac => \change_state:counter[10]~q\,
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X39_Y14_N22
\LessThan0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = (\change_state:counter[10]~q\ & ((\change_state:counter[8]~q\) # ((\change_state:counter[6]~q\ & \change_state:counter[7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \change_state:counter[6]~q\,
	datab => \change_state:counter[7]~q\,
	datac => \change_state:counter[10]~q\,
	datad => \change_state:counter[8]~q\,
	combout => \LessThan0~4_combout\);

-- Location: LCCOMB_X39_Y14_N16
\LessThan0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = (\LessThan0~4_combout\) # ((\LessThan0~3_combout\ & (\LessThan0~0_combout\ & \change_state:counter[5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~3_combout\,
	datab => \LessThan0~0_combout\,
	datac => \LessThan0~4_combout\,
	datad => \change_state:counter[5]~q\,
	combout => \LessThan0~5_combout\);

-- Location: LCCOMB_X39_Y14_N2
\LessThan0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~6_combout\ = ((\LessThan0~5_combout\) # ((\change_state:counter[10]~q\ & \change_state:counter[9]~q\))) # (!\LessThan0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \change_state:counter[10]~q\,
	datab => \change_state:counter[9]~q\,
	datac => \LessThan0~1_combout\,
	datad => \LessThan0~5_combout\,
	combout => \LessThan0~6_combout\);

-- Location: LCCOMB_X38_Y17_N26
\Selector2~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector2~7_combout\ = (!\LessThan0~6_combout\ & ((\change_state~4_combout\) # (\qpobf~q\ $ (!\qfci~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \change_state~4_combout\,
	datab => \qpobf~q\,
	datac => \qfci~q\,
	datad => \LessThan0~6_combout\,
	combout => \Selector2~7_combout\);

-- Location: LCCOMB_X38_Y17_N0
\Selector5~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector5~2_combout\ = (\state.s1~q\ & (!\qpobf~q\ & \qfca~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s1~q\,
	datab => \qpobf~q\,
	datac => \qfca~q\,
	combout => \Selector5~2_combout\);

-- Location: LCCOMB_X38_Y17_N20
\Selector5~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector5~3_combout\ = (\Selector2~7_combout\ & (((\Selector5~2_combout\)))) # (!\Selector2~7_combout\ & ((\state.s2~q\ & (\change_state~5_combout\)) # (!\state.s2~q\ & ((\Selector5~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \change_state~5_combout\,
	datab => \Selector2~7_combout\,
	datac => \state.s2~q\,
	datad => \Selector5~2_combout\,
	combout => \Selector5~3_combout\);

-- Location: LCCOMB_X35_Y17_N16
\Selector5~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector5~7_combout\ = (\Selector5~6_combout\ & (\Selector5~3_combout\ & ((!\state.s3~q\)))) # (!\Selector5~6_combout\ & (((\state.s5~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector5~3_combout\,
	datab => \Selector5~6_combout\,
	datac => \state.s5~q\,
	datad => \state.s3~q\,
	combout => \Selector5~7_combout\);

-- Location: FF_X35_Y17_N17
\state.s5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400~clkctrl_outclk\,
	d => \Selector5~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s5~q\);

-- Location: LCCOMB_X35_Y17_N26
\change_state:counter[12]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_state:counter[12]~1_combout\ = (!\state.s1~q\ & ((\state.s5~q\ & ((\Selector2~2_combout\))) # (!\state.s5~q\ & (\qcmd~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s1~q\,
	datab => \state.s5~q\,
	datac => \qcmd~q\,
	datad => \Selector2~2_combout\,
	combout => \change_state:counter[12]~1_combout\);

-- Location: LCCOMB_X38_Y17_N12
\change_state:counter[12]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_state:counter[12]~2_combout\ = (\change_state:counter[12]~1_combout\) # ((\state.s2~q\ & ((\LessThan0~6_combout\) # (!\Selector3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \change_state:counter[12]~1_combout\,
	datab => \state.s2~q\,
	datac => \Selector3~0_combout\,
	datad => \LessThan0~6_combout\,
	combout => \change_state:counter[12]~2_combout\);

-- Location: FF_X37_Y20_N5
\change_state:counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400~clkctrl_outclk\,
	d => \change_state:counter[0]~1_combout\,
	asdata => \~GND~combout\,
	sclr => \change_state:counter[12]~2_combout\,
	sload => \Selector5~1_combout\,
	ena => \WideOr0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \change_state:counter[0]~q\);

-- Location: LCCOMB_X37_Y20_N6
\change_state:counter[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_state:counter[1]~1_combout\ = (\change_state:counter[1]~q\ & (!\change_state:counter[0]~2\)) # (!\change_state:counter[1]~q\ & ((\change_state:counter[0]~2\) # (GND)))
-- \change_state:counter[1]~2\ = CARRY((!\change_state:counter[0]~2\) # (!\change_state:counter[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \change_state:counter[1]~q\,
	datad => VCC,
	cin => \change_state:counter[0]~2\,
	combout => \change_state:counter[1]~1_combout\,
	cout => \change_state:counter[1]~2\);

-- Location: FF_X37_Y20_N7
\change_state:counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400~clkctrl_outclk\,
	d => \change_state:counter[1]~1_combout\,
	asdata => \~GND~combout\,
	sclr => \change_state:counter[12]~2_combout\,
	sload => \Selector5~1_combout\,
	ena => \WideOr0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \change_state:counter[1]~q\);

-- Location: LCCOMB_X37_Y20_N8
\change_state:counter[2]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_state:counter[2]~1_combout\ = (\change_state:counter[2]~q\ & (\change_state:counter[1]~2\ $ (GND))) # (!\change_state:counter[2]~q\ & (!\change_state:counter[1]~2\ & VCC))
-- \change_state:counter[2]~2\ = CARRY((\change_state:counter[2]~q\ & !\change_state:counter[1]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \change_state:counter[2]~q\,
	datad => VCC,
	cin => \change_state:counter[1]~2\,
	combout => \change_state:counter[2]~1_combout\,
	cout => \change_state:counter[2]~2\);

-- Location: FF_X37_Y20_N9
\change_state:counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400~clkctrl_outclk\,
	d => \change_state:counter[2]~1_combout\,
	asdata => \~GND~combout\,
	sclr => \change_state:counter[12]~2_combout\,
	sload => \Selector5~1_combout\,
	ena => \WideOr0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \change_state:counter[2]~q\);

-- Location: LCCOMB_X37_Y20_N10
\change_state:counter[3]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_state:counter[3]~1_combout\ = (\change_state:counter[3]~q\ & (!\change_state:counter[2]~2\)) # (!\change_state:counter[3]~q\ & ((\change_state:counter[2]~2\) # (GND)))
-- \change_state:counter[3]~2\ = CARRY((!\change_state:counter[2]~2\) # (!\change_state:counter[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \change_state:counter[3]~q\,
	datad => VCC,
	cin => \change_state:counter[2]~2\,
	combout => \change_state:counter[3]~1_combout\,
	cout => \change_state:counter[3]~2\);

-- Location: FF_X37_Y20_N11
\change_state:counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400~clkctrl_outclk\,
	d => \change_state:counter[3]~1_combout\,
	asdata => \~GND~combout\,
	sclr => \change_state:counter[12]~2_combout\,
	sload => \Selector5~1_combout\,
	ena => \WideOr0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \change_state:counter[3]~q\);

-- Location: LCCOMB_X37_Y20_N12
\change_state:counter[4]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_state:counter[4]~1_combout\ = (\change_state:counter[4]~q\ & (\change_state:counter[3]~2\ $ (GND))) # (!\change_state:counter[4]~q\ & (!\change_state:counter[3]~2\ & VCC))
-- \change_state:counter[4]~2\ = CARRY((\change_state:counter[4]~q\ & !\change_state:counter[3]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \change_state:counter[4]~q\,
	datad => VCC,
	cin => \change_state:counter[3]~2\,
	combout => \change_state:counter[4]~1_combout\,
	cout => \change_state:counter[4]~2\);

-- Location: FF_X37_Y20_N13
\change_state:counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400~clkctrl_outclk\,
	d => \change_state:counter[4]~1_combout\,
	asdata => \~GND~combout\,
	sclr => \change_state:counter[12]~2_combout\,
	sload => \Selector5~1_combout\,
	ena => \WideOr0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \change_state:counter[4]~q\);

-- Location: LCCOMB_X37_Y20_N14
\change_state:counter[5]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_state:counter[5]~1_combout\ = (\change_state:counter[5]~q\ & (!\change_state:counter[4]~2\)) # (!\change_state:counter[5]~q\ & ((\change_state:counter[4]~2\) # (GND)))
-- \change_state:counter[5]~2\ = CARRY((!\change_state:counter[4]~2\) # (!\change_state:counter[5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \change_state:counter[5]~q\,
	datad => VCC,
	cin => \change_state:counter[4]~2\,
	combout => \change_state:counter[5]~1_combout\,
	cout => \change_state:counter[5]~2\);

-- Location: FF_X37_Y20_N15
\change_state:counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400~clkctrl_outclk\,
	d => \change_state:counter[5]~1_combout\,
	asdata => \~GND~combout\,
	sclr => \change_state:counter[12]~2_combout\,
	sload => \Selector5~1_combout\,
	ena => \WideOr0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \change_state:counter[5]~q\);

-- Location: LCCOMB_X37_Y20_N16
\change_state:counter[6]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_state:counter[6]~1_combout\ = (\change_state:counter[6]~q\ & (\change_state:counter[5]~2\ $ (GND))) # (!\change_state:counter[6]~q\ & (!\change_state:counter[5]~2\ & VCC))
-- \change_state:counter[6]~2\ = CARRY((\change_state:counter[6]~q\ & !\change_state:counter[5]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \change_state:counter[6]~q\,
	datad => VCC,
	cin => \change_state:counter[5]~2\,
	combout => \change_state:counter[6]~1_combout\,
	cout => \change_state:counter[6]~2\);

-- Location: FF_X37_Y20_N17
\change_state:counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400~clkctrl_outclk\,
	d => \change_state:counter[6]~1_combout\,
	asdata => \~GND~combout\,
	sclr => \change_state:counter[12]~2_combout\,
	sload => \Selector5~1_combout\,
	ena => \WideOr0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \change_state:counter[6]~q\);

-- Location: LCCOMB_X37_Y20_N18
\change_state:counter[7]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_state:counter[7]~1_combout\ = (\change_state:counter[7]~q\ & (!\change_state:counter[6]~2\)) # (!\change_state:counter[7]~q\ & ((\change_state:counter[6]~2\) # (GND)))
-- \change_state:counter[7]~2\ = CARRY((!\change_state:counter[6]~2\) # (!\change_state:counter[7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \change_state:counter[7]~q\,
	datad => VCC,
	cin => \change_state:counter[6]~2\,
	combout => \change_state:counter[7]~1_combout\,
	cout => \change_state:counter[7]~2\);

-- Location: FF_X37_Y20_N19
\change_state:counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400~clkctrl_outclk\,
	d => \change_state:counter[7]~1_combout\,
	asdata => \~GND~combout\,
	sclr => \change_state:counter[12]~2_combout\,
	sload => \Selector5~1_combout\,
	ena => \WideOr0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \change_state:counter[7]~q\);

-- Location: LCCOMB_X37_Y20_N20
\change_state:counter[8]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_state:counter[8]~1_combout\ = (\change_state:counter[8]~q\ & (\change_state:counter[7]~2\ $ (GND))) # (!\change_state:counter[8]~q\ & (!\change_state:counter[7]~2\ & VCC))
-- \change_state:counter[8]~2\ = CARRY((\change_state:counter[8]~q\ & !\change_state:counter[7]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \change_state:counter[8]~q\,
	datad => VCC,
	cin => \change_state:counter[7]~2\,
	combout => \change_state:counter[8]~1_combout\,
	cout => \change_state:counter[8]~2\);

-- Location: FF_X37_Y20_N21
\change_state:counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400~clkctrl_outclk\,
	d => \change_state:counter[8]~1_combout\,
	asdata => \~GND~combout\,
	sclr => \change_state:counter[12]~2_combout\,
	sload => \Selector5~1_combout\,
	ena => \WideOr0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \change_state:counter[8]~q\);

-- Location: LCCOMB_X37_Y20_N22
\change_state:counter[9]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_state:counter[9]~1_combout\ = (\change_state:counter[9]~q\ & (!\change_state:counter[8]~2\)) # (!\change_state:counter[9]~q\ & ((\change_state:counter[8]~2\) # (GND)))
-- \change_state:counter[9]~2\ = CARRY((!\change_state:counter[8]~2\) # (!\change_state:counter[9]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \change_state:counter[9]~q\,
	datad => VCC,
	cin => \change_state:counter[8]~2\,
	combout => \change_state:counter[9]~1_combout\,
	cout => \change_state:counter[9]~2\);

-- Location: FF_X37_Y20_N23
\change_state:counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400~clkctrl_outclk\,
	d => \change_state:counter[9]~1_combout\,
	asdata => \~GND~combout\,
	sclr => \change_state:counter[12]~2_combout\,
	sload => \Selector5~1_combout\,
	ena => \WideOr0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \change_state:counter[9]~q\);

-- Location: FF_X37_Y20_N25
\change_state:counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400~clkctrl_outclk\,
	d => \change_state:counter[10]~1_combout\,
	asdata => \~GND~combout\,
	sclr => \change_state:counter[12]~2_combout\,
	sload => \Selector5~1_combout\,
	ena => \WideOr0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \change_state:counter[10]~q\);

-- Location: LCCOMB_X39_Y14_N12
\change_state~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_state~1_combout\ = ((\change_state:counter[10]~q\ & ((\change_state:counter[8]~q\) # (\change_state:counter[9]~q\)))) # (!\LessThan0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \change_state:counter[10]~q\,
	datab => \change_state:counter[8]~q\,
	datac => \LessThan0~1_combout\,
	datad => \change_state:counter[9]~q\,
	combout => \change_state~1_combout\);

-- Location: LCCOMB_X39_Y14_N6
\change_state~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_state~2_combout\ = (!\change_state:counter[5]~q\ & (!\change_state:counter[8]~q\ & (!\change_state:counter[6]~q\ & !\change_state:counter[9]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \change_state:counter[5]~q\,
	datab => \change_state:counter[8]~q\,
	datac => \change_state:counter[6]~q\,
	datad => \change_state:counter[9]~q\,
	combout => \change_state~2_combout\);

-- Location: LCCOMB_X39_Y14_N8
\change_state~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_state~3_combout\ = (!\change_state:counter[7]~q\ & (!\change_state:counter[10]~q\ & \change_state~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \change_state:counter[7]~q\,
	datac => \change_state:counter[10]~q\,
	datad => \change_state~2_combout\,
	combout => \change_state~3_combout\);

-- Location: LCCOMB_X39_Y14_N10
\change_state~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_state~0_combout\ = (\LessThan0~0_combout\ & ((\change_state:counter[6]~q\) # ((\change_state:counter[5]~q\ & \change_state:counter[4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \change_state:counter[5]~q\,
	datab => \change_state:counter[4]~q\,
	datac => \change_state:counter[6]~q\,
	datad => \LessThan0~0_combout\,
	combout => \change_state~0_combout\);

-- Location: LCCOMB_X39_Y14_N4
\change_state~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \change_state~4_combout\ = (\change_state~1_combout\) # ((\change_state~0_combout\) # ((\change_state~3_combout\ & !\LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \change_state~1_combout\,
	datab => \change_state~3_combout\,
	datac => \LessThan0~3_combout\,
	datad => \change_state~0_combout\,
	combout => \change_state~4_combout\);

-- Location: LCCOMB_X38_Y17_N22
\Selector3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\change_state~4_combout\) # (\qpobf~q\ $ (!\qfci~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \qpobf~q\,
	datac => \qfci~q\,
	datad => \change_state~4_combout\,
	combout => \Selector3~0_combout\);

-- Location: LCCOMB_X38_Y17_N18
\Selector3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector3~1_combout\ = (\state.s1~q\ & !\qfca~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s1~q\,
	datac => \qfca~q\,
	combout => \Selector3~1_combout\);

-- Location: LCCOMB_X38_Y17_N16
\Selector3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector3~2_combout\ = (\LessThan0~6_combout\ & ((\Selector3~1_combout\) # ((\Selector3~0_combout\ & \state.s2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector3~0_combout\,
	datab => \Selector3~1_combout\,
	datac => \state.s2~q\,
	datad => \LessThan0~6_combout\,
	combout => \Selector3~2_combout\);

-- Location: FF_X38_Y17_N17
\state.s3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400~clkctrl_outclk\,
	d => \Selector3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s3~q\);

-- Location: LCCOMB_X38_Y17_N4
\Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\change_state~4_combout\ & (((!\LessThan0~6_combout\)))) # (!\change_state~4_combout\ & ((\qpobf~q\ & ((!\LessThan0~6_combout\) # (!\qfci~q\))) # (!\qpobf~q\ & (!\qfci~q\ & !\LessThan0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \change_state~4_combout\,
	datab => \qpobf~q\,
	datac => \qfci~q\,
	datad => \LessThan0~6_combout\,
	combout => \Selector1~0_combout\);

-- Location: LCCOMB_X38_Y17_N6
\Selector1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector1~1_combout\ = (!\state.s1~q\ & (!\state.s0~q\ & \qpobf~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s1~q\,
	datab => \state.s0~q\,
	datad => \qpobf~q\,
	combout => \Selector1~1_combout\);

-- Location: LCCOMB_X38_Y17_N2
\Selector1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector1~2_combout\ = (\Selector1~1_combout\) # ((\state.s1~q\ & (!\qfca~q\ & !\LessThan0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector1~1_combout\,
	datab => \state.s1~q\,
	datac => \qfca~q\,
	datad => \LessThan0~6_combout\,
	combout => \Selector1~2_combout\);

-- Location: LCCOMB_X35_Y17_N0
\Selector1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector1~3_combout\ = (\Selector2~0_combout\ & (((\Selector1~0_combout\)))) # (!\Selector2~0_combout\ & ((\state.s3~q\) # ((\Selector1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s3~q\,
	datab => \Selector1~0_combout\,
	datac => \Selector1~2_combout\,
	datad => \Selector2~0_combout\,
	combout => \Selector1~3_combout\);

-- Location: FF_X35_Y17_N1
\state.s1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk400~clkctrl_outclk\,
	d => \Selector1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s1~q\);

-- Location: LCCOMB_X35_Y17_N28
\Selector5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (!\state.s2~q\ & !\state.s1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.s2~q\,
	datad => \state.s1~q\,
	combout => \Selector5~0_combout\);

ww_pia <= \pia~output_o\;

ww_pai <= \pai~output_o\;

ww_enp <= \enp~output_o\;

ww_nledet <= \nledet~output_o\;
END structure;


