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

-- DATE "03/13/2023 23:54:04"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	MuxComportamental_8_1 IS
    PORT (
	Dato : IN std_logic_vector(7 DOWNTO 0);
	selc : IN std_logic_vector(2 DOWNTO 0);
	f : OUT std_logic
	);
END MuxComportamental_8_1;

-- Design Ports Information
-- f	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dato[5]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- selc[2]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dato[3]	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- selc[1]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dato[1]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dato[7]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dato[2]	=>  Location: PIN_P4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dato[4]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dato[0]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dato[6]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- selc[0]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF MuxComportamental_8_1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Dato : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_selc : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_f : std_logic;
SIGNAL \f~output_o\ : std_logic;
SIGNAL \selc[2]~input_o\ : std_logic;
SIGNAL \Dato[7]~input_o\ : std_logic;
SIGNAL \Dato[5]~input_o\ : std_logic;
SIGNAL \Dato[1]~input_o\ : std_logic;
SIGNAL \selc[1]~input_o\ : std_logic;
SIGNAL \Dato[3]~input_o\ : std_logic;
SIGNAL \f~0_combout\ : std_logic;
SIGNAL \f~1_combout\ : std_logic;
SIGNAL \selc[0]~input_o\ : std_logic;
SIGNAL \Dato[6]~input_o\ : std_logic;
SIGNAL \Dato[2]~input_o\ : std_logic;
SIGNAL \Dato[0]~input_o\ : std_logic;
SIGNAL \Dato[4]~input_o\ : std_logic;
SIGNAL \f~2_combout\ : std_logic;
SIGNAL \f~3_combout\ : std_logic;
SIGNAL \f~4_combout\ : std_logic;

BEGIN

ww_Dato <= Dato;
ww_selc <= selc;
f <= ww_f;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X0_Y12_N2
\f~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \f~4_combout\,
	devoe => ww_devoe,
	o => \f~output_o\);

-- Location: IOIBUF_X0_Y20_N8
\selc[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_selc(2),
	o => \selc[2]~input_o\);

-- Location: IOIBUF_X0_Y20_N1
\Dato[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Dato(7),
	o => \Dato[7]~input_o\);

-- Location: IOIBUF_X0_Y25_N22
\Dato[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Dato(5),
	o => \Dato[5]~input_o\);

-- Location: IOIBUF_X1_Y29_N22
\Dato[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Dato(1),
	o => \Dato[1]~input_o\);

-- Location: IOIBUF_X0_Y24_N1
\selc[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_selc(1),
	o => \selc[1]~input_o\);

-- Location: IOIBUF_X3_Y0_N29
\Dato[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Dato(3),
	o => \Dato[3]~input_o\);

-- Location: LCCOMB_X4_Y20_N0
\f~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \f~0_combout\ = (\selc[2]~input_o\ & (((\selc[1]~input_o\)))) # (!\selc[2]~input_o\ & ((\selc[1]~input_o\ & ((\Dato[3]~input_o\))) # (!\selc[1]~input_o\ & (\Dato[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selc[2]~input_o\,
	datab => \Dato[1]~input_o\,
	datac => \selc[1]~input_o\,
	datad => \Dato[3]~input_o\,
	combout => \f~0_combout\);

-- Location: LCCOMB_X4_Y20_N2
\f~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \f~1_combout\ = (\selc[2]~input_o\ & ((\f~0_combout\ & (\Dato[7]~input_o\)) # (!\f~0_combout\ & ((\Dato[5]~input_o\))))) # (!\selc[2]~input_o\ & (((\f~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selc[2]~input_o\,
	datab => \Dato[7]~input_o\,
	datac => \Dato[5]~input_o\,
	datad => \f~0_combout\,
	combout => \f~1_combout\);

-- Location: IOIBUF_X0_Y26_N15
\selc[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_selc(0),
	o => \selc[0]~input_o\);

-- Location: IOIBUF_X0_Y13_N1
\Dato[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Dato(6),
	o => \Dato[6]~input_o\);

-- Location: IOIBUF_X0_Y10_N22
\Dato[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Dato(2),
	o => \Dato[2]~input_o\);

-- Location: IOIBUF_X3_Y0_N8
\Dato[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Dato(0),
	o => \Dato[0]~input_o\);

-- Location: IOIBUF_X7_Y0_N15
\Dato[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Dato(4),
	o => \Dato[4]~input_o\);

-- Location: LCCOMB_X4_Y20_N12
\f~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \f~2_combout\ = (\selc[2]~input_o\ & (((\selc[1]~input_o\) # (\Dato[4]~input_o\)))) # (!\selc[2]~input_o\ & (\Dato[0]~input_o\ & (!\selc[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selc[2]~input_o\,
	datab => \Dato[0]~input_o\,
	datac => \selc[1]~input_o\,
	datad => \Dato[4]~input_o\,
	combout => \f~2_combout\);

-- Location: LCCOMB_X4_Y20_N6
\f~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \f~3_combout\ = (\selc[1]~input_o\ & ((\f~2_combout\ & (\Dato[6]~input_o\)) # (!\f~2_combout\ & ((\Dato[2]~input_o\))))) # (!\selc[1]~input_o\ & (((\f~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dato[6]~input_o\,
	datab => \Dato[2]~input_o\,
	datac => \selc[1]~input_o\,
	datad => \f~2_combout\,
	combout => \f~3_combout\);

-- Location: LCCOMB_X4_Y20_N24
\f~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \f~4_combout\ = (\selc[0]~input_o\ & (\f~1_combout\)) # (!\selc[0]~input_o\ & ((\f~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \f~1_combout\,
	datac => \selc[0]~input_o\,
	datad => \f~3_combout\,
	combout => \f~4_combout\);

ww_f <= \f~output_o\;
END structure;


