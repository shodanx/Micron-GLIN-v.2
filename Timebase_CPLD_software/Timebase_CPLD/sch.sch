<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="xc9500xl" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <attr value="Always|BaseDashIndex" name="RenameBusIO" />
    <netlist>
        <signal name="CFG_N_1(15:0)" />
        <signal name="CFG_N_1(15)" />
        <signal name="CFG_N_1(14)" />
        <signal name="CFG_N_1(13)" />
        <signal name="CFG_N_1(12)" />
        <signal name="CFG_N_1(11)" />
        <signal name="CFG_N_1(1)" />
        <signal name="CFG_N_1(2)" />
        <signal name="CFG_N_1(3)" />
        <signal name="CFG_N_1(4)" />
        <signal name="CFG_N_1(5)" />
        <signal name="CFG_N_1(6)" />
        <signal name="CFG_N_1(7)" />
        <signal name="CFG_N_1(8)" />
        <signal name="CFG_N_1(9)" />
        <signal name="CFG_N_1(10)" />
        <signal name="Freq_control(3:0)" />
        <signal name="Freq_control(0)" />
        <signal name="Freq_control(1)" />
        <signal name="Freq_control(2)" />
        <signal name="Freq_control(3)" />
        <signal name="Enable_sig" />
        <signal name="CFG_N_1(0)" />
        <signal name="COUNT_EN" />
        <signal name="XLXN_111" />
        <signal name="XLXN_168" />
        <signal name="CFG_N_2(15:0)" />
        <signal name="XLXN_169" />
        <signal name="Output_enable" />
        <signal name="XLXN_171" />
        <signal name="XLXN_176" />
        <signal name="XLXN_175" />
        <signal name="Hold_LDAC_100ns_to_200ns" />
        <signal name="Hold_IRQ_after_LDAC" />
        <signal name="DAC_LDAC" />
        <signal name="XLXN_110" />
        <signal name="Delay_0_to_100ns" />
        <signal name="Delay_plus_100ns" />
        <signal name="XLXN_203" />
        <signal name="XLXN_204" />
        <signal name="XLXN_222" />
        <signal name="XLXN_226" />
        <signal name="DDS_FREQ" />
        <signal name="XLXN_228" />
        <signal name="IN_10MHz" />
        <signal name="dds_timer_OL" />
        <signal name="Block_timer_after_overload_until_new_cycle" />
        <signal name="XLXN_239" />
        <signal name="XLXN_243" />
        <signal name="CPU_IRQ" />
        <signal name="Block_IRQ_afrer_timeout" />
        <port polarity="Input" name="Freq_control(3:0)" />
        <port polarity="Input" name="COUNT_EN" />
        <port polarity="Output" name="DAC_LDAC" />
        <port polarity="Input" name="DDS_FREQ" />
        <port polarity="Input" name="IN_10MHz" />
        <port polarity="Output" name="CPU_IRQ" />
        <blockdef name="d4_16e">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <rect width="256" x="64" y="-1152" height="1088" />
            <line x2="320" y1="-1088" y2="-1088" x1="384" />
            <line x2="320" y1="-1024" y2="-1024" x1="384" />
            <line x2="320" y1="-960" y2="-960" x1="384" />
            <line x2="320" y1="-896" y2="-896" x1="384" />
            <line x2="320" y1="-832" y2="-832" x1="384" />
            <line x2="320" y1="-768" y2="-768" x1="384" />
            <line x2="320" y1="-704" y2="-704" x1="384" />
            <line x2="320" y1="-640" y2="-640" x1="384" />
            <line x2="320" y1="-576" y2="-576" x1="384" />
            <line x2="320" y1="-512" y2="-512" x1="384" />
            <line x2="320" y1="-448" y2="-448" x1="384" />
            <line x2="320" y1="-384" y2="-384" x1="384" />
            <line x2="320" y1="-320" y2="-320" x1="384" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="320" y1="-192" y2="-192" x1="384" />
            <line x2="320" y1="-128" y2="-128" x1="384" />
            <line x2="64" y1="-896" y2="-896" x1="0" />
            <line x2="64" y1="-960" y2="-960" x1="0" />
            <line x2="64" y1="-1024" y2="-1024" x1="0" />
            <line x2="64" y1="-1088" y2="-1088" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
        </blockdef>
        <blockdef name="ld16">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <rect width="256" x="64" y="-320" height="256" />
            <rect width="64" x="320" y="-268" height="24" />
            <rect width="64" x="0" y="-268" height="24" />
        </blockdef>
        <blockdef name="ld">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <rect width="256" x="64" y="-320" height="256" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
        </blockdef>
        <blockdef name="gnd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-128" y2="-96" x1="64" />
            <line x2="64" y1="-64" y2="-80" x1="64" />
            <line x2="40" y1="-64" y2="-64" x1="88" />
            <line x2="60" y1="-32" y2="-32" x1="68" />
            <line x2="52" y1="-48" y2="-48" x1="76" />
            <line x2="64" y1="-64" y2="-96" x1="64" />
        </blockdef>
        <blockdef name="cb16x1">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="224" />
            <line x2="224" y1="-64" y2="-32" x1="224" />
            <line x2="384" y1="-320" y2="-320" x1="448" />
            <line x2="384" y1="-384" y2="-384" x1="448" />
            <line x2="64" y1="-320" y2="-320" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <rect width="64" x="0" y="-460" height="24" />
            <line x2="64" y1="-448" y2="-448" x1="0" />
            <line x2="384" y1="-448" y2="-448" x1="448" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <rect width="64" x="384" y="-460" height="24" />
            <line x2="384" y1="-256" y2="-256" x1="448" />
            <line x2="384" y1="-192" y2="-192" x1="448" />
            <rect width="320" x="64" y="-512" height="448" />
        </blockdef>
        <blockdef name="or2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="192" ey="-96" sx="112" sy="-48" r="88" cx="116" cy="-136" />
            <arc ex="48" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <line x2="48" y1="-144" y2="-144" x1="112" />
            <arc ex="112" ey="-144" sx="192" sy="-96" r="88" cx="116" cy="-56" />
            <line x2="48" y1="-48" y2="-48" x1="112" />
        </blockdef>
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <blockdef name="and2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
        </blockdef>
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="32" y1="-64" y2="-64" x1="96" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="-64" x1="64" />
        </blockdef>
        <blockdef name="d2_4e">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <rect width="256" x="64" y="-384" height="320" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="64" y1="-320" y2="-320" x1="0" />
            <line x2="320" y1="-128" y2="-128" x1="384" />
            <line x2="320" y1="-192" y2="-192" x1="384" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="320" y1="-320" y2="-320" x1="384" />
        </blockdef>
        <blockdef name="cb2ce">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <rect width="256" x="64" y="-384" height="320" />
            <line x2="320" y1="-128" y2="-128" x1="384" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <line x2="64" y1="-32" y2="-32" x1="192" />
            <line x2="192" y1="-64" y2="-32" x1="192" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="320" y1="-192" y2="-192" x1="384" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="320" y1="-320" y2="-320" x1="384" />
        </blockdef>
        <blockdef name="bufg">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="128" y1="0" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="-64" x1="128" />
            <line x2="64" y1="-64" y2="0" x1="64" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
        </blockdef>
        <blockdef name="and3">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="192" y1="-128" y2="-128" x1="256" />
            <line x2="144" y1="-176" y2="-176" x1="64" />
            <line x2="64" y1="-80" y2="-80" x1="144" />
            <arc ex="144" ey="-176" sx="144" sy="-80" r="48" cx="144" cy="-128" />
            <line x2="64" y1="-64" y2="-192" x1="64" />
        </blockdef>
        <block symbolname="d4_16e" name="XLXI_1">
            <blockpin signalname="Freq_control(0)" name="A0" />
            <blockpin signalname="Freq_control(1)" name="A1" />
            <blockpin signalname="Freq_control(2)" name="A2" />
            <blockpin signalname="Freq_control(3)" name="A3" />
            <blockpin signalname="COUNT_EN" name="E" />
            <blockpin signalname="Enable_sig" name="D0" />
            <blockpin signalname="CFG_N_1(1)" name="D1" />
            <blockpin signalname="CFG_N_1(10)" name="D10" />
            <blockpin signalname="CFG_N_1(11)" name="D11" />
            <blockpin signalname="CFG_N_1(12)" name="D12" />
            <blockpin signalname="CFG_N_1(13)" name="D13" />
            <blockpin signalname="CFG_N_1(14)" name="D14" />
            <blockpin signalname="CFG_N_1(15)" name="D15" />
            <blockpin signalname="CFG_N_1(2)" name="D2" />
            <blockpin signalname="CFG_N_1(3)" name="D3" />
            <blockpin signalname="CFG_N_1(4)" name="D4" />
            <blockpin signalname="CFG_N_1(5)" name="D5" />
            <blockpin signalname="CFG_N_1(6)" name="D6" />
            <blockpin signalname="CFG_N_1(7)" name="D7" />
            <blockpin signalname="CFG_N_1(8)" name="D8" />
            <blockpin signalname="CFG_N_1(9)" name="D9" />
        </block>
        <block symbolname="ld16" name="CFG_L">
            <blockpin signalname="CFG_N_1(15:0)" name="D(15:0)" />
            <blockpin signalname="COUNT_EN" name="G" />
            <blockpin signalname="CFG_N_2(15:0)" name="Q(15:0)" />
        </block>
        <block symbolname="ld" name="XLXI_3">
            <blockpin signalname="Enable_sig" name="D" />
            <blockpin signalname="COUNT_EN" name="G" />
            <blockpin signalname="XLXN_169" name="Q" />
        </block>
        <block symbolname="gnd" name="XLXI_10">
            <blockpin signalname="CFG_N_1(0)" name="G" />
        </block>
        <block symbolname="cb16x1" name="XLXI_12">
            <blockpin signalname="XLXN_226" name="C" />
            <blockpin signalname="XLXN_171" name="CED" />
            <blockpin signalname="XLXN_168" name="CEU" />
            <blockpin signalname="XLXN_168" name="CLR" />
            <blockpin signalname="CFG_N_2(15:0)" name="D(15:0)" />
            <blockpin signalname="dds_timer_OL" name="L" />
            <blockpin name="CEOD" />
            <blockpin name="CEOU" />
            <blockpin name="Q(15:0)" />
            <blockpin signalname="dds_timer_OL" name="TCD" />
            <blockpin name="TCU" />
        </block>
        <block symbolname="vcc" name="XLXI_55">
            <blockpin signalname="XLXN_171" name="P" />
        </block>
        <block symbolname="gnd" name="XLXI_56">
            <blockpin signalname="XLXN_168" name="G" />
        </block>
        <block symbolname="inv" name="XLXI_57">
            <blockpin signalname="XLXN_169" name="I" />
            <blockpin signalname="Output_enable" name="O" />
        </block>
        <block symbolname="cb2ce" name="XLXI_62">
            <blockpin signalname="XLXN_228" name="C" />
            <blockpin signalname="XLXN_239" name="CE" />
            <blockpin signalname="XLXN_243" name="CLR" />
            <blockpin name="CEO" />
            <blockpin signalname="XLXN_175" name="Q0" />
            <blockpin signalname="XLXN_176" name="Q1" />
            <blockpin signalname="Block_timer_after_overload_until_new_cycle" name="TC" />
        </block>
        <block symbolname="inv" name="XLXI_19">
            <blockpin signalname="XLXN_110" name="I" />
            <blockpin signalname="DAC_LDAC" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_21">
            <blockpin signalname="XLXN_111" name="I0" />
            <blockpin signalname="Output_enable" name="I1" />
            <blockpin signalname="XLXN_110" name="O" />
        </block>
        <block symbolname="vcc" name="XLXI_75">
            <blockpin signalname="XLXN_222" name="P" />
        </block>
        <block symbolname="d2_4e" name="XLXI_61">
            <blockpin signalname="XLXN_175" name="A0" />
            <blockpin signalname="XLXN_176" name="A1" />
            <blockpin signalname="XLXN_222" name="E" />
            <blockpin signalname="Delay_0_to_100ns" name="D0" />
            <blockpin signalname="Delay_plus_100ns" name="D1" />
            <blockpin signalname="XLXN_203" name="D2" />
            <blockpin signalname="XLXN_204" name="D3" />
        </block>
        <block symbolname="or2" name="XLXI_63">
            <blockpin signalname="Delay_plus_100ns" name="I0" />
            <blockpin signalname="Delay_0_to_100ns" name="I1" />
            <blockpin signalname="Hold_LDAC_100ns_to_200ns" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_72">
            <blockpin signalname="XLXN_204" name="I0" />
            <blockpin signalname="XLXN_203" name="I1" />
            <blockpin signalname="Hold_IRQ_after_LDAC" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_82">
            <blockpin signalname="Hold_LDAC_100ns_to_200ns" name="I0" />
            <blockpin signalname="dds_timer_OL" name="I1" />
            <blockpin signalname="XLXN_111" name="O" />
        </block>
        <block symbolname="bufg" name="XLXI_85">
            <blockpin signalname="DDS_FREQ" name="I" />
            <blockpin signalname="XLXN_226" name="O" />
        </block>
        <block symbolname="bufg" name="XLXI_86">
            <blockpin signalname="IN_10MHz" name="I" />
            <blockpin signalname="XLXN_228" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_87">
            <blockpin signalname="Block_timer_after_overload_until_new_cycle" name="I" />
            <blockpin signalname="XLXN_239" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_91">
            <blockpin signalname="dds_timer_OL" name="I" />
            <blockpin signalname="XLXN_243" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_92">
            <blockpin signalname="Block_timer_after_overload_until_new_cycle" name="I" />
            <blockpin signalname="Block_IRQ_afrer_timeout" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_93">
            <blockpin signalname="Block_IRQ_afrer_timeout" name="I0" />
            <blockpin signalname="Hold_IRQ_after_LDAC" name="I1" />
            <blockpin signalname="Output_enable" name="I2" />
            <blockpin signalname="CPU_IRQ" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="5440" height="3520">
        <branch name="CFG_N_1(15:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1504" y="640" type="branch" />
            <wire x2="1456" y1="640" y2="672" x1="1456" />
            <wire x2="1456" y1="672" y2="736" x1="1456" />
            <wire x2="1456" y1="736" y2="800" x1="1456" />
            <wire x2="1456" y1="800" y2="864" x1="1456" />
            <wire x2="1456" y1="864" y2="928" x1="1456" />
            <wire x2="1456" y1="928" y2="992" x1="1456" />
            <wire x2="1456" y1="992" y2="1056" x1="1456" />
            <wire x2="1456" y1="1056" y2="1120" x1="1456" />
            <wire x2="1456" y1="1120" y2="1184" x1="1456" />
            <wire x2="1456" y1="1184" y2="1248" x1="1456" />
            <wire x2="1456" y1="1248" y2="1312" x1="1456" />
            <wire x2="1456" y1="1312" y2="1376" x1="1456" />
            <wire x2="1456" y1="1376" y2="1440" x1="1456" />
            <wire x2="1456" y1="1440" y2="1504" x1="1456" />
            <wire x2="1456" y1="1504" y2="1568" x1="1456" />
            <wire x2="1456" y1="1568" y2="1664" x1="1456" />
            <wire x2="1504" y1="640" y2="640" x1="1456" />
            <wire x2="1840" y1="640" y2="640" x1="1504" />
        </branch>
        <bustap x2="1360" y1="672" y2="672" x1="1456" />
        <bustap x2="1360" y1="736" y2="736" x1="1456" />
        <bustap x2="1360" y1="800" y2="800" x1="1456" />
        <bustap x2="1360" y1="864" y2="864" x1="1456" />
        <bustap x2="1360" y1="928" y2="928" x1="1456" />
        <bustap x2="1360" y1="992" y2="992" x1="1456" />
        <bustap x2="1360" y1="1056" y2="1056" x1="1456" />
        <bustap x2="1360" y1="1120" y2="1120" x1="1456" />
        <bustap x2="1360" y1="1184" y2="1184" x1="1456" />
        <bustap x2="1360" y1="1248" y2="1248" x1="1456" />
        <bustap x2="1360" y1="1312" y2="1312" x1="1456" />
        <bustap x2="1360" y1="1376" y2="1376" x1="1456" />
        <bustap x2="1360" y1="1440" y2="1440" x1="1456" />
        <bustap x2="1360" y1="1504" y2="1504" x1="1456" />
        <bustap x2="1360" y1="1568" y2="1568" x1="1456" />
        <branch name="CFG_N_1(15)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1312" y="1568" type="branch" />
            <wire x2="1312" y1="1568" y2="1568" x1="1216" />
            <wire x2="1360" y1="1568" y2="1568" x1="1312" />
        </branch>
        <branch name="CFG_N_1(14)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1312" y="1504" type="branch" />
            <wire x2="1312" y1="1504" y2="1504" x1="1216" />
            <wire x2="1360" y1="1504" y2="1504" x1="1312" />
        </branch>
        <branch name="CFG_N_1(13)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1312" y="1440" type="branch" />
            <wire x2="1312" y1="1440" y2="1440" x1="1216" />
            <wire x2="1360" y1="1440" y2="1440" x1="1312" />
        </branch>
        <branch name="CFG_N_1(12)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1312" y="1376" type="branch" />
            <wire x2="1312" y1="1376" y2="1376" x1="1216" />
            <wire x2="1360" y1="1376" y2="1376" x1="1312" />
        </branch>
        <branch name="CFG_N_1(11)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1312" y="1312" type="branch" />
            <wire x2="1312" y1="1312" y2="1312" x1="1216" />
            <wire x2="1360" y1="1312" y2="1312" x1="1312" />
        </branch>
        <branch name="CFG_N_1(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1312" y="672" type="branch" />
            <wire x2="1312" y1="672" y2="672" x1="1216" />
            <wire x2="1360" y1="672" y2="672" x1="1312" />
        </branch>
        <branch name="CFG_N_1(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1312" y="736" type="branch" />
            <wire x2="1312" y1="736" y2="736" x1="1216" />
            <wire x2="1360" y1="736" y2="736" x1="1312" />
        </branch>
        <branch name="CFG_N_1(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1312" y="800" type="branch" />
            <wire x2="1312" y1="800" y2="800" x1="1216" />
            <wire x2="1360" y1="800" y2="800" x1="1312" />
        </branch>
        <branch name="CFG_N_1(4)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1312" y="864" type="branch" />
            <wire x2="1312" y1="864" y2="864" x1="1216" />
            <wire x2="1360" y1="864" y2="864" x1="1312" />
        </branch>
        <branch name="CFG_N_1(5)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1312" y="928" type="branch" />
            <wire x2="1312" y1="928" y2="928" x1="1216" />
            <wire x2="1360" y1="928" y2="928" x1="1312" />
        </branch>
        <branch name="CFG_N_1(6)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1312" y="992" type="branch" />
            <wire x2="1312" y1="992" y2="992" x1="1216" />
            <wire x2="1360" y1="992" y2="992" x1="1312" />
        </branch>
        <branch name="CFG_N_1(7)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1312" y="1056" type="branch" />
            <wire x2="1312" y1="1056" y2="1056" x1="1216" />
            <wire x2="1360" y1="1056" y2="1056" x1="1312" />
        </branch>
        <branch name="CFG_N_1(8)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1312" y="1120" type="branch" />
            <wire x2="1312" y1="1120" y2="1120" x1="1216" />
            <wire x2="1360" y1="1120" y2="1120" x1="1312" />
        </branch>
        <branch name="CFG_N_1(9)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1312" y="1184" type="branch" />
            <wire x2="1312" y1="1184" y2="1184" x1="1216" />
            <wire x2="1360" y1="1184" y2="1184" x1="1312" />
        </branch>
        <branch name="CFG_N_1(10)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1312" y="1248" type="branch" />
            <wire x2="1312" y1="1248" y2="1248" x1="1216" />
            <wire x2="1360" y1="1248" y2="1248" x1="1312" />
        </branch>
        <instance x="832" y="1696" name="XLXI_1" orien="R0" />
        <branch name="Freq_control(3:0)">
            <wire x2="624" y1="528" y2="528" x1="576" />
            <wire x2="624" y1="528" y2="608" x1="624" />
            <wire x2="624" y1="608" y2="672" x1="624" />
            <wire x2="624" y1="672" y2="736" x1="624" />
            <wire x2="624" y1="736" y2="800" x1="624" />
        </branch>
        <bustap x2="720" y1="608" y2="608" x1="624" />
        <bustap x2="720" y1="672" y2="672" x1="624" />
        <bustap x2="720" y1="736" y2="736" x1="624" />
        <bustap x2="720" y1="800" y2="800" x1="624" />
        <branch name="Freq_control(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="736" y="608" type="branch" />
            <wire x2="736" y1="608" y2="608" x1="720" />
            <wire x2="832" y1="608" y2="608" x1="736" />
        </branch>
        <branch name="Freq_control(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="736" y="672" type="branch" />
            <wire x2="736" y1="672" y2="672" x1="720" />
            <wire x2="832" y1="672" y2="672" x1="736" />
        </branch>
        <branch name="Freq_control(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="736" y="736" type="branch" />
            <wire x2="736" y1="736" y2="736" x1="720" />
            <wire x2="832" y1="736" y2="736" x1="736" />
        </branch>
        <branch name="Freq_control(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="736" y="800" type="branch" />
            <wire x2="736" y1="800" y2="800" x1="720" />
            <wire x2="832" y1="800" y2="800" x1="736" />
        </branch>
        <instance x="1840" y="896" name="CFG_L" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="-64" type="instance" />
        </instance>
        <branch name="Enable_sig">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1472" y="288" type="branch" />
            <wire x2="1296" y1="608" y2="608" x1="1216" />
            <wire x2="1472" y1="288" y2="288" x1="1296" />
            <wire x2="1840" y1="288" y2="288" x1="1472" />
            <wire x2="1296" y1="288" y2="608" x1="1296" />
        </branch>
        <bustap x2="1360" y1="1664" y2="1664" x1="1456" />
        <branch name="CFG_N_1(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1280" y="1664" type="branch" />
            <wire x2="1280" y1="1664" y2="1664" x1="1232" />
            <wire x2="1360" y1="1664" y2="1664" x1="1280" />
        </branch>
        <instance x="1168" y="1792" name="XLXI_10" orien="R0" />
        <branch name="CFG_N_2(15:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2352" y="640" type="branch" />
            <wire x2="2352" y1="640" y2="640" x1="2224" />
            <wire x2="2448" y1="640" y2="640" x1="2352" />
        </branch>
        <instance x="2448" y="1088" name="XLXI_12" orien="R0" />
        <iomarker fontsize="28" x="512" y="1568" name="COUNT_EN" orien="R180" />
        <iomarker fontsize="28" x="576" y="528" name="Freq_control(3:0)" orien="R180" />
        <branch name="COUNT_EN">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="592" y="1568" type="branch" />
            <wire x2="592" y1="1568" y2="1568" x1="512" />
            <wire x2="784" y1="1568" y2="1568" x1="592" />
            <wire x2="832" y1="1568" y2="1568" x1="784" />
            <wire x2="784" y1="1568" y2="1856" x1="784" />
            <wire x2="1536" y1="1856" y2="1856" x1="784" />
            <wire x2="1712" y1="768" y2="768" x1="1536" />
            <wire x2="1840" y1="768" y2="768" x1="1712" />
            <wire x2="1536" y1="768" y2="1856" x1="1536" />
            <wire x2="1840" y1="416" y2="416" x1="1712" />
            <wire x2="1712" y1="416" y2="768" x1="1712" />
        </branch>
        <branch name="XLXN_111">
            <wire x2="3472" y1="800" y2="800" x1="3280" />
        </branch>
        <branch name="XLXN_168">
            <wire x2="2448" y1="832" y2="832" x1="2400" />
            <wire x2="2400" y1="832" y2="1056" x1="2400" />
            <wire x2="2448" y1="1056" y2="1056" x1="2400" />
            <wire x2="2400" y1="1056" y2="1072" x1="2400" />
        </branch>
        <instance x="2336" y="1200" name="XLXI_56" orien="R0" />
        <branch name="XLXN_169">
            <wire x2="2272" y1="288" y2="288" x1="2224" />
        </branch>
        <branch name="Output_enable">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2912" y="288" type="branch" />
            <wire x2="2912" y1="288" y2="288" x1="2496" />
            <wire x2="3376" y1="288" y2="288" x1="2912" />
            <wire x2="3376" y1="288" y2="736" x1="3376" />
            <wire x2="3472" y1="736" y2="736" x1="3376" />
            <wire x2="3376" y1="736" y2="2224" x1="3376" />
            <wire x2="3392" y1="2224" y2="2224" x1="3376" />
        </branch>
        <branch name="XLXN_171">
            <wire x2="2352" y1="832" y2="896" x1="2352" />
            <wire x2="2448" y1="896" y2="896" x1="2352" />
        </branch>
        <instance x="2288" y="832" name="XLXI_55" orien="R0" />
        <instance x="704" y="2448" name="XLXI_62" orien="R0" />
        <branch name="Hold_LDAC_100ns_to_200ns">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2544" y="2160" type="branch" />
            <wire x2="2544" y1="2160" y2="2160" x1="2368" />
            <wire x2="3024" y1="2160" y2="2160" x1="2544" />
            <wire x2="3024" y1="832" y2="2160" x1="3024" />
        </branch>
        <branch name="Hold_IRQ_after_LDAC">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2560" y="2288" type="branch" />
            <wire x2="2560" y1="2288" y2="2288" x1="2368" />
            <wire x2="3392" y1="2288" y2="2288" x1="2560" />
        </branch>
        <branch name="DAC_LDAC">
            <wire x2="4032" y1="768" y2="768" x1="3984" />
        </branch>
        <branch name="XLXN_110">
            <wire x2="3760" y1="768" y2="768" x1="3728" />
        </branch>
        <instance x="3760" y="800" name="XLXI_19" orien="R0" />
        <instance x="3472" y="864" name="XLXI_21" orien="R0" />
        <iomarker fontsize="28" x="4032" y="768" name="DAC_LDAC" orien="R0" />
        <branch name="XLXN_175">
            <wire x2="1536" y1="2128" y2="2128" x1="1088" />
        </branch>
        <branch name="XLXN_176">
            <wire x2="1536" y1="2192" y2="2192" x1="1088" />
        </branch>
        <instance x="1536" y="2448" name="XLXI_61" orien="R0" />
        <branch name="Delay_0_to_100ns">
            <wire x2="2112" y1="2128" y2="2128" x1="1920" />
        </branch>
        <branch name="Delay_plus_100ns">
            <wire x2="2112" y1="2192" y2="2192" x1="1920" />
        </branch>
        <instance x="2112" y="2256" name="XLXI_63" orien="R0" />
        <instance x="2112" y="2384" name="XLXI_72" orien="R0" />
        <branch name="XLXN_203">
            <wire x2="2112" y1="2256" y2="2256" x1="1920" />
        </branch>
        <branch name="XLXN_204">
            <wire x2="2112" y1="2320" y2="2320" x1="1920" />
        </branch>
        <branch name="XLXN_222">
            <wire x2="1488" y1="2304" y2="2320" x1="1488" />
            <wire x2="1536" y1="2320" y2="2320" x1="1488" />
        </branch>
        <instance x="1424" y="2304" name="XLXI_75" orien="R0" />
        <instance x="3024" y="896" name="XLXI_82" orien="R0" />
        <instance x="2080" y="992" name="XLXI_85" orien="R0" />
        <branch name="XLXN_226">
            <wire x2="2448" y1="960" y2="960" x1="2304" />
        </branch>
        <branch name="DDS_FREQ">
            <wire x2="2080" y1="960" y2="960" x1="1984" />
        </branch>
        <iomarker fontsize="28" x="1984" y="960" name="DDS_FREQ" orien="R180" />
        <instance x="448" y="2352" name="XLXI_86" orien="R0" />
        <branch name="XLXN_228">
            <wire x2="704" y1="2320" y2="2320" x1="672" />
        </branch>
        <branch name="IN_10MHz">
            <wire x2="448" y1="2320" y2="2320" x1="368" />
        </branch>
        <iomarker fontsize="28" x="368" y="2320" name="IN_10MHz" orien="R180" />
        <branch name="dds_timer_OL">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2736" y="1104" type="branch" />
            <wire x2="2448" y1="768" y2="768" x1="2432" />
            <wire x2="2432" y1="768" y2="1104" x1="2432" />
            <wire x2="2736" y1="1104" y2="1104" x1="2432" />
            <wire x2="2944" y1="1104" y2="1104" x1="2736" />
            <wire x2="2944" y1="768" y2="768" x1="2896" />
            <wire x2="3024" y1="768" y2="768" x1="2944" />
            <wire x2="2944" y1="768" y2="1104" x1="2944" />
        </branch>
        <instance x="1840" y="544" name="XLXI_3" orien="R0" />
        <instance x="2272" y="320" name="XLXI_57" orien="R0" />
        <instance x="448" y="2288" name="XLXI_87" orien="R0" />
        <branch name="XLXN_239">
            <wire x2="704" y1="2256" y2="2256" x1="672" />
        </branch>
        <branch name="XLXN_243">
            <wire x2="704" y1="2416" y2="2416" x1="672" />
        </branch>
        <instance x="448" y="2448" name="XLXI_91" orien="R0" />
        <branch name="dds_timer_OL">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="336" y="2416" type="branch" />
            <wire x2="336" y1="2416" y2="2416" x1="256" />
            <wire x2="432" y1="2416" y2="2416" x1="336" />
            <wire x2="448" y1="2416" y2="2416" x1="432" />
        </branch>
        <instance x="1232" y="2496" name="XLXI_92" orien="R0" />
        <branch name="Block_timer_after_overload_until_new_cycle">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="960" y="2464" type="branch" />
            <wire x2="448" y1="2256" y2="2256" x1="400" />
            <wire x2="400" y1="2256" y2="2464" x1="400" />
            <wire x2="960" y1="2464" y2="2464" x1="400" />
            <wire x2="1104" y1="2464" y2="2464" x1="960" />
            <wire x2="1120" y1="2464" y2="2464" x1="1104" />
            <wire x2="1232" y1="2464" y2="2464" x1="1120" />
            <wire x2="1120" y1="2320" y2="2320" x1="1088" />
            <wire x2="1120" y1="2320" y2="2464" x1="1120" />
        </branch>
        <instance x="3392" y="2416" name="XLXI_93" orien="R0" />
        <branch name="CPU_IRQ">
            <wire x2="3808" y1="2288" y2="2288" x1="3648" />
        </branch>
        <iomarker fontsize="28" x="3808" y="2288" name="CPU_IRQ" orien="R0" />
        <branch name="Block_IRQ_afrer_timeout">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2528" y="2464" type="branch" />
            <wire x2="2528" y1="2464" y2="2464" x1="1456" />
            <wire x2="3376" y1="2464" y2="2464" x1="2528" />
            <wire x2="3376" y1="2352" y2="2464" x1="3376" />
            <wire x2="3392" y1="2352" y2="2352" x1="3376" />
        </branch>
    </sheet>
</drawing>