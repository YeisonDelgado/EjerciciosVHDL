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

-- DATE "03/14/2023 11:00:00"

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

ENTITY 	Decodificador_4_2 IS
    PORT (
	Dato : IN std_logic_vector(3 DOWNTO 0);
	f1 : OUT std_logic;
	f0 : OUT std_logic
	);
END Decodificador_4_2;

-- Design Ports Information
-- Dato[0]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f1	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f0	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dato[1]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dato[3]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dato[2]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Decodificador_4_2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Dato : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_f1 : std_logic;
SIGNAL ww_f0 : std_logic;
SIGNAL \Dato[0]~input_o\ : std_logic;
SIGNAL \f1~output_o\ : std_logic;
SIGNAL \f0~output_o\ : std_logic;
SIGNAL \Dato[1]~input_o\ : std_logic;
SIGNAL \Dato[3]~input_o\ : std_logic;
SIGNAL \f1~0_combout\ : std_logic;
SIGNAL \Dato[2]~input_o\ : std_logic;
SIGNAL \f0~0_combout\ : std_logic;

BEGIN

ww_Dato <= Dato;
f1 <= ww_f1;
f0 <= ww_f0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X5_Y0_N2
\f1~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \f1~0_combout\,
	devoe => ww_devoe,
	o => \f1~output_o\);

-- Location: IOOBUF_X0_Y22_N16
\f0~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \f0~0_combout\,
	devoe => ww_devoe,
	o => \f0~output_o\);

-- Location: IOIBUF_X0_Y20_N8
\Dato[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Dato(1),
	o => \Dato[1]~input_o\);

-- Location: IOIBUF_X0_Y13_N22
\Dato[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Dato(3),
	o => \Dato[3]~input_o\);

-- Location: LCCOMB_X1_Y14_N0
\f1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \f1~0_combout\ = (\Dato[1]~input_o\) # (\Dato[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Dato[1]~input_o\,
	datad => \Dato[3]~input_o\,
	combout => \f1~0_combout\);

-- Location: IOIBUF_X0_Y24_N1
\Dato[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Dato(2),
	o => \Dato[2]~input_o\);

-- Location: LCCOMB_X1_Y14_N2
\f0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \f0~0_combout\ = (\Dato[2]~input_o\) # (\Dato[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Dato[2]~input_o\,
	datad => \Dato[3]~input_o\,
	combout => \f0~0_combout\);

-- Location: IOIBUF_X7_Y29_N8
\Dato[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Dato(0),
	o => \Dato[0]~input_o\);

ww_f1 <= \f1~output_o\;

ww_f0 <= \f0~output_o\;
END structure;


