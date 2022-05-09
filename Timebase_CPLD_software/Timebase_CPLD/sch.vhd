--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : sch.vhf
-- /___/   /\     Timestamp : 05/09/2022 12:39:19
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family xc9500xl -flat -suppress -vhdl Z:/Timebase_CPLD/sch.vhf -w Z:/Timebase_CPLD/sch.sch
--Design Name: sch
--Device: xc9500xl
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity D2_4E_MXILINX_sch is
   port ( A0 : in    std_logic; 
          A1 : in    std_logic; 
          E  : in    std_logic; 
          D0 : out   std_logic; 
          D1 : out   std_logic; 
          D2 : out   std_logic; 
          D3 : out   std_logic);
end D2_4E_MXILINX_sch;

architecture BEHAVIORAL of D2_4E_MXILINX_sch is
   attribute BOX_TYPE   : string ;
   component AND3
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND3 : component is "BLACK_BOX";
   
   component AND3B1
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND3B1 : component is "BLACK_BOX";
   
   component AND3B2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND3B2 : component is "BLACK_BOX";
   
begin
   I_36_30 : AND3
      port map (I0=>A1,
                I1=>A0,
                I2=>E,
                O=>D3);
   
   I_36_31 : AND3B1
      port map (I0=>A0,
                I1=>A1,
                I2=>E,
                O=>D2);
   
   I_36_32 : AND3B1
      port map (I0=>A1,
                I1=>A0,
                I2=>E,
                O=>D1);
   
   I_36_33 : AND3B2
      port map (I0=>A0,
                I1=>A1,
                I2=>E,
                O=>D0);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity FTCE_MXILINX_sch is
   generic( INIT : bit :=  '0');
   port ( C   : in    std_logic; 
          CE  : in    std_logic; 
          CLR : in    std_logic; 
          T   : in    std_logic; 
          Q   : out   std_logic);
end FTCE_MXILINX_sch;

architecture BEHAVIORAL of FTCE_MXILINX_sch is
   attribute BOX_TYPE       : string ;
   signal TQ      : std_logic;
   signal Q_DUMMY : std_logic;
   component XOR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of XOR2 : component is "BLACK_BOX";
   
   component FDCE
      generic( INIT : bit :=  '0');
      port ( C   : in    std_logic; 
             CE  : in    std_logic; 
             CLR : in    std_logic; 
             D   : in    std_logic; 
             Q   : out   std_logic);
   end component;
   attribute BOX_TYPE of FDCE : component is "BLACK_BOX";
   
begin
   Q <= Q_DUMMY;
   I_36_32 : XOR2
      port map (I0=>T,
                I1=>Q_DUMMY,
                O=>TQ);
   
   I_36_35 : FDCE
   generic map( INIT => INIT)
      port map (C=>C,
                CE=>CE,
                CLR=>CLR,
                D=>TQ,
                Q=>Q_DUMMY);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity CB2CE_MXILINX_sch is
   port ( C   : in    std_logic; 
          CE  : in    std_logic; 
          CLR : in    std_logic; 
          CEO : out   std_logic; 
          Q0  : out   std_logic; 
          Q1  : out   std_logic; 
          TC  : out   std_logic);
end CB2CE_MXILINX_sch;

architecture BEHAVIORAL of CB2CE_MXILINX_sch is
   attribute BOX_TYPE   : string ;
   attribute HU_SET     : string ;
   signal XLXN_1   : std_logic;
   signal Q0_DUMMY : std_logic;
   signal Q1_DUMMY : std_logic;
   signal TC_DUMMY : std_logic;
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
   component VCC
      port ( P : out   std_logic);
   end component;
   attribute BOX_TYPE of VCC : component is "BLACK_BOX";
   
   component FTCE_MXILINX_sch
      generic( INIT : bit :=  '0');
      port ( C   : in    std_logic; 
             CE  : in    std_logic; 
             CLR : in    std_logic; 
             T   : in    std_logic; 
             Q   : out   std_logic);
   end component;
   
   attribute HU_SET of U0 : label is "U0_0";
   attribute HU_SET of U1 : label is "U1_1";
begin
   Q0 <= Q0_DUMMY;
   Q1 <= Q1_DUMMY;
   TC <= TC_DUMMY;
   I_36_37 : AND2
      port map (I0=>Q1_DUMMY,
                I1=>Q0_DUMMY,
                O=>TC_DUMMY);
   
   I_36_47 : VCC
      port map (P=>XLXN_1);
   
   I_36_52 : AND2
      port map (I0=>CE,
                I1=>TC_DUMMY,
                O=>CEO);
   
   U0 : FTCE_MXILINX_sch
      port map (C=>C,
                CE=>CE,
                CLR=>CLR,
                T=>XLXN_1,
                Q=>Q0_DUMMY);
   
   U1 : FTCE_MXILINX_sch
      port map (C=>C,
                CE=>CE,
                CLR=>CLR,
                T=>Q0_DUMMY,
                Q=>Q1_DUMMY);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity AND9_MXILINX_sch is
   port ( I0 : in    std_logic; 
          I1 : in    std_logic; 
          I2 : in    std_logic; 
          I3 : in    std_logic; 
          I4 : in    std_logic; 
          I5 : in    std_logic; 
          I6 : in    std_logic; 
          I7 : in    std_logic; 
          I8 : in    std_logic; 
          O  : out   std_logic);
end AND9_MXILINX_sch;

architecture BEHAVIORAL of AND9_MXILINX_sch is
   attribute BOX_TYPE   : string ;
   signal S0 : std_logic;
   signal S1 : std_logic;
   component AND4
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND4 : component is "BLACK_BOX";
   
   component AND3
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND3 : component is "BLACK_BOX";
   
begin
   I_36_110 : AND4
      port map (I0=>I0,
                I1=>I1,
                I2=>I2,
                I3=>I3,
                O=>S0);
   
   I_36_127 : AND4
      port map (I0=>I4,
                I1=>I5,
                I2=>I6,
                I3=>I7,
                O=>S1);
   
   I_36_176 : AND3
      port map (I0=>S0,
                I1=>S1,
                I2=>I8,
                O=>O);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity AND8_MXILINX_sch is
   port ( I0 : in    std_logic; 
          I1 : in    std_logic; 
          I2 : in    std_logic; 
          I3 : in    std_logic; 
          I4 : in    std_logic; 
          I5 : in    std_logic; 
          I6 : in    std_logic; 
          I7 : in    std_logic; 
          O  : out   std_logic);
end AND8_MXILINX_sch;

architecture BEHAVIORAL of AND8_MXILINX_sch is
   attribute BOX_TYPE   : string ;
   signal S0 : std_logic;
   signal S1 : std_logic;
   component AND4
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND4 : component is "BLACK_BOX";
   
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
begin
   I_36_110 : AND4
      port map (I0=>I0,
                I1=>I1,
                I2=>I2,
                I3=>I3,
                O=>S0);
   
   I_36_127 : AND4
      port map (I0=>I4,
                I1=>I5,
                I2=>I6,
                I3=>I7,
                O=>S1);
   
   I_36_142 : AND2
      port map (I0=>S0,
                I1=>S1,
                O=>O);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity AND7_MXILINX_sch is
   port ( I0 : in    std_logic; 
          I1 : in    std_logic; 
          I2 : in    std_logic; 
          I3 : in    std_logic; 
          I4 : in    std_logic; 
          I5 : in    std_logic; 
          I6 : in    std_logic; 
          O  : out   std_logic);
end AND7_MXILINX_sch;

architecture BEHAVIORAL of AND7_MXILINX_sch is
   attribute BOX_TYPE   : string ;
   signal I36 : std_logic;
   component AND4
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND4 : component is "BLACK_BOX";
   
begin
   I_36_69 : AND4
      port map (I0=>I3,
                I1=>I4,
                I2=>I5,
                I3=>I6,
                O=>I36);
   
   I_36_85 : AND4
      port map (I0=>I0,
                I1=>I1,
                I2=>I2,
                I3=>I36,
                O=>O);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity AND6_MXILINX_sch is
   port ( I0 : in    std_logic; 
          I1 : in    std_logic; 
          I2 : in    std_logic; 
          I3 : in    std_logic; 
          I4 : in    std_logic; 
          I5 : in    std_logic; 
          O  : out   std_logic);
end AND6_MXILINX_sch;

architecture BEHAVIORAL of AND6_MXILINX_sch is
   attribute BOX_TYPE   : string ;
   signal I35 : std_logic;
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
   
begin
   I_36_69 : AND3
      port map (I0=>I3,
                I1=>I4,
                I2=>I5,
                O=>I35);
   
   I_36_85 : AND4
      port map (I0=>I0,
                I1=>I1,
                I2=>I2,
                I3=>I35,
                O=>O);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity FDC_MXILINX_sch is
   generic( INIT : bit :=  '0');
   port ( C   : in    std_logic; 
          CLR : in    std_logic; 
          D   : in    std_logic; 
          Q   : out   std_logic);
end FDC_MXILINX_sch;

architecture BEHAVIORAL of FDC_MXILINX_sch is
   attribute BOX_TYPE   : string ;
   signal XLXN_5 : std_logic;
   component GND
      port ( G : out   std_logic);
   end component;
   attribute BOX_TYPE of GND : component is "BLACK_BOX";
   
   component FDCP
      generic( INIT : bit :=  '0');
      port ( C   : in    std_logic; 
             CLR : in    std_logic; 
             D   : in    std_logic; 
             PRE : in    std_logic; 
             Q   : out   std_logic);
   end component;
   attribute BOX_TYPE of FDCP : component is "BLACK_BOX";
   
begin
   I_36_55 : GND
      port map (G=>XLXN_5);
   
   U0 : FDCP
   generic map( INIT => INIT)
      port map (C=>C,
                CLR=>CLR,
                D=>D,
                PRE=>XLXN_5,
                Q=>Q);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity CB8X1_MXILINX_sch is
   port ( C    : in    std_logic; 
          CED  : in    std_logic; 
          CEU  : in    std_logic; 
          CLR  : in    std_logic; 
          D    : in    std_logic_vector (7 downto 0); 
          L    : in    std_logic; 
          CEOD : out   std_logic; 
          CEOU : out   std_logic; 
          Q    : out   std_logic_vector (7 downto 0); 
          TCD  : out   std_logic; 
          TCU  : out   std_logic);
end CB8X1_MXILINX_sch;

architecture BEHAVIORAL of CB8X1_MXILINX_sch is
   attribute BOX_TYPE   : string ;
   attribute HU_SET     : string ;
   signal CEU_I     : std_logic;
   signal XLXN_12   : std_logic;
   signal XLXN_13   : std_logic;
   signal XLXN_14   : std_logic;
   signal XLXN_15   : std_logic;
   signal XLXN_16   : std_logic;
   signal XLXN_17   : std_logic;
   signal XLXN_18   : std_logic;
   signal XLXN_19   : std_logic;
   signal XLXN_20   : std_logic;
   signal XLXN_21   : std_logic;
   signal XLXN_22   : std_logic;
   signal XLXN_23   : std_logic;
   signal XLXN_24   : std_logic;
   signal XLXN_25   : std_logic;
   signal XLXN_26   : std_logic;
   signal XLXN_27   : std_logic;
   signal XLXN_28   : std_logic;
   signal XLXN_29   : std_logic;
   signal XLXN_30   : std_logic;
   signal XLXN_31   : std_logic;
   signal XLXN_32   : std_logic;
   signal XLXN_33   : std_logic;
   signal XLXN_34   : std_logic;
   signal XLXN_35   : std_logic;
   signal XLXN_36   : std_logic;
   signal XLXN_37   : std_logic;
   signal XLXN_38   : std_logic;
   signal XLXN_39   : std_logic;
   signal XLXN_40   : std_logic;
   signal XLXN_41   : std_logic;
   signal XLXN_42   : std_logic;
   signal XLXN_43   : std_logic;
   signal XLXN_44   : std_logic;
   signal XLXN_45   : std_logic;
   signal XLXN_46   : std_logic;
   signal XLXN_47   : std_logic;
   signal XLXN_48   : std_logic;
   signal XLXN_49   : std_logic;
   signal XLXN_50   : std_logic;
   signal XLXN_51   : std_logic;
   signal XLXN_52   : std_logic;
   signal XLXN_53   : std_logic;
   signal XLXN_54   : std_logic;
   signal XLXN_55   : std_logic;
   signal XLXN_56   : std_logic;
   signal XLXN_57   : std_logic;
   signal XLXN_58   : std_logic;
   signal XLXN_59   : std_logic;
   signal XLXN_60   : std_logic;
   signal XLXN_61   : std_logic;
   signal XLXN_62   : std_logic;
   signal XLXN_63   : std_logic;
   signal XLXN_64   : std_logic;
   signal XLXN_65   : std_logic;
   signal XLXN_66   : std_logic;
   signal XLXN_67   : std_logic;
   signal XLXN_68   : std_logic;
   signal XLXN_69   : std_logic;
   signal XLXN_70   : std_logic;
   signal XLXN_71   : std_logic;
   signal XLXN_72   : std_logic;
   signal XLXN_73   : std_logic;
   signal XLXN_74   : std_logic;
   signal XLXN_75   : std_logic;
   signal XLXN_76   : std_logic;
   signal XLXN_77   : std_logic;
   signal XLXN_78   : std_logic;
   signal XLXN_79   : std_logic;
   signal XLXN_80   : std_logic;
   signal XLXN_81   : std_logic;
   signal XLXN_82   : std_logic;
   signal XLXN_83   : std_logic;
   signal XLXN_84   : std_logic;
   signal XLXN_85   : std_logic;
   signal XLXN_86   : std_logic;
   signal XLXN_87   : std_logic;
   signal XLXN_88   : std_logic;
   signal XLXN_89   : std_logic;
   signal XLXN_90   : std_logic;
   signal XLXN_91   : std_logic;
   signal XLXN_92   : std_logic;
   signal XLXN_93   : std_logic;
   signal XLXN_94   : std_logic;
   signal XLXN_95   : std_logic;
   signal XLXN_96   : std_logic;
   signal XLXN_97   : std_logic;
   signal XLXN_98   : std_logic;
   signal XLXN_99   : std_logic;
   signal XLXN_100  : std_logic;
   signal XLXN_101  : std_logic;
   signal XLXN_102  : std_logic;
   signal XLXN_103  : std_logic;
   signal XLXN_104  : std_logic;
   signal XLXN_105  : std_logic;
   signal XLXN_106  : std_logic;
   signal XLXN_107  : std_logic;
   signal XLXN_108  : std_logic;
   signal XLXN_109  : std_logic;
   signal XLXN_110  : std_logic;
   signal XLXN_111  : std_logic;
   signal XLXN_112  : std_logic;
   signal XLXN_113  : std_logic;
   signal XLXN_114  : std_logic;
   signal XLXN_115  : std_logic;
   signal XLXN_116  : std_logic;
   signal XLXN_117  : std_logic;
   signal XLXN_118  : std_logic;
   signal XLXN_119  : std_logic;
   signal XLXN_120  : std_logic;
   signal XLXN_121  : std_logic;
   signal XLXN_122  : std_logic;
   signal XLXN_123  : std_logic;
   signal XLXN_124  : std_logic;
   signal XLXN_125  : std_logic;
   signal XLXN_126  : std_logic;
   signal XLXN_127  : std_logic;
   signal XLXN_128  : std_logic;
   signal XLXN_129  : std_logic;
   signal XLXN_130  : std_logic;
   signal XLXN_131  : std_logic;
   signal XLXN_132  : std_logic;
   signal XLXN_133  : std_logic;
   signal XLXN_134  : std_logic;
   signal XLXN_135  : std_logic;
   signal XLXN_136  : std_logic;
   signal XLXN_137  : std_logic;
   signal XLXN_138  : std_logic;
   signal TCD_DUMMY : std_logic;
   signal TCU_DUMMY : std_logic;
   signal Q_DUMMY   : std_logic_vector (7 downto 0);
   component AND2B1
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2B1 : component is "BLACK_BOX";
   
   component AND3B2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND3B2 : component is "BLACK_BOX";
   
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
   component OR3
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR3 : component is "BLACK_BOX";
   
   component XOR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of XOR2 : component is "BLACK_BOX";
   
   component AND3B1
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND3B1 : component is "BLACK_BOX";
   
   component AND4B3
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND4B3 : component is "BLACK_BOX";
   
   component AND4B1
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND4B1 : component is "BLACK_BOX";
   
   component AND5B4
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             I4 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND5B4 : component is "BLACK_BOX";
   
   component AND6_MXILINX_sch
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             I4 : in    std_logic; 
             I5 : in    std_logic; 
             O  : out   std_logic);
   end component;
   
   component AND7_MXILINX_sch
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             I4 : in    std_logic; 
             I5 : in    std_logic; 
             I6 : in    std_logic; 
             O  : out   std_logic);
   end component;
   
   component AND8_MXILINX_sch
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             I4 : in    std_logic; 
             I5 : in    std_logic; 
             I6 : in    std_logic; 
             I7 : in    std_logic; 
             O  : out   std_logic);
   end component;
   
   component AND9_MXILINX_sch
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             I4 : in    std_logic; 
             I5 : in    std_logic; 
             I6 : in    std_logic; 
             I7 : in    std_logic; 
             I8 : in    std_logic; 
             O  : out   std_logic);
   end component;
   
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
   component AND5
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             I4 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND5 : component is "BLACK_BOX";
   
   component OR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2 : component is "BLACK_BOX";
   
   component GND
      port ( G : out   std_logic);
   end component;
   attribute BOX_TYPE of GND : component is "BLACK_BOX";
   
   component AND2B2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2B2 : component is "BLACK_BOX";
   
   component NOR4
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of NOR4 : component is "BLACK_BOX";
   
   component FDC_MXILINX_sch
      generic( INIT : bit :=  '0');
      port ( C   : in    std_logic; 
             CLR : in    std_logic; 
             D   : in    std_logic; 
             Q   : out   std_logic);
   end component;
   
   attribute HU_SET of I_36_188 : label is "I_36_188_11";
   attribute HU_SET of I_36_189 : label is "I_36_189_13";
   attribute HU_SET of I_36_190 : label is "I_36_190_17";
   attribute HU_SET of I_36_191 : label is "I_36_191_23";
   attribute HU_SET of I_36_282 : label is "I_36_282_12";
   attribute HU_SET of I_36_346 : label is "I_36_346_14";
   attribute HU_SET of I_36_418 : label is "I_36_418_18";
   attribute HU_SET of I_36_455 : label is "I_36_455_22";
   attribute HU_SET of I_36_489 : label is "I_36_489_21";
   attribute HU_SET of I_36_528 : label is "I_36_528_16";
   attribute HU_SET of I_36_660 : label is "I_36_660_20";
   attribute HU_SET of I_36_704 : label is "I_36_704_19";
   attribute HU_SET of I_36_776 : label is "I_36_776_24";
   attribute HU_SET of I_36_824 : label is "I_36_824_15";
   attribute HU_SET of Q0 : label is "Q0_10";
   attribute HU_SET of Q1 : label is "Q1_9";
   attribute HU_SET of Q2 : label is "Q2_8";
   attribute HU_SET of Q3 : label is "Q3_7";
   attribute HU_SET of Q4 : label is "Q4_6";
   attribute HU_SET of Q5 : label is "Q5_5";
   attribute HU_SET of Q6 : label is "Q6_4";
   attribute HU_SET of Q7 : label is "Q7_3";
   attribute HU_SET of TCDINV : label is "TCDINV_2";
begin
   Q(7 downto 0) <= Q_DUMMY(7 downto 0);
   TCD <= TCD_DUMMY;
   TCU <= TCU_DUMMY;
   I_36_75 : AND2B1
      port map (I0=>XLXN_15,
                I1=>CEU_I,
                O=>XLXN_122);
   
   I_36_76 : AND3B2
      port map (I0=>XLXN_15,
                I1=>CEU_I,
                I2=>XLXN_13,
                O=>XLXN_112);
   
   I_36_77 : AND2
      port map (I0=>D(0),
                I1=>XLXN_15,
                O=>XLXN_62);
   
   I_36_78 : AND2B1
      port map (I0=>XLXN_15,
                I1=>Q_DUMMY(0),
                O=>XLXN_63);
   
   I_36_79 : OR3
      port map (I0=>XLXN_62,
                I1=>XLXN_122,
                I2=>XLXN_112,
                O=>XLXN_111);
   
   I_36_81 : XOR2
      port map (I0=>XLXN_63,
                I1=>XLXN_111,
                O=>XLXN_61);
   
   I_36_108 : AND3B1
      port map (I0=>XLXN_15,
                I1=>Q_DUMMY(0),
                I2=>CEU_I,
                O=>XLXN_123);
   
   I_36_109 : AND4B3
      port map (I0=>Q_DUMMY(0),
                I1=>XLXN_15,
                I2=>CEU_I,
                I3=>XLXN_13,
                O=>XLXN_110);
   
   I_36_111 : AND2
      port map (I0=>D(1),
                I1=>XLXN_15,
                O=>XLXN_108);
   
   I_36_112 : AND2B1
      port map (I0=>XLXN_15,
                I1=>Q_DUMMY(1),
                O=>XLXN_106);
   
   I_36_114 : OR3
      port map (I0=>XLXN_108,
                I1=>XLXN_123,
                I2=>XLXN_110,
                O=>XLXN_107);
   
   I_36_115 : XOR2
      port map (I0=>XLXN_106,
                I1=>XLXN_107,
                O=>XLXN_60);
   
   I_36_144 : AND4B1
      port map (I0=>XLXN_15,
                I1=>Q_DUMMY(1),
                I2=>Q_DUMMY(0),
                I3=>CEU_I,
                O=>XLXN_124);
   
   I_36_145 : AND5B4
      port map (I0=>Q_DUMMY(1),
                I1=>Q_DUMMY(0),
                I2=>XLXN_15,
                I3=>CEU_I,
                I4=>XLXN_13,
                O=>XLXN_109);
   
   I_36_156 : OR3
      port map (I0=>XLXN_105,
                I1=>XLXN_124,
                I2=>XLXN_109,
                O=>XLXN_104);
   
   I_36_157 : AND2B1
      port map (I0=>XLXN_15,
                I1=>Q_DUMMY(2),
                O=>XLXN_103);
   
   I_36_158 : AND2
      port map (I0=>D(2),
                I1=>XLXN_15,
                O=>XLXN_105);
   
   I_36_173 : XOR2
      port map (I0=>XLXN_103,
                I1=>XLXN_104,
                O=>XLXN_59);
   
   I_36_188 : AND6_MXILINX_sch
      port map (I0=>XLXN_102,
                I1=>XLXN_116,
                I2=>XLXN_115,
                I3=>XLXN_114,
                I4=>XLXN_113,
                I5=>XLXN_13,
                O=>XLXN_117);
   
   I_36_189 : AND7_MXILINX_sch
      port map (I0=>XLXN_97,
                I1=>XLXN_98,
                I2=>XLXN_99,
                I3=>XLXN_95,
                I4=>XLXN_100,
                I5=>XLXN_101,
                I6=>XLXN_13,
                O=>XLXN_96);
   
   I_36_190 : AND8_MXILINX_sch
      port map (I0=>XLXN_83,
                I1=>XLXN_85,
                I2=>XLXN_86,
                I3=>XLXN_87,
                I4=>XLXN_88,
                I5=>XLXN_89,
                I6=>XLXN_90,
                I7=>XLXN_13,
                O=>XLXN_84);
   
   I_36_191 : AND9_MXILINX_sch
      port map (I0=>XLXN_75,
                I1=>XLXN_74,
                I2=>XLXN_73,
                I3=>XLXN_72,
                I4=>XLXN_71,
                I5=>XLXN_70,
                I6=>XLXN_69,
                I7=>XLXN_68,
                I8=>XLXN_13,
                O=>XLXN_67);
   
   I_36_196 : INV
      port map (I=>CEU_I,
                O=>XLXN_113);
   
   I_36_197 : INV
      port map (I=>XLXN_15,
                O=>XLXN_114);
   
   I_36_198 : INV
      port map (I=>Q_DUMMY(0),
                O=>XLXN_115);
   
   I_36_199 : INV
      port map (I=>Q_DUMMY(1),
                O=>XLXN_116);
   
   I_36_200 : INV
      port map (I=>Q_DUMMY(2),
                O=>XLXN_102);
   
   I_36_216 : AND5
      port map (I0=>Q_DUMMY(2),
                I1=>Q_DUMMY(1),
                I2=>Q_DUMMY(0),
                I3=>XLXN_118,
                I4=>CEU_I,
                O=>XLXN_125);
   
   I_36_217 : INV
      port map (I=>XLXN_15,
                O=>XLXN_118);
   
   I_36_225 : AND2B1
      port map (I0=>XLXN_15,
                I1=>Q_DUMMY(3),
                O=>XLXN_92);
   
   I_36_228 : AND2
      port map (I0=>D(3),
                I1=>XLXN_15,
                O=>XLXN_94);
   
   I_36_231 : OR3
      port map (I0=>XLXN_94,
                I1=>XLXN_125,
                I2=>XLXN_117,
                O=>XLXN_93);
   
   I_36_241 : XOR2
      port map (I0=>XLXN_92,
                I1=>XLXN_93,
                O=>XLXN_58);
   
   I_36_249 : INV
      port map (I=>Q_DUMMY(0),
                O=>XLXN_95);
   
   I_36_250 : INV
      port map (I=>XLXN_15,
                O=>XLXN_100);
   
   I_36_252 : INV
      port map (I=>Q_DUMMY(1),
                O=>XLXN_99);
   
   I_36_253 : INV
      port map (I=>Q_DUMMY(2),
                O=>XLXN_98);
   
   I_36_254 : INV
      port map (I=>Q_DUMMY(3),
                O=>XLXN_97);
   
   I_36_267 : INV
      port map (I=>CEU_I,
                O=>XLXN_101);
   
   I_36_282 : AND6_MXILINX_sch
      port map (I0=>Q_DUMMY(3),
                I1=>Q_DUMMY(2),
                I2=>Q_DUMMY(1),
                I3=>Q_DUMMY(0),
                I4=>XLXN_91,
                I5=>CEU_I,
                O=>XLXN_126);
   
   I_36_283 : INV
      port map (I=>XLXN_15,
                O=>XLXN_91);
   
   I_36_293 : OR3
      port map (I0=>XLXN_82,
                I1=>XLXN_126,
                I2=>XLXN_96,
                O=>XLXN_81);
   
   I_36_298 : AND2B1
      port map (I0=>XLXN_15,
                I1=>Q_DUMMY(4),
                O=>XLXN_80);
   
   I_36_299 : AND2
      port map (I0=>D(4),
                I1=>XLXN_15,
                O=>XLXN_82);
   
   I_36_309 : XOR2
      port map (I0=>XLXN_80,
                I1=>XLXN_81,
                O=>XLXN_57);
   
   I_36_317 : INV
      port map (I=>CEU_I,
                O=>XLXN_90);
   
   I_36_318 : INV
      port map (I=>XLXN_15,
                O=>XLXN_89);
   
   I_36_319 : INV
      port map (I=>Q_DUMMY(0),
                O=>XLXN_88);
   
   I_36_320 : INV
      port map (I=>Q_DUMMY(1),
                O=>XLXN_87);
   
   I_36_321 : INV
      port map (I=>Q_DUMMY(2),
                O=>XLXN_86);
   
   I_36_322 : INV
      port map (I=>Q_DUMMY(3),
                O=>XLXN_85);
   
   I_36_323 : INV
      port map (I=>Q_DUMMY(4),
                O=>XLXN_83);
   
   I_36_346 : AND7_MXILINX_sch
      port map (I0=>Q_DUMMY(4),
                I1=>Q_DUMMY(3),
                I2=>Q_DUMMY(2),
                I3=>Q_DUMMY(1),
                I4=>Q_DUMMY(0),
                I5=>XLXN_79,
                I6=>CEU_I,
                O=>XLXN_127);
   
   I_36_347 : INV
      port map (I=>XLXN_15,
                O=>XLXN_79);
   
   I_36_358 : AND2B1
      port map (I0=>XLXN_15,
                I1=>Q_DUMMY(5),
                O=>XLXN_76);
   
   I_36_361 : AND2
      port map (I0=>D(5),
                I1=>XLXN_15,
                O=>XLXN_78);
   
   I_36_365 : OR3
      port map (I0=>XLXN_78,
                I1=>XLXN_127,
                I2=>XLXN_84,
                O=>XLXN_77);
   
   I_36_374 : XOR2
      port map (I0=>XLXN_76,
                I1=>XLXN_77,
                O=>XLXN_56);
   
   I_36_384 : INV
      port map (I=>CEU_I,
                O=>XLXN_68);
   
   I_36_385 : INV
      port map (I=>XLXN_15,
                O=>XLXN_69);
   
   I_36_386 : INV
      port map (I=>Q_DUMMY(0),
                O=>XLXN_70);
   
   I_36_387 : INV
      port map (I=>Q_DUMMY(1),
                O=>XLXN_71);
   
   I_36_388 : INV
      port map (I=>Q_DUMMY(2),
                O=>XLXN_72);
   
   I_36_389 : INV
      port map (I=>Q_DUMMY(3),
                O=>XLXN_73);
   
   I_36_390 : INV
      port map (I=>Q_DUMMY(4),
                O=>XLXN_74);
   
   I_36_391 : INV
      port map (I=>Q_DUMMY(5),
                O=>XLXN_75);
   
   I_36_418 : AND8_MXILINX_sch
      port map (I0=>Q_DUMMY(5),
                I1=>Q_DUMMY(4),
                I2=>Q_DUMMY(3),
                I3=>Q_DUMMY(2),
                I4=>Q_DUMMY(1),
                I5=>Q_DUMMY(0),
                I6=>XLXN_119,
                I7=>CEU_I,
                O=>XLXN_128);
   
   I_36_419 : INV
      port map (I=>XLXN_15,
                O=>XLXN_119);
   
   I_36_431 : AND2B1
      port map (I0=>XLXN_15,
                I1=>Q_DUMMY(6),
                O=>XLXN_64);
   
   I_36_434 : AND2
      port map (I0=>D(6),
                I1=>XLXN_15,
                O=>XLXN_66);
   
   I_36_437 : OR3
      port map (I0=>XLXN_66,
                I1=>XLXN_128,
                I2=>XLXN_67,
                O=>XLXN_65);
   
   I_36_447 : XOR2
      port map (I0=>XLXN_64,
                I1=>XLXN_65,
                O=>XLXN_55);
   
   I_36_455 : AND9_MXILINX_sch
      port map (I0=>XLXN_42,
                I1=>XLXN_48,
                I2=>XLXN_49,
                I3=>XLXN_50,
                I4=>XLXN_51,
                I5=>XLXN_52,
                I6=>XLXN_53,
                I7=>XLXN_54,
                I8=>XLXN_13,
                O=>XLXN_46);
   
   I_36_456 : INV
      port map (I=>Q_DUMMY(5),
                O=>XLXN_42);
   
   I_36_457 : INV
      port map (I=>CEU_I,
                O=>XLXN_54);
   
   I_36_458 : INV
      port map (I=>XLXN_15,
                O=>XLXN_53);
   
   I_36_459 : INV
      port map (I=>Q_DUMMY(0),
                O=>XLXN_52);
   
   I_36_460 : INV
      port map (I=>Q_DUMMY(1),
                O=>XLXN_51);
   
   I_36_461 : INV
      port map (I=>Q_DUMMY(2),
                O=>XLXN_50);
   
   I_36_462 : INV
      port map (I=>Q_DUMMY(3),
                O=>XLXN_49);
   
   I_36_463 : INV
      port map (I=>Q_DUMMY(4),
                O=>XLXN_48);
   
   I_36_485 : AND2B1
      port map (I0=>Q_DUMMY(6),
                I1=>XLXN_46,
                O=>XLXN_47);
   
   I_36_489 : AND9_MXILINX_sch
      port map (I0=>Q_DUMMY(6),
                I1=>Q_DUMMY(5),
                I2=>Q_DUMMY(4),
                I3=>Q_DUMMY(3),
                I4=>Q_DUMMY(2),
                I5=>Q_DUMMY(1),
                I6=>Q_DUMMY(0),
                I7=>XLXN_44,
                I8=>CEU_I,
                O=>XLXN_43);
   
   I_36_503 : AND2B1
      port map (I0=>XLXN_15,
                I1=>Q_DUMMY(7),
                O=>XLXN_17);
   
   I_36_507 : AND2
      port map (I0=>D(7),
                I1=>XLXN_15,
                O=>XLXN_45);
   
   I_36_510 : OR3
      port map (I0=>XLXN_45,
                I1=>XLXN_43,
                I2=>XLXN_47,
                O=>XLXN_120);
   
   I_36_520 : XOR2
      port map (I0=>XLXN_17,
                I1=>XLXN_120,
                O=>XLXN_20);
   
   I_36_528 : AND8_MXILINX_sch
      port map (I0=>Q_DUMMY(7),
                I1=>Q_DUMMY(6),
                I2=>Q_DUMMY(5),
                I3=>Q_DUMMY(4),
                I4=>Q_DUMMY(3),
                I5=>Q_DUMMY(2),
                I6=>Q_DUMMY(1),
                I7=>Q_DUMMY(0),
                O=>TCU_DUMMY);
   
   I_36_618 : OR2
      port map (I0=>XLXN_121,
                I1=>L,
                O=>XLXN_15);
   
   I_36_625 : GND
      port map (G=>XLXN_121);
   
   I_36_632 : INV
      port map (I=>XLXN_15,
                O=>XLXN_44);
   
   I_36_655 : AND3B1
      port map (I0=>XLXN_15,
                I1=>CEU_I,
                I2=>TCU_DUMMY,
                O=>XLXN_18);
   
   I_36_660 : AND9_MXILINX_sch
      port map (I0=>XLXN_40,
                I1=>XLXN_39,
                I2=>XLXN_38,
                I3=>XLXN_37,
                I4=>XLXN_36,
                I5=>XLXN_35,
                I6=>XLXN_34,
                I7=>Q_DUMMY(0),
                I8=>XLXN_16,
                O=>XLXN_41);
   
   I_36_661 : INV
      port map (I=>XLXN_15,
                O=>XLXN_16);
   
   I_36_665 : INV
      port map (I=>Q_DUMMY(1),
                O=>XLXN_34);
   
   I_36_667 : INV
      port map (I=>Q_DUMMY(2),
                O=>XLXN_35);
   
   I_36_669 : INV
      port map (I=>Q_DUMMY(3),
                O=>XLXN_36);
   
   I_36_671 : INV
      port map (I=>Q_DUMMY(4),
                O=>XLXN_37);
   
   I_36_673 : INV
      port map (I=>Q_DUMMY(5),
                O=>XLXN_38);
   
   I_36_675 : INV
      port map (I=>Q_DUMMY(6),
                O=>XLXN_39);
   
   I_36_677 : INV
      port map (I=>Q_DUMMY(7),
                O=>XLXN_40);
   
   I_36_696 : AND2B1
      port map (I0=>CEU_I,
                I1=>XLXN_13,
                O=>XLXN_129);
   
   I_36_699 : AND2
      port map (I0=>XLXN_41,
                I1=>XLXN_129,
                O=>XLXN_22);
   
   I_36_704 : AND9_MXILINX_sch
      port map (I0=>XLXN_25,
                I1=>XLXN_26,
                I2=>XLXN_27,
                I3=>XLXN_28,
                I4=>XLXN_29,
                I5=>XLXN_30,
                I6=>XLXN_31,
                I7=>XLXN_33,
                I8=>XLXN_32,
                O=>XLXN_24);
   
   I_36_706 : INV
      port map (I=>XLXN_15,
                O=>XLXN_32);
   
   I_36_709 : INV
      port map (I=>Q_DUMMY(1),
                O=>XLXN_31);
   
   I_36_711 : INV
      port map (I=>Q_DUMMY(2),
                O=>XLXN_30);
   
   I_36_713 : INV
      port map (I=>Q_DUMMY(3),
                O=>XLXN_29);
   
   I_36_715 : INV
      port map (I=>Q_DUMMY(4),
                O=>XLXN_28);
   
   I_36_717 : INV
      port map (I=>Q_DUMMY(5),
                O=>XLXN_27);
   
   I_36_719 : INV
      port map (I=>Q_DUMMY(6),
                O=>XLXN_26);
   
   I_36_721 : INV
      port map (I=>Q_DUMMY(7),
                O=>XLXN_25);
   
   I_36_724 : AND2B2
      port map (I0=>CEU_I,
                I1=>XLXN_13,
                O=>XLXN_130);
   
   I_36_726 : AND2
      port map (I0=>XLXN_24,
                I1=>XLXN_130,
                O=>XLXN_23);
   
   I_36_736 : INV
      port map (I=>Q_DUMMY(0),
                O=>XLXN_33);
   
   I_36_751 : INV
      port map (I=>D(7),
                O=>XLXN_138);
   
   I_36_753 : INV
      port map (I=>D(6),
                O=>XLXN_137);
   
   I_36_755 : INV
      port map (I=>D(5),
                O=>XLXN_136);
   
   I_36_757 : INV
      port map (I=>D(4),
                O=>XLXN_135);
   
   I_36_759 : INV
      port map (I=>D(3),
                O=>XLXN_134);
   
   I_36_761 : INV
      port map (I=>D(2),
                O=>XLXN_133);
   
   I_36_763 : INV
      port map (I=>D(1),
                O=>XLXN_132);
   
   I_36_765 : INV
      port map (I=>D(0),
                O=>XLXN_131);
   
   I_36_776 : AND9_MXILINX_sch
      port map (I0=>XLXN_138,
                I1=>XLXN_137,
                I2=>XLXN_136,
                I3=>XLXN_135,
                I4=>XLXN_134,
                I5=>XLXN_133,
                I6=>XLXN_132,
                I7=>XLXN_131,
                I8=>XLXN_15,
                O=>XLXN_21);
   
   I_36_780 : NOR4
      port map (I0=>XLXN_21,
                I1=>XLXN_23,
                I2=>XLXN_22,
                I3=>XLXN_18,
                O=>XLXN_19);
   
   I_36_799 : AND3B1
      port map (I0=>CEU_I,
                I1=>XLXN_13,
                I2=>TCD_DUMMY,
                O=>CEOD);
   
   I_36_800 : INV
      port map (I=>XLXN_14,
                O=>TCD_DUMMY);
   
   I_36_812 : OR2
      port map (I0=>XLXN_121,
                I1=>CED,
                O=>XLXN_13);
   
   I_36_818 : OR2
      port map (I0=>XLXN_121,
                I1=>CEU,
                O=>CEU_I);
   
   I_36_823 : AND2
      port map (I0=>CEU_I,
                I1=>XLXN_12,
                O=>CEOU);
   
   I_36_824 : AND8_MXILINX_sch
      port map (I0=>Q_DUMMY(0),
                I1=>Q_DUMMY(1),
                I2=>Q_DUMMY(2),
                I3=>Q_DUMMY(3),
                I4=>Q_DUMMY(4),
                I5=>Q_DUMMY(5),
                I6=>Q_DUMMY(6),
                I7=>Q_DUMMY(7),
                O=>XLXN_12);
   
   Q0 : FDC_MXILINX_sch
      port map (C=>C,
                CLR=>CLR,
                D=>XLXN_61,
                Q=>Q_DUMMY(0));
   
   Q1 : FDC_MXILINX_sch
      port map (C=>C,
                CLR=>CLR,
                D=>XLXN_60,
                Q=>Q_DUMMY(1));
   
   Q2 : FDC_MXILINX_sch
      port map (C=>C,
                CLR=>CLR,
                D=>XLXN_59,
                Q=>Q_DUMMY(2));
   
   Q3 : FDC_MXILINX_sch
      port map (C=>C,
                CLR=>CLR,
                D=>XLXN_58,
                Q=>Q_DUMMY(3));
   
   Q4 : FDC_MXILINX_sch
      port map (C=>C,
                CLR=>CLR,
                D=>XLXN_57,
                Q=>Q_DUMMY(4));
   
   Q5 : FDC_MXILINX_sch
      port map (C=>C,
                CLR=>CLR,
                D=>XLXN_56,
                Q=>Q_DUMMY(5));
   
   Q6 : FDC_MXILINX_sch
      port map (C=>C,
                CLR=>CLR,
                D=>XLXN_55,
                Q=>Q_DUMMY(6));
   
   Q7 : FDC_MXILINX_sch
      port map (C=>C,
                CLR=>CLR,
                D=>XLXN_20,
                Q=>Q_DUMMY(7));
   
   TCDINV : FDC_MXILINX_sch
      port map (C=>C,
                CLR=>CLR,
                D=>XLXN_19,
                Q=>XLXN_14);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity CB16X1_MXILINX_sch is
   port ( C    : in    std_logic; 
          CED  : in    std_logic; 
          CEU  : in    std_logic; 
          CLR  : in    std_logic; 
          D    : in    std_logic_vector (15 downto 0); 
          L    : in    std_logic; 
          CEOD : out   std_logic; 
          CEOU : out   std_logic; 
          Q    : out   std_logic_vector (15 downto 0); 
          TCD  : out   std_logic; 
          TCU  : out   std_logic);
end CB16X1_MXILINX_sch;

architecture BEHAVIORAL of CB16X1_MXILINX_sch is
   attribute HU_SET     : string ;
   attribute BOX_TYPE   : string ;
   signal XLXN_15 : std_logic;
   signal XLXN_16 : std_logic;
   signal XLXN_17 : std_logic;
   signal XLXN_18 : std_logic;
   signal XLXN_19 : std_logic;
   signal XLXN_20 : std_logic;
   component CB8X1_MXILINX_sch
      port ( C    : in    std_logic; 
             CED  : in    std_logic; 
             CEU  : in    std_logic; 
             CLR  : in    std_logic; 
             D    : in    std_logic_vector (7 downto 0); 
             L    : in    std_logic; 
             CEOD : out   std_logic; 
             CEOU : out   std_logic; 
             Q    : out   std_logic_vector (7 downto 0); 
             TCD  : out   std_logic; 
             TCU  : out   std_logic);
   end component;
   
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
   attribute HU_SET of CB0 : label is "CB0_25";
   attribute HU_SET of CB8 : label is "CB8_26";
begin
   CB0 : CB8X1_MXILINX_sch
      port map (C=>C,
                CED=>CED,
                CEU=>CEU,
                CLR=>CLR,
                D(7 downto 0)=>D(7 downto 0),
                L=>L,
                CEOD=>XLXN_19,
                CEOU=>XLXN_20,
                Q(7 downto 0)=>Q(7 downto 0),
                TCD=>XLXN_18,
                TCU=>XLXN_16);
   
   CB8 : CB8X1_MXILINX_sch
      port map (C=>C,
                CED=>XLXN_19,
                CEU=>XLXN_20,
                CLR=>CLR,
                D(7 downto 0)=>D(15 downto 8),
                L=>L,
                CEOD=>CEOD,
                CEOU=>CEOU,
                Q(7 downto 0)=>Q(15 downto 8),
                TCD=>XLXN_17,
                TCU=>XLXN_15);
   
   I_36_165 : AND2
      port map (I0=>XLXN_15,
                I1=>XLXN_16,
                O=>TCU);
   
   I_36_166 : AND2
      port map (I0=>XLXN_17,
                I1=>XLXN_18,
                O=>TCD);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity LD16_MXILINX_sch is
   port ( D : in    std_logic_vector (15 downto 0); 
          G : in    std_logic; 
          Q : out   std_logic_vector (15 downto 0));
end LD16_MXILINX_sch;

architecture BEHAVIORAL of LD16_MXILINX_sch is
   attribute BOX_TYPE   : string ;
   component LD
      generic( INIT : bit :=  '0');
      port ( D : in    std_logic; 
             G : in    std_logic; 
             Q : out   std_logic);
   end component;
   attribute BOX_TYPE of LD : component is "BLACK_BOX";
   
begin
   Q0 : LD
      port map (D=>D(0),
                G=>G,
                Q=>Q(0));
   
   Q1 : LD
      port map (D=>D(1),
                G=>G,
                Q=>Q(1));
   
   Q2 : LD
      port map (D=>D(2),
                G=>G,
                Q=>Q(2));
   
   Q3 : LD
      port map (D=>D(3),
                G=>G,
                Q=>Q(3));
   
   Q4 : LD
      port map (D=>D(4),
                G=>G,
                Q=>Q(4));
   
   Q5 : LD
      port map (D=>D(5),
                G=>G,
                Q=>Q(5));
   
   Q6 : LD
      port map (D=>D(6),
                G=>G,
                Q=>Q(6));
   
   Q7 : LD
      port map (D=>D(7),
                G=>G,
                Q=>Q(7));
   
   Q8 : LD
      port map (D=>D(8),
                G=>G,
                Q=>Q(8));
   
   Q9 : LD
      port map (D=>D(9),
                G=>G,
                Q=>Q(9));
   
   Q10 : LD
      port map (D=>D(10),
                G=>G,
                Q=>Q(10));
   
   Q11 : LD
      port map (D=>D(11),
                G=>G,
                Q=>Q(11));
   
   Q12 : LD
      port map (D=>D(12),
                G=>G,
                Q=>Q(12));
   
   Q13 : LD
      port map (D=>D(13),
                G=>G,
                Q=>Q(13));
   
   Q14 : LD
      port map (D=>D(14),
                G=>G,
                Q=>Q(14));
   
   Q15 : LD
      port map (D=>D(15),
                G=>G,
                Q=>Q(15));
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity D4_16E_MXILINX_sch is
   port ( A0  : in    std_logic; 
          A1  : in    std_logic; 
          A2  : in    std_logic; 
          A3  : in    std_logic; 
          E   : in    std_logic; 
          D0  : out   std_logic; 
          D1  : out   std_logic; 
          D2  : out   std_logic; 
          D3  : out   std_logic; 
          D4  : out   std_logic; 
          D5  : out   std_logic; 
          D6  : out   std_logic; 
          D7  : out   std_logic; 
          D8  : out   std_logic; 
          D9  : out   std_logic; 
          D10 : out   std_logic; 
          D11 : out   std_logic; 
          D12 : out   std_logic; 
          D13 : out   std_logic; 
          D14 : out   std_logic; 
          D15 : out   std_logic);
end D4_16E_MXILINX_sch;

architecture BEHAVIORAL of D4_16E_MXILINX_sch is
   attribute BOX_TYPE   : string ;
   component AND5B3
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             I4 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND5B3 : component is "BLACK_BOX";
   
   component AND5B2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             I4 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND5B2 : component is "BLACK_BOX";
   
   component AND5B1
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             I4 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND5B1 : component is "BLACK_BOX";
   
   component AND5
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             I4 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND5 : component is "BLACK_BOX";
   
   component AND5B4
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             I4 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND5B4 : component is "BLACK_BOX";
   
begin
   I_36_53 : AND5B3
      port map (I0=>A0,
                I1=>A1,
                I2=>A2,
                I3=>A3,
                I4=>E,
                O=>D8);
   
   I_36_54 : AND5B2
      port map (I0=>A1,
                I1=>A2,
                I2=>E,
                I3=>A3,
                I4=>A0,
                O=>D9);
   
   I_36_55 : AND5B2
      port map (I0=>A0,
                I1=>A2,
                I2=>E,
                I3=>A3,
                I4=>A1,
                O=>D10);
   
   I_36_56 : AND5B1
      port map (I0=>A2,
                I1=>A0,
                I2=>A1,
                I3=>A3,
                I4=>E,
                O=>D11);
   
   I_36_57 : AND5B2
      port map (I0=>A0,
                I1=>A1,
                I2=>E,
                I3=>A3,
                I4=>A2,
                O=>D12);
   
   I_36_58 : AND5B1
      port map (I0=>A1,
                I1=>A0,
                I2=>A2,
                I3=>A3,
                I4=>E,
                O=>D13);
   
   I_36_59 : AND5B1
      port map (I0=>A0,
                I1=>A1,
                I2=>A2,
                I3=>A3,
                I4=>E,
                O=>D14);
   
   I_36_60 : AND5
      port map (I0=>A3,
                I1=>A2,
                I2=>A1,
                I3=>A0,
                I4=>E,
                O=>D15);
   
   I_36_61 : AND5B2
      port map (I0=>A3,
                I1=>A0,
                I2=>E,
                I3=>A2,
                I4=>A1,
                O=>D6);
   
   I_36_62 : AND5B1
      port map (I0=>A3,
                I1=>A2,
                I2=>A1,
                I3=>A0,
                I4=>E,
                O=>D7);
   
   I_36_63 : AND5B2
      port map (I0=>A3,
                I1=>A1,
                I2=>E,
                I3=>A2,
                I4=>A0,
                O=>D5);
   
   I_36_64 : AND5B3
      port map (I0=>A0,
                I1=>A1,
                I2=>A3,
                I3=>A2,
                I4=>E,
                O=>D4);
   
   I_36_65 : AND5B2
      port map (I0=>A2,
                I1=>A3,
                I2=>E,
                I3=>A0,
                I4=>A1,
                O=>D3);
   
   I_36_66 : AND5B3
      port map (I0=>A0,
                I1=>A3,
                I2=>A2,
                I3=>A1,
                I4=>E,
                O=>D2);
   
   I_36_67 : AND5B3
      port map (I0=>A1,
                I1=>A2,
                I2=>A3,
                I3=>A0,
                I4=>E,
                O=>D1);
   
   I_36_68 : AND5B4
      port map (I0=>A3,
                I1=>A2,
                I2=>A1,
                I3=>A0,
                I4=>E,
                O=>D0);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity sch is
   port ( COUNT_EN     : in    std_logic; 
          DDS_FREQ     : in    std_logic; 
          Freq_control : in    std_logic_vector (3 downto 0); 
          IN_10MHz     : in    std_logic; 
          CPU_IRQ      : out   std_logic; 
          DAC_LDAC     : out   std_logic);
end sch;

architecture BEHAVIORAL of sch is
   attribute HU_SET     : string ;
   attribute BOX_TYPE   : string ;
   signal CFG_N_1                     : std_logic_vector (15 downto 0);
   signal CFG_N_2                     : std_logic_vector (15 downto 0);
   signal cnt_cmpl                    : std_logic;
   signal Delay_plus_100ns            : std_logic;
   signal Delay_plus_200ns_after_LDAC : std_logic;
   signal Delay_0_to_100ns            : std_logic;
   signal Delay_100ns_to_200ns        : std_logic;
   signal Enable_sig                  : std_logic;
   signal Output_enable               : std_logic;
   signal XLXN_110                    : std_logic;
   signal XLXN_111                    : std_logic;
   signal XLXN_168                    : std_logic;
   signal XLXN_169                    : std_logic;
   signal XLXN_171                    : std_logic;
   signal XLXN_175                    : std_logic;
   signal XLXN_176                    : std_logic;
   signal XLXN_203                    : std_logic;
   signal XLXN_204                    : std_logic;
   signal XLXN_222                    : std_logic;
   signal XLXN_224                    : std_logic;
   component LD16_MXILINX_sch
      port ( D : in    std_logic_vector (15 downto 0); 
             G : in    std_logic; 
             Q : out   std_logic_vector (15 downto 0));
   end component;
   
   component D4_16E_MXILINX_sch
      port ( A0  : in    std_logic; 
             A1  : in    std_logic; 
             A2  : in    std_logic; 
             A3  : in    std_logic; 
             E   : in    std_logic; 
             D0  : out   std_logic; 
             D1  : out   std_logic; 
             D10 : out   std_logic; 
             D11 : out   std_logic; 
             D12 : out   std_logic; 
             D13 : out   std_logic; 
             D14 : out   std_logic; 
             D15 : out   std_logic; 
             D2  : out   std_logic; 
             D3  : out   std_logic; 
             D4  : out   std_logic; 
             D5  : out   std_logic; 
             D6  : out   std_logic; 
             D7  : out   std_logic; 
             D8  : out   std_logic; 
             D9  : out   std_logic);
   end component;
   
   component LD
      generic( INIT : bit :=  '0');
      port ( D : in    std_logic; 
             G : in    std_logic; 
             Q : out   std_logic);
   end component;
   attribute BOX_TYPE of LD : component is "BLACK_BOX";
   
   component GND
      port ( G : out   std_logic);
   end component;
   attribute BOX_TYPE of GND : component is "BLACK_BOX";
   
   component CB16X1_MXILINX_sch
      port ( C    : in    std_logic; 
             CED  : in    std_logic; 
             CEU  : in    std_logic; 
             CLR  : in    std_logic; 
             D    : in    std_logic_vector (15 downto 0); 
             L    : in    std_logic; 
             CEOD : out   std_logic; 
             CEOU : out   std_logic; 
             Q    : out   std_logic_vector (15 downto 0); 
             TCD  : out   std_logic; 
             TCU  : out   std_logic);
   end component;
   
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
   component VCC
      port ( P : out   std_logic);
   end component;
   attribute BOX_TYPE of VCC : component is "BLACK_BOX";
   
   component D2_4E_MXILINX_sch
      port ( A0 : in    std_logic; 
             A1 : in    std_logic; 
             E  : in    std_logic; 
             D0 : out   std_logic; 
             D1 : out   std_logic; 
             D2 : out   std_logic; 
             D3 : out   std_logic);
   end component;
   
   component CB2CE_MXILINX_sch
      port ( C   : in    std_logic; 
             CE  : in    std_logic; 
             CLR : in    std_logic; 
             CEO : out   std_logic; 
             Q0  : out   std_logic; 
             Q1  : out   std_logic; 
             TC  : out   std_logic);
   end component;
   
   component OR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2 : component is "BLACK_BOX";
   
   attribute HU_SET of CFG_L : label is "CFG_L_28";
   attribute HU_SET of XLXI_1 : label is "XLXI_1_27";
   attribute HU_SET of XLXI_12 : label is "XLXI_12_29";
   attribute HU_SET of XLXI_61 : label is "XLXI_61_31";
   attribute HU_SET of XLXI_62 : label is "XLXI_62_30";
begin
   CFG_L : LD16_MXILINX_sch
      port map (D(15 downto 0)=>CFG_N_1(15 downto 0),
                G=>COUNT_EN,
                Q(15 downto 0)=>CFG_N_2(15 downto 0));
   
   XLXI_1 : D4_16E_MXILINX_sch
      port map (A0=>Freq_control(0),
                A1=>Freq_control(1),
                A2=>Freq_control(2),
                A3=>Freq_control(3),
                E=>COUNT_EN,
                D0=>Enable_sig,
                D1=>CFG_N_1(1),
                D2=>CFG_N_1(2),
                D3=>CFG_N_1(3),
                D4=>CFG_N_1(4),
                D5=>CFG_N_1(5),
                D6=>CFG_N_1(6),
                D7=>CFG_N_1(7),
                D8=>CFG_N_1(8),
                D9=>CFG_N_1(9),
                D10=>CFG_N_1(10),
                D11=>CFG_N_1(11),
                D12=>CFG_N_1(12),
                D13=>CFG_N_1(13),
                D14=>CFG_N_1(14),
                D15=>CFG_N_1(15));
   
   XLXI_3 : LD
      port map (D=>Enable_sig,
                G=>COUNT_EN,
                Q=>XLXN_169);
   
   XLXI_10 : GND
      port map (G=>CFG_N_1(0));
   
   XLXI_12 : CB16X1_MXILINX_sch
      port map (C=>DDS_FREQ,
                CED=>XLXN_171,
                CEU=>XLXN_168,
                CLR=>XLXN_168,
                D(15 downto 0)=>CFG_N_2(15 downto 0),
                L=>cnt_cmpl,
                CEOD=>open,
                CEOU=>open,
                Q=>open,
                TCD=>cnt_cmpl,
                TCU=>open);
   
   XLXI_19 : INV
      port map (I=>XLXN_110,
                O=>DAC_LDAC);
   
   XLXI_21 : AND2
      port map (I0=>XLXN_111,
                I1=>Output_enable,
                O=>XLXN_110);
   
   XLXI_55 : VCC
      port map (P=>XLXN_171);
   
   XLXI_56 : GND
      port map (G=>XLXN_168);
   
   XLXI_57 : INV
      port map (I=>XLXN_169,
                O=>Output_enable);
   
   XLXI_59 : AND2
      port map (I0=>Delay_plus_200ns_after_LDAC,
                I1=>Output_enable,
                O=>CPU_IRQ);
   
   XLXI_61 : D2_4E_MXILINX_sch
      port map (A0=>XLXN_175,
                A1=>XLXN_176,
                E=>XLXN_222,
                D0=>Delay_0_to_100ns,
                D1=>Delay_plus_100ns,
                D2=>XLXN_203,
                D3=>XLXN_204);
   
   XLXI_62 : CB2CE_MXILINX_sch
      port map (C=>IN_10MHz,
                CE=>cnt_cmpl,
                CLR=>XLXN_224,
                CEO=>open,
                Q0=>XLXN_175,
                Q1=>XLXN_176,
                TC=>open);
   
   XLXI_63 : OR2
      port map (I0=>Delay_plus_100ns,
                I1=>Delay_0_to_100ns,
                O=>Delay_100ns_to_200ns);
   
   XLXI_72 : OR2
      port map (I0=>XLXN_204,
                I1=>XLXN_203,
                O=>Delay_plus_200ns_after_LDAC);
   
   XLXI_75 : VCC
      port map (P=>XLXN_222);
   
   XLXI_82 : AND2
      port map (I0=>Delay_100ns_to_200ns,
                I1=>cnt_cmpl,
                O=>XLXN_111);
   
   XLXI_83 : GND
      port map (G=>XLXN_224);
   
end BEHAVIORAL;


