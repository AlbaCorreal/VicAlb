--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : Votacion.vhf
-- /___/   /\     Timestamp : 04/21/2022 09:20:06
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl D:/Practicas/E_Digital/Practica_1A/Votacion.vhf -w D:/Practicas/E_Digital/Practica_1A/Votacion.sch
--Design Name: Votacion
--Device: spartan6
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity Resultado_Votacion_MUSER_Votacion is
   port ( SVF  : in    std_logic_vector (2 downto 0); 
          VVal : in    std_logic; 
          NA   : out   std_logic; 
          VC   : out   std_logic; 
          VF   : out   std_logic);
end Resultado_Votacion_MUSER_Votacion;

architecture BEHAVIORAL of Resultado_Votacion_MUSER_Votacion is
   attribute BOX_TYPE   : string ;
   signal XLXN_6  : std_logic;
   signal XLXN_7  : std_logic;
   signal XLXN_8  : std_logic;
   signal XLXN_9  : std_logic;
   signal XLXN_10 : std_logic;
   signal XLXN_11 : std_logic;
   signal XLXN_12 : std_logic;
   signal XLXN_13 : std_logic;
   signal XLXN_14 : std_logic;
   signal XLXN_15 : std_logic;
   signal XLXN_16 : std_logic;
   signal XLXN_17 : std_logic;
   signal XLXN_18 : std_logic;
   component AND3
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND3 : component is "BLACK_BOX";
   
   component AND4
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND4 : component is "BLACK_BOX";
   
   component OR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2 : component is "BLACK_BOX";
   
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
begin
   XLXI_1 : AND3
      port map (I0=>SVF(1),
                I1=>SVF(2),
                I2=>VVal,
                O=>XLXN_13);
   
   XLXI_2 : AND3
      port map (I0=>SVF(0),
                I1=>SVF(2),
                I2=>VVal,
                O=>XLXN_14);
   
   XLXI_4 : AND4
      port map (I0=>SVF(0),
                I1=>SVF(1),
                I2=>XLXN_12,
                I3=>VVal,
                O=>XLXN_15);
   
   XLXI_5 : AND4
      port map (I0=>XLXN_10,
                I1=>XLXN_11,
                I2=>SVF(2),
                I3=>VVal,
                O=>XLXN_16);
   
   XLXI_6 : AND3
      port map (I0=>XLXN_8,
                I1=>XLXN_9,
                I2=>VVal,
                O=>XLXN_17);
   
   XLXI_7 : AND3
      port map (I0=>XLXN_6,
                I1=>XLXN_7,
                I2=>VVal,
                O=>XLXN_18);
   
   XLXI_8 : OR2
      port map (I0=>XLXN_14,
                I1=>XLXN_13,
                O=>VF);
   
   XLXI_9 : OR2
      port map (I0=>XLXN_16,
                I1=>XLXN_15,
                O=>NA);
   
   XLXI_10 : OR2
      port map (I0=>XLXN_18,
                I1=>XLXN_17,
                O=>VC);
   
   XLXI_11 : INV
      port map (I=>SVF(2),
                O=>XLXN_12);
   
   XLXI_12 : INV
      port map (I=>SVF(1),
                O=>XLXN_11);
   
   XLXI_13 : INV
      port map (I=>SVF(0),
                O=>XLXN_10);
   
   XLXI_14 : INV
      port map (I=>SVF(2),
                O=>XLXN_9);
   
   XLXI_15 : INV
      port map (I=>SVF(1),
                O=>XLXN_8);
   
   XLXI_16 : INV
      port map (I=>SVF(2),
                O=>XLXN_7);
   
   XLXI_17 : INV
      port map (I=>SVF(0),
                O=>XLXN_6);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity Visualiza_Cuenta_MUSER_Votacion is
   port ( SVC         : in    std_logic_vector (2 downto 0); 
          SVF         : in    std_logic_vector (2 downto 0); 
          VVal        : in    std_logic; 
          SevenSeg_C  : out   std_logic_vector (7 downto 0); 
          SevenSeg_F  : out   std_logic_vector (7 downto 0); 
          SevenSeg_VC : out   std_logic_vector (7 downto 0); 
          SevenSeg_VF : out   std_logic_vector (7 downto 0));
end Visualiza_Cuenta_MUSER_Votacion;

architecture BEHAVIORAL of Visualiza_Cuenta_MUSER_Votacion is
   attribute BOX_TYPE   : string ;
   signal XLXN_4      : std_logic;
   signal XLXN_5      : std_logic;
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
   component BUF
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of BUF : component is "BLACK_BOX";
   
   component GND
      port ( G : out   std_logic);
   end component;
   attribute BOX_TYPE of GND : component is "BLACK_BOX";
   
   component VCC
      port ( P : out   std_logic);
   end component;
   attribute BOX_TYPE of VCC : component is "BLACK_BOX";
   
   component BCD_2_7Seg
      port ( SEG  : out   std_logic_vector (7 downto 0); 
             VVal : in    std_logic; 
             BCD  : in    std_logic_vector (2 downto 0));
   end component;
   
begin
   XLXI_1 : AND2
      port map (I0=>XLXN_4,
                I1=>VVal,
                O=>SevenSeg_C(0));
   
   XLXI_2 : AND2
      port map (I0=>XLXN_4,
                I1=>VVal,
                O=>SevenSeg_C(3));
   
   XLXI_3 : AND2
      port map (I0=>XLXN_4,
                I1=>VVal,
                O=>SevenSeg_C(4));
   
   XLXI_4 : AND2
      port map (I0=>XLXN_4,
                I1=>VVal,
                O=>SevenSeg_C(5));
   
   XLXI_5 : AND2
      port map (I0=>XLXN_4,
                I1=>VVal,
                O=>SevenSeg_F(0));
   
   XLXI_6 : AND2
      port map (I0=>XLXN_4,
                I1=>VVal,
                O=>SevenSeg_F(4));
   
   XLXI_7 : AND2
      port map (I0=>XLXN_4,
                I1=>VVal,
                O=>SevenSeg_F(5));
   
   XLXI_8 : AND2
      port map (I0=>XLXN_4,
                I1=>VVal,
                O=>SevenSeg_F(6));
   
   XLXI_15 : BUF
      port map (I=>XLXN_5,
                O=>SevenSeg_C(1));
   
   XLXI_16 : BUF
      port map (I=>XLXN_5,
                O=>SevenSeg_C(2));
   
   XLXI_17 : BUF
      port map (I=>XLXN_5,
                O=>SevenSeg_C(6));
   
   XLXI_18 : BUF
      port map (I=>XLXN_5,
                O=>SevenSeg_C(7));
   
   XLXI_19 : BUF
      port map (I=>XLXN_5,
                O=>SevenSeg_F(1));
   
   XLXI_20 : BUF
      port map (I=>XLXN_5,
                O=>SevenSeg_F(2));
   
   XLXI_21 : BUF
      port map (I=>XLXN_5,
                O=>SevenSeg_F(3));
   
   XLXI_22 : BUF
      port map (I=>XLXN_5,
                O=>SevenSeg_F(7));
   
   XLXI_32 : GND
      port map (G=>XLXN_5);
   
   XLXI_33 : VCC
      port map (P=>XLXN_4);
   
   XLXI_35 : BCD_2_7Seg
      port map (BCD(2 downto 0)=>SVC(2 downto 0),
                VVal=>VVal,
                SEG(7 downto 0)=>SevenSeg_VC(7 downto 0));
   
   XLXI_36 : BCD_2_7Seg
      port map (BCD(2 downto 0)=>SVF(2 downto 0),
                VVal=>VVal,
                SEG(7 downto 0)=>SevenSeg_VF(7 downto 0));
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity Sumador_Completo_2bits_MUSER_Votacion is
   port ( A   : in    std_logic; 
          B   : in    std_logic; 
          C_1 : in    std_logic; 
          C   : out   std_logic; 
          S   : out   std_logic);
end Sumador_Completo_2bits_MUSER_Votacion;

architecture BEHAVIORAL of Sumador_Completo_2bits_MUSER_Votacion is
   attribute BOX_TYPE   : string ;
   signal XLXN_1 : std_logic;
   signal XLXN_5 : std_logic;
   signal XLXN_6 : std_logic;
   component XOR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of XOR2 : component is "BLACK_BOX";
   
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
   component OR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2 : component is "BLACK_BOX";
   
begin
   XLXI_1 : XOR2
      port map (I0=>B,
                I1=>A,
                O=>XLXN_5);
   
   XLXI_2 : XOR2
      port map (I0=>C_1,
                I1=>XLXN_5,
                O=>S);
   
   XLXI_3 : AND2
      port map (I0=>A,
                I1=>B,
                O=>XLXN_1);
   
   XLXI_4 : AND2
      port map (I0=>XLXN_5,
                I1=>C_1,
                O=>XLXN_6);
   
   XLXI_5 : OR2
      port map (I0=>XLXN_1,
                I1=>XLXN_6,
                O=>C);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity Cuenta_Votos_MUSER_Votacion is
   port ( M   : in    std_logic_vector (6 downto 0); 
          SVC : out   std_logic_vector (2 downto 0); 
          SVF : out   std_logic_vector (2 downto 0));
end Cuenta_Votos_MUSER_Votacion;

architecture BEHAVIORAL of Cuenta_Votos_MUSER_Votacion is
   attribute BOX_TYPE   : string ;
   signal XLXN_8    : std_logic;
   signal XLXN_9    : std_logic;
   signal XLXN_10   : std_logic;
   signal XLXN_11   : std_logic;
   signal XLXN_12   : std_logic;
   signal SVF_DUMMY : std_logic_vector (2 downto 0);
   component Sumador_Completo_2bits_MUSER_Votacion
      port ( A   : in    std_logic; 
             B   : in    std_logic; 
             C   : out   std_logic; 
             C_1 : in    std_logic; 
             S   : out   std_logic);
   end component;
   
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
begin
   SVF(2 downto 0) <= SVF_DUMMY(2 downto 0);
   XLXI_1 : Sumador_Completo_2bits_MUSER_Votacion
      port map (A=>M(0),
                B=>M(1),
                C_1=>M(2),
                C=>XLXN_10,
                S=>XLXN_8);
   
   XLXI_2 : Sumador_Completo_2bits_MUSER_Votacion
      port map (A=>M(3),
                B=>M(4),
                C_1=>M(5),
                C=>XLXN_9,
                S=>XLXN_11);
   
   XLXI_3 : Sumador_Completo_2bits_MUSER_Votacion
      port map (A=>XLXN_8,
                B=>XLXN_11,
                C_1=>M(6),
                C=>XLXN_12,
                S=>SVF_DUMMY(0));
   
   XLXI_4 : Sumador_Completo_2bits_MUSER_Votacion
      port map (A=>XLXN_10,
                B=>XLXN_9,
                C_1=>XLXN_12,
                C=>SVF_DUMMY(2),
                S=>SVF_DUMMY(1));
   
   XLXI_5 : INV
      port map (I=>SVF_DUMMY(0),
                O=>SVC(0));
   
   XLXI_6 : INV
      port map (I=>SVF_DUMMY(1),
                O=>SVC(1));
   
   XLXI_7 : INV
      port map (I=>SVF_DUMMY(2),
                O=>SVC(2));
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity Votacion is
   port ( M           : in    std_logic_vector (6 downto 0); 
          VVal        : in    std_logic; 
          Leds        : out   std_logic_vector (7 downto 0); 
          SevenSeg_C  : out   std_logic_vector (7 downto 0); 
          SevenSeg_F  : out   std_logic_vector (7 downto 0); 
          SevenSeg_VC : out   std_logic_vector (7 downto 0); 
          SevenSeg_VF : out   std_logic_vector (7 downto 0));
end Votacion;

architecture BEHAVIORAL of Votacion is
   attribute BOX_TYPE   : string ;
   signal XLXN_4      : std_logic_vector (2 downto 0);
   signal XLXN_5      : std_logic_vector (2 downto 0);
   signal XLXN_15     : std_logic;
   signal XLXN_17     : std_logic;
   signal XLXN_18     : std_logic;
   component Cuenta_Votos_MUSER_Votacion
      port ( M   : in    std_logic_vector (6 downto 0); 
             SVF : out   std_logic_vector (2 downto 0); 
             SVC : out   std_logic_vector (2 downto 0));
   end component;
   
   component Visualiza_Cuenta_MUSER_Votacion
      port ( SevenSeg_C  : out   std_logic_vector (7 downto 0); 
             SevenSeg_F  : out   std_logic_vector (7 downto 0); 
             SevenSeg_VC : out   std_logic_vector (7 downto 0); 
             SevenSeg_VF : out   std_logic_vector (7 downto 0); 
             SVC         : in    std_logic_vector (2 downto 0); 
             SVF         : in    std_logic_vector (2 downto 0); 
             VVal        : in    std_logic);
   end component;
   
   component Resultado_Votacion_MUSER_Votacion
      port ( NA   : out   std_logic; 
             SVF  : in    std_logic_vector (2 downto 0); 
             VC   : out   std_logic; 
             VF   : out   std_logic; 
             VVal : in    std_logic);
   end component;
   
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
begin
   XLXI_1 : Cuenta_Votos_MUSER_Votacion
      port map (M(6 downto 0)=>M(6 downto 0),
                SVC(2 downto 0)=>XLXN_4(2 downto 0),
                SVF(2 downto 0)=>XLXN_5(2 downto 0));
   
   XLXI_2 : Visualiza_Cuenta_MUSER_Votacion
      port map (SVC(2 downto 0)=>XLXN_4(2 downto 0),
                SVF(2 downto 0)=>XLXN_5(2 downto 0),
                VVal=>VVal,
                SevenSeg_C(7 downto 0)=>SevenSeg_C(7 downto 0),
                SevenSeg_F(7 downto 0)=>SevenSeg_F(7 downto 0),
                SevenSeg_VC(7 downto 0)=>SevenSeg_VC(7 downto 0),
                SevenSeg_VF(7 downto 0)=>SevenSeg_VF(7 downto 0));
   
   XLXI_3 : Resultado_Votacion_MUSER_Votacion
      port map (SVF(2 downto 0)=>XLXN_5(2 downto 0),
                VVal=>VVal,
                NA=>XLXN_17,
                VC=>XLXN_18,
                VF=>XLXN_15);
   
   XLXI_7 : AND2
      port map (I0=>XLXN_15,
                I1=>VVal,
                O=>Leds(7));
   
   XLXI_8 : AND2
      port map (I0=>XLXN_15,
                I1=>VVal,
                O=>Leds(6));
   
   XLXI_9 : AND2
      port map (I0=>XLXN_15,
                I1=>VVal,
                O=>Leds(5));
   
   XLXI_10 : AND2
      port map (I0=>XLXN_17,
                I1=>VVal,
                O=>Leds(4));
   
   XLXI_11 : AND2
      port map (I0=>XLXN_17,
                I1=>VVal,
                O=>Leds(3));
   
   XLXI_22 : AND2
      port map (I0=>XLXN_18,
                I1=>VVal,
                O=>Leds(2));
   
   XLXI_23 : AND2
      port map (I0=>XLXN_18,
                I1=>VVal,
                O=>Leds(1));
   
   XLXI_24 : AND2
      port map (I0=>XLXN_18,
                I1=>VVal,
                O=>Leds(0));
   
end BEHAVIORAL;


