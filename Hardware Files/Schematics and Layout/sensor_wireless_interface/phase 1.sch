<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="6.4">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="50" name="dxf" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="no" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="yes" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
<layer number="100" name="help" color="7" fill="1" visible="no" active="yes"/>
<layer number="101" name="DOC" color="7" fill="1" visible="no" active="yes"/>
<layer number="102" name="bot_pads" color="7" fill="1" visible="no" active="yes"/>
<layer number="104" name="S_DOKU" color="7" fill="1" visible="no" active="yes"/>
<layer number="116" name="Patch_BOT" color="7" fill="1" visible="no" active="yes"/>
<layer number="199" name="Contour" color="7" fill="1" visible="no" active="yes"/>
<layer number="200" name="200bmp" color="1" fill="10" visible="no" active="yes"/>
<layer number="201" name="201bmp" color="2" fill="10" visible="no" active="yes"/>
<layer number="250" name="Descript" color="3" fill="1" visible="no" active="no"/>
<layer number="251" name="SMDround" color="12" fill="11" visible="no" active="no"/>
<layer number="254" name="OrgLBR" color="7" fill="1" visible="no" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="RHD2000">
<packages>
<package name="QFN56_8_X_8_LARGE">
<wire x1="-4" y1="4" x2="-3.65" y2="4" width="0.127" layer="21"/>
<wire x1="-4" y1="4" x2="-4" y2="3.65" width="0.127" layer="21"/>
<wire x1="4" y1="4" x2="3.65" y2="4" width="0.127" layer="21"/>
<wire x1="4" y1="4" x2="4" y2="3.65" width="0.127" layer="21"/>
<wire x1="-4" y1="-4" x2="-4" y2="-3.65" width="0.127" layer="21"/>
<wire x1="-4" y1="-4" x2="-3.65" y2="-4" width="0.127" layer="21"/>
<wire x1="4" y1="-4" x2="4" y2="-3.65" width="0.127" layer="21"/>
<wire x1="4" y1="-4" x2="3.65" y2="-4" width="0.127" layer="21"/>
<circle x="-3.7" y="3.7" radius="0.1" width="0.127" layer="21"/>
<circle x="-4.3" y="4.3" radius="0.2236" width="0.127" layer="21"/>
<smd name="CENTER" x="0" y="0" dx="4.8" dy="4.8" layer="1"/>
<smd name="5" x="-4.05" y="1.25" dx="0.9" dy="0.25" layer="1"/>
<smd name="4" x="-4.05" y="1.75" dx="0.9" dy="0.25" layer="1"/>
<smd name="3" x="-4.05" y="2.25" dx="0.9" dy="0.25" layer="1"/>
<smd name="2" x="-4.05" y="2.75" dx="0.9" dy="0.25" layer="1"/>
<smd name="6" x="-4.05" y="0.75" dx="0.9" dy="0.25" layer="1"/>
<smd name="7" x="-4.05" y="0.25" dx="0.9" dy="0.25" layer="1"/>
<smd name="8" x="-4.05" y="-0.25" dx="0.9" dy="0.25" layer="1"/>
<smd name="19" x="-1.25" y="-4.05" dx="0.9" dy="0.25" layer="1" rot="R90"/>
<smd name="18" x="-1.75" y="-4.05" dx="0.9" dy="0.25" layer="1" rot="R90"/>
<smd name="17" x="-2.25" y="-4.05" dx="0.9" dy="0.25" layer="1" rot="R90"/>
<smd name="16" x="-2.75" y="-4.05" dx="0.9" dy="0.25" layer="1" rot="R90"/>
<smd name="20" x="-0.75" y="-4.05" dx="0.9" dy="0.25" layer="1" rot="R90"/>
<smd name="21" x="-0.25" y="-4.05" dx="0.9" dy="0.25" layer="1" rot="R90"/>
<smd name="22" x="0.25" y="-4.05" dx="0.9" dy="0.25" layer="1" rot="R90"/>
<smd name="34" x="4.05" y="-0.75" dx="0.9" dy="0.25" layer="1"/>
<smd name="33" x="4.05" y="-1.25" dx="0.9" dy="0.25" layer="1"/>
<smd name="32" x="4.05" y="-1.75" dx="0.9" dy="0.25" layer="1"/>
<smd name="31" x="4.05" y="-2.25" dx="0.9" dy="0.25" layer="1"/>
<smd name="35" x="4.05" y="-0.25" dx="0.9" dy="0.25" layer="1"/>
<smd name="36" x="4.05" y="0.25" dx="0.9" dy="0.25" layer="1"/>
<smd name="37" x="4.05" y="0.75" dx="0.9" dy="0.25" layer="1"/>
<smd name="48" x="0.75" y="4.05" dx="0.9" dy="0.25" layer="1" rot="R90"/>
<smd name="47" x="1.25" y="4.05" dx="0.9" dy="0.25" layer="1" rot="R90"/>
<smd name="46" x="1.75" y="4.05" dx="0.9" dy="0.25" layer="1" rot="R90"/>
<smd name="45" x="2.25" y="4.05" dx="0.9" dy="0.25" layer="1" rot="R90"/>
<smd name="49" x="0.25" y="4.05" dx="0.9" dy="0.25" layer="1" rot="R90"/>
<smd name="50" x="-0.25" y="4.05" dx="0.9" dy="0.25" layer="1" rot="R90"/>
<smd name="51" x="-0.75" y="4.05" dx="0.9" dy="0.25" layer="1" rot="R90"/>
<smd name="9" x="-4.05" y="-0.75" dx="0.9" dy="0.25" layer="1"/>
<smd name="10" x="-4.05" y="-1.25" dx="0.9" dy="0.25" layer="1"/>
<smd name="1" x="-4.05" y="3.25" dx="0.9" dy="0.25" layer="1"/>
<smd name="52" x="-1.25" y="4.05" dx="0.9" dy="0.25" layer="1" rot="R90"/>
<smd name="15" x="-3.25" y="-4.05" dx="0.9" dy="0.25" layer="1" rot="R90"/>
<smd name="44" x="2.75" y="4.05" dx="0.9" dy="0.25" layer="1" rot="R90"/>
<smd name="43" x="3.25" y="4.05" dx="0.9" dy="0.25" layer="1" rot="R90"/>
<smd name="23" x="0.75" y="-4.05" dx="0.9" dy="0.25" layer="1" rot="R90"/>
<smd name="24" x="1.25" y="-4.05" dx="0.9" dy="0.25" layer="1" rot="R90"/>
<smd name="38" x="4.05" y="1.25" dx="0.9" dy="0.25" layer="1"/>
<smd name="30" x="4.05" y="-2.75" dx="0.9" dy="0.25" layer="1"/>
<smd name="29" x="4.05" y="-3.25" dx="0.9" dy="0.25" layer="1"/>
<smd name="11" x="-4.05" y="-1.75" dx="0.9" dy="0.25" layer="1"/>
<smd name="12" x="-4.05" y="-2.25" dx="0.9" dy="0.25" layer="1"/>
<smd name="13" x="-4.05" y="-2.75" dx="0.9" dy="0.25" layer="1"/>
<smd name="14" x="-4.05" y="-3.25" dx="0.9" dy="0.25" layer="1"/>
<smd name="25" x="1.75" y="-4.05" dx="0.9" dy="0.25" layer="1" rot="R90"/>
<smd name="26" x="2.25" y="-4.05" dx="0.9" dy="0.25" layer="1" rot="R90"/>
<smd name="27" x="2.75" y="-4.05" dx="0.9" dy="0.25" layer="1" rot="R90"/>
<smd name="28" x="3.25" y="-4.05" dx="0.9" dy="0.25" layer="1" rot="R90"/>
<smd name="39" x="4.05" y="1.75" dx="0.9" dy="0.25" layer="1"/>
<smd name="40" x="4.05" y="2.25" dx="0.9" dy="0.25" layer="1"/>
<smd name="41" x="4.05" y="2.75" dx="0.9" dy="0.25" layer="1"/>
<smd name="42" x="4.05" y="3.25" dx="0.9" dy="0.25" layer="1"/>
<smd name="53" x="-1.75" y="4.05" dx="0.9" dy="0.25" layer="1" rot="R90"/>
<smd name="54" x="-2.25" y="4.05" dx="0.9" dy="0.25" layer="1" rot="R90"/>
<smd name="55" x="-2.75" y="4.05" dx="0.9" dy="0.25" layer="1" rot="R90"/>
<smd name="56" x="-3.25" y="4.05" dx="0.9" dy="0.25" layer="1" rot="R90"/>
<text x="-3.905" y="4.505" size="1.27" layer="25">&gt;NAME</text>
<rectangle x1="-3.1" y1="-3.1" x2="3.1" y2="3.1" layer="43"/>
</package>
<package name="ZIF_QFN56_8_X_8_MLF00056A1">
<wire x1="-16.1" y1="-13.4" x2="16.1" y2="-13.4" width="0.127" layer="21"/>
<wire x1="-16.1" y1="13.4" x2="16.1" y2="13.4" width="0.127" layer="21"/>
<wire x1="-16.1" y1="13.4" x2="-16.1" y2="-13.4" width="0.127" layer="21"/>
<wire x1="16.1" y1="13.4" x2="16.1" y2="-13.4" width="0.127" layer="21"/>
<pad name="CENTER" x="0" y="0" drill="1.2" diameter="1.9304"/>
<pad name="2" x="-4.43" y="2.75" drill="0.41" diameter="0.8128" rot="R90"/>
<pad name="1" x="-5.955" y="3.25" drill="0.41" diameter="0.8128" rot="R90"/>
<pad name="3" x="-5.955" y="2.25" drill="0.41" diameter="0.8128" rot="R90"/>
<pad name="4" x="-4.43" y="1.75" drill="0.41" diameter="0.8128" rot="R90"/>
<pad name="5" x="-5.955" y="1.25" drill="0.41" diameter="0.8128" rot="R90"/>
<pad name="6" x="-4.43" y="0.75" drill="0.41" diameter="0.8128" rot="R90"/>
<pad name="7" x="-5.955" y="0.25" drill="0.41" diameter="0.8128" rot="R90"/>
<pad name="8" x="-4.43" y="-0.25" drill="0.41" diameter="0.8128" rot="R90"/>
<pad name="9" x="-5.955" y="-0.75" drill="0.41" diameter="0.8128" rot="R90"/>
<pad name="10" x="-4.43" y="-1.25" drill="0.41" diameter="0.8128" rot="R90"/>
<pad name="11" x="-5.955" y="-1.75" drill="0.41" diameter="0.8128" rot="R90"/>
<pad name="12" x="-4.43" y="-2.25" drill="0.41" diameter="0.8128" rot="R90"/>
<pad name="13" x="-5.955" y="-2.75" drill="0.41" diameter="0.8128" rot="R90"/>
<pad name="14" x="-4.43" y="-3.25" drill="0.41" diameter="0.8128" rot="R90"/>
<pad name="16" x="-2.75" y="-4.43" drill="0.41" diameter="0.8128" rot="R180"/>
<pad name="15" x="-3.25" y="-5.955" drill="0.41" diameter="0.8128" rot="R180"/>
<pad name="17" x="-2.25" y="-5.955" drill="0.41" diameter="0.8128" rot="R180"/>
<pad name="18" x="-1.75" y="-4.43" drill="0.41" diameter="0.8128" rot="R180"/>
<pad name="19" x="-1.25" y="-5.955" drill="0.41" diameter="0.8128" rot="R180"/>
<pad name="20" x="-0.75" y="-4.43" drill="0.41" diameter="0.8128" rot="R180"/>
<pad name="21" x="-0.25" y="-5.955" drill="0.41" diameter="0.8128" rot="R180"/>
<pad name="22" x="0.25" y="-4.43" drill="0.41" diameter="0.8128" rot="R180"/>
<pad name="23" x="0.75" y="-5.955" drill="0.41" diameter="0.8128" rot="R180"/>
<pad name="24" x="1.25" y="-4.43" drill="0.41" diameter="0.8128" rot="R180"/>
<pad name="25" x="1.75" y="-5.955" drill="0.41" diameter="0.8128" rot="R180"/>
<pad name="26" x="2.25" y="-4.43" drill="0.41" diameter="0.8128" rot="R180"/>
<pad name="27" x="2.75" y="-5.955" drill="0.41" diameter="0.8128" rot="R180"/>
<pad name="28" x="3.25" y="-4.43" drill="0.41" diameter="0.8128" rot="R180"/>
<pad name="30" x="4.43" y="-2.75" drill="0.41" diameter="0.8128" rot="R270"/>
<pad name="29" x="5.955" y="-3.25" drill="0.41" diameter="0.8128" rot="R270"/>
<pad name="31" x="5.955" y="-2.25" drill="0.41" diameter="0.8128" rot="R270"/>
<pad name="32" x="4.43" y="-1.75" drill="0.41" diameter="0.8128" rot="R270"/>
<pad name="33" x="5.955" y="-1.25" drill="0.41" diameter="0.8128" rot="R270"/>
<pad name="34" x="4.43" y="-0.75" drill="0.41" diameter="0.8128" rot="R270"/>
<pad name="35" x="5.955" y="-0.25" drill="0.41" diameter="0.8128" rot="R270"/>
<pad name="36" x="4.43" y="0.25" drill="0.41" diameter="0.8128" rot="R270"/>
<pad name="37" x="5.955" y="0.75" drill="0.41" diameter="0.8128" rot="R270"/>
<pad name="38" x="4.43" y="1.25" drill="0.41" diameter="0.8128" rot="R270"/>
<pad name="39" x="5.955" y="1.75" drill="0.41" diameter="0.8128" rot="R270"/>
<pad name="40" x="4.43" y="2.25" drill="0.41" diameter="0.8128" rot="R270"/>
<pad name="41" x="5.955" y="2.75" drill="0.41" diameter="0.8128" rot="R270"/>
<pad name="42" x="4.43" y="3.25" drill="0.41" diameter="0.8128" rot="R270"/>
<pad name="44" x="2.75" y="4.43" drill="0.41" diameter="0.8128"/>
<pad name="43" x="3.25" y="5.955" drill="0.41" diameter="0.8128"/>
<pad name="45" x="2.25" y="5.955" drill="0.41" diameter="0.8128"/>
<pad name="46" x="1.75" y="4.43" drill="0.41" diameter="0.8128"/>
<pad name="47" x="1.25" y="5.955" drill="0.41" diameter="0.8128"/>
<pad name="48" x="0.75" y="4.43" drill="0.41" diameter="0.8128"/>
<pad name="49" x="0.25" y="5.955" drill="0.41" diameter="0.8128"/>
<pad name="50" x="-0.25" y="4.43" drill="0.41" diameter="0.8128"/>
<pad name="51" x="-0.75" y="5.955" drill="0.41" diameter="0.8128"/>
<pad name="52" x="-1.25" y="4.43" drill="0.41" diameter="0.8128"/>
<pad name="53" x="-1.75" y="5.955" drill="0.41" diameter="0.8128"/>
<pad name="54" x="-2.25" y="4.43" drill="0.41" diameter="0.8128"/>
<pad name="55" x="-2.75" y="5.955" drill="0.41" diameter="0.8128"/>
<pad name="56" x="-3.25" y="4.43" drill="0.41" diameter="0.8128"/>
<text x="-15" y="14" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<hole x="6.225" y="6.225" drill="2"/>
<hole x="-6.225" y="-6.225" drill="1.6"/>
</package>
</packages>
<symbols>
<symbol name="RHD2216">
<wire x1="-27.94" y1="30.48" x2="30.48" y2="30.48" width="0.254" layer="94"/>
<wire x1="30.48" y1="30.48" x2="30.48" y2="-27.94" width="0.254" layer="94"/>
<wire x1="30.48" y1="-27.94" x2="-27.94" y2="-27.94" width="0.254" layer="94"/>
<wire x1="-27.94" y1="-27.94" x2="-27.94" y2="30.48" width="0.254" layer="94"/>
<text x="-5.08" y="6.35" size="1.778" layer="95" font="vector">&gt;NAME</text>
<text x="-5.08" y="1.27" size="1.778" layer="95" font="vector">&gt;VALUE</text>
<pin name="IN1+" x="-30.48" y="10.16" length="short" direction="in"/>
<pin name="IN0-" x="-30.48" y="7.62" length="short" direction="in"/>
<pin name="IN0+" x="-30.48" y="5.08" length="short" direction="in"/>
<pin name="GND0" x="-30.48" y="0" length="short" direction="in"/>
<pin name="GND1" x="-30.48" y="-5.08" length="short" direction="pwr"/>
<pin name="GND2" x="-30.48" y="-7.62" length="short" direction="pwr"/>
<pin name="GND3" x="-15.24" y="-30.48" length="short" direction="pwr" rot="R90"/>
<pin name="!CS!-" x="-10.16" y="-30.48" length="short" direction="in" rot="R90"/>
<pin name="!CS!+" x="-7.62" y="-30.48" length="short" direction="in" rot="R90"/>
<pin name="SCLK-" x="-5.08" y="-30.48" length="short" direction="in" rot="R90"/>
<pin name="SCLK+" x="-2.54" y="-30.48" length="short" direction="in" rot="R90"/>
<pin name="MOSI-" x="0" y="-30.48" length="short" direction="in" rot="R90"/>
<pin name="VDD3" x="33.02" y="-7.62" length="short" direction="pwr" rot="R180"/>
<pin name="VESD" x="33.02" y="-2.54" length="short" direction="pwr" rot="R180"/>
<pin name="ELEC_TEST" x="33.02" y="0" length="short" direction="in" rot="R180"/>
<pin name="IN7-" x="0" y="33.02" length="short" direction="in" rot="R270"/>
<pin name="IN7+" x="-2.54" y="33.02" length="short" direction="in" rot="R270"/>
<pin name="IN6-" x="-5.08" y="33.02" length="short" direction="in" rot="R270"/>
<pin name="IN4+" x="-30.48" y="25.4" length="short" direction="in"/>
<pin name="IN3-" x="-30.48" y="22.86" length="short" direction="in"/>
<pin name="IN3+" x="-30.48" y="20.32" length="short" direction="in"/>
<pin name="IN2-" x="-30.48" y="17.78" length="short" direction="in"/>
<pin name="IN2+" x="-30.48" y="15.24" length="short" direction="in"/>
<pin name="IN1-" x="-30.48" y="12.7" length="short" direction="in"/>
<pin name="IN4-" x="-15.24" y="33.02" length="short" direction="in" rot="R270"/>
<pin name="IN5+" x="-12.7" y="33.02" length="short" direction="in" rot="R270"/>
<pin name="IN5-" x="-10.16" y="33.02" length="short" direction="in" rot="R270"/>
<pin name="IN6+" x="-7.62" y="33.02" length="short" direction="in" rot="R270"/>
<pin name="VDD1" x="-30.48" y="-10.16" length="short" direction="pwr"/>
<pin name="AUXIN1" x="-30.48" y="-15.24" length="short" direction="in"/>
<pin name="AUXIN2" x="-22.86" y="-30.48" length="short" direction="in" rot="R90"/>
<pin name="AUXIN3" x="-20.32" y="-30.48" length="short" direction="in" rot="R90"/>
<pin name="LVDS_EN" x="33.02" y="-12.7" length="short" direction="in" rot="R180"/>
<pin name="GND4" x="33.02" y="-17.78" length="short" direction="pwr" rot="R180"/>
<pin name="ADC_REF" x="20.32" y="-30.48" length="short" direction="pas" rot="R90"/>
<pin name="AUXOUT" x="17.78" y="-30.48" length="short" direction="hiz" rot="R90"/>
<pin name="MOSI+" x="2.54" y="-30.48" length="short" direction="in" rot="R90"/>
<pin name="MISO-" x="5.08" y="-30.48" length="short" direction="out" rot="R90"/>
<pin name="MISO+" x="7.62" y="-30.48" length="short" direction="out" rot="R90"/>
<pin name="VDD2" x="12.7" y="-30.48" length="short" direction="pwr" rot="R90"/>
<pin name="CTR" x="33.02" y="-22.86" length="short" direction="pwr" rot="R180"/>
<pin name="IN8+" x="2.54" y="33.02" length="short" direction="in" rot="R270"/>
<pin name="IN8-" x="5.08" y="33.02" length="short" direction="in" rot="R270"/>
<pin name="IN9+" x="7.62" y="33.02" length="short" direction="in" rot="R270"/>
<pin name="IN9-" x="10.16" y="33.02" length="short" direction="in" rot="R270"/>
<pin name="IN10+" x="12.7" y="33.02" length="short" direction="in" rot="R270"/>
<pin name="IN10-" x="15.24" y="33.02" length="short" direction="in" rot="R270"/>
<pin name="IN11+" x="17.78" y="33.02" length="short" direction="in" rot="R270"/>
<pin name="IN11-" x="33.02" y="25.4" length="short" direction="in" rot="R180"/>
<pin name="IN12+" x="33.02" y="22.86" length="short" direction="in" rot="R180"/>
<pin name="IN12-" x="33.02" y="20.32" length="short" direction="in" rot="R180"/>
<pin name="IN13+" x="33.02" y="17.78" length="short" direction="in" rot="R180"/>
<pin name="IN13-" x="33.02" y="15.24" length="short" direction="in" rot="R180"/>
<pin name="IN14+" x="33.02" y="12.7" length="short" direction="in" rot="R180"/>
<pin name="IN14-" x="33.02" y="10.16" length="short" direction="in" rot="R180"/>
<pin name="IN15+" x="33.02" y="7.62" length="short" direction="in" rot="R180"/>
<pin name="IN15-" x="33.02" y="5.08" length="short" direction="in" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="RHD2216" prefix="U">
<gates>
<gate name="A" symbol="RHD2216" x="-2.54" y="0"/>
</gates>
<devices>
<device name="_QFN" package="QFN56_8_X_8_LARGE">
<connects>
<connect gate="A" pin="!CS!+" pad="19"/>
<connect gate="A" pin="!CS!-" pad="18"/>
<connect gate="A" pin="ADC_REF" pad="28"/>
<connect gate="A" pin="AUXIN1" pad="14"/>
<connect gate="A" pin="AUXIN2" pad="15"/>
<connect gate="A" pin="AUXIN3" pad="16"/>
<connect gate="A" pin="AUXOUT" pad="27"/>
<connect gate="A" pin="CTR" pad="CENTER"/>
<connect gate="A" pin="ELEC_TEST" pad="33"/>
<connect gate="A" pin="GND0" pad="10"/>
<connect gate="A" pin="GND1" pad="11"/>
<connect gate="A" pin="GND2" pad="12"/>
<connect gate="A" pin="GND3" pad="17"/>
<connect gate="A" pin="GND4" pad="29"/>
<connect gate="A" pin="IN0+" pad="9"/>
<connect gate="A" pin="IN0-" pad="8"/>
<connect gate="A" pin="IN1+" pad="7"/>
<connect gate="A" pin="IN1-" pad="6"/>
<connect gate="A" pin="IN10+" pad="45"/>
<connect gate="A" pin="IN10-" pad="44"/>
<connect gate="A" pin="IN11+" pad="43"/>
<connect gate="A" pin="IN11-" pad="42"/>
<connect gate="A" pin="IN12+" pad="41"/>
<connect gate="A" pin="IN12-" pad="40"/>
<connect gate="A" pin="IN13+" pad="39"/>
<connect gate="A" pin="IN13-" pad="38"/>
<connect gate="A" pin="IN14+" pad="37"/>
<connect gate="A" pin="IN14-" pad="36"/>
<connect gate="A" pin="IN15+" pad="35"/>
<connect gate="A" pin="IN15-" pad="34"/>
<connect gate="A" pin="IN2+" pad="5"/>
<connect gate="A" pin="IN2-" pad="4"/>
<connect gate="A" pin="IN3+" pad="3"/>
<connect gate="A" pin="IN3-" pad="2"/>
<connect gate="A" pin="IN4+" pad="1"/>
<connect gate="A" pin="IN4-" pad="56"/>
<connect gate="A" pin="IN5+" pad="55"/>
<connect gate="A" pin="IN5-" pad="54"/>
<connect gate="A" pin="IN6+" pad="53"/>
<connect gate="A" pin="IN6-" pad="52"/>
<connect gate="A" pin="IN7+" pad="51"/>
<connect gate="A" pin="IN7-" pad="50"/>
<connect gate="A" pin="IN8+" pad="49"/>
<connect gate="A" pin="IN8-" pad="48"/>
<connect gate="A" pin="IN9+" pad="47"/>
<connect gate="A" pin="IN9-" pad="46"/>
<connect gate="A" pin="LVDS_EN" pad="30"/>
<connect gate="A" pin="MISO+" pad="25"/>
<connect gate="A" pin="MISO-" pad="24"/>
<connect gate="A" pin="MOSI+" pad="23"/>
<connect gate="A" pin="MOSI-" pad="22"/>
<connect gate="A" pin="SCLK+" pad="21"/>
<connect gate="A" pin="SCLK-" pad="20"/>
<connect gate="A" pin="VDD1" pad="13"/>
<connect gate="A" pin="VDD2" pad="26"/>
<connect gate="A" pin="VDD3" pad="31"/>
<connect gate="A" pin="VESD" pad="32"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="" package="ZIF_QFN56_8_X_8_MLF00056A1">
<connects>
<connect gate="A" pin="!CS!+" pad="19"/>
<connect gate="A" pin="!CS!-" pad="18"/>
<connect gate="A" pin="ADC_REF" pad="28"/>
<connect gate="A" pin="AUXIN1" pad="14"/>
<connect gate="A" pin="AUXIN2" pad="15"/>
<connect gate="A" pin="AUXIN3" pad="16"/>
<connect gate="A" pin="AUXOUT" pad="27"/>
<connect gate="A" pin="CTR" pad="CENTER"/>
<connect gate="A" pin="ELEC_TEST" pad="33"/>
<connect gate="A" pin="GND0" pad="10"/>
<connect gate="A" pin="GND1" pad="11"/>
<connect gate="A" pin="GND2" pad="12"/>
<connect gate="A" pin="GND3" pad="17"/>
<connect gate="A" pin="GND4" pad="29"/>
<connect gate="A" pin="IN0+" pad="9"/>
<connect gate="A" pin="IN0-" pad="8"/>
<connect gate="A" pin="IN1+" pad="7"/>
<connect gate="A" pin="IN1-" pad="6"/>
<connect gate="A" pin="IN10+" pad="45"/>
<connect gate="A" pin="IN10-" pad="44"/>
<connect gate="A" pin="IN11+" pad="43"/>
<connect gate="A" pin="IN11-" pad="42"/>
<connect gate="A" pin="IN12+" pad="41"/>
<connect gate="A" pin="IN12-" pad="40"/>
<connect gate="A" pin="IN13+" pad="39"/>
<connect gate="A" pin="IN13-" pad="38"/>
<connect gate="A" pin="IN14+" pad="37"/>
<connect gate="A" pin="IN14-" pad="36"/>
<connect gate="A" pin="IN15+" pad="35"/>
<connect gate="A" pin="IN15-" pad="34"/>
<connect gate="A" pin="IN2+" pad="5"/>
<connect gate="A" pin="IN2-" pad="4"/>
<connect gate="A" pin="IN3+" pad="3"/>
<connect gate="A" pin="IN3-" pad="2"/>
<connect gate="A" pin="IN4+" pad="1"/>
<connect gate="A" pin="IN4-" pad="56"/>
<connect gate="A" pin="IN5+" pad="55"/>
<connect gate="A" pin="IN5-" pad="54"/>
<connect gate="A" pin="IN6+" pad="53"/>
<connect gate="A" pin="IN6-" pad="52"/>
<connect gate="A" pin="IN7+" pad="51"/>
<connect gate="A" pin="IN7-" pad="50"/>
<connect gate="A" pin="IN8+" pad="49"/>
<connect gate="A" pin="IN8-" pad="48"/>
<connect gate="A" pin="IN9+" pad="47"/>
<connect gate="A" pin="IN9-" pad="46"/>
<connect gate="A" pin="LVDS_EN" pad="30"/>
<connect gate="A" pin="MISO+" pad="25"/>
<connect gate="A" pin="MISO-" pad="24"/>
<connect gate="A" pin="MOSI+" pad="23"/>
<connect gate="A" pin="MOSI-" pad="22"/>
<connect gate="A" pin="SCLK+" pad="21"/>
<connect gate="A" pin="SCLK-" pad="20"/>
<connect gate="A" pin="VDD1" pad="13"/>
<connect gate="A" pin="VDD2" pad="26"/>
<connect gate="A" pin="VDD3" pad="31"/>
<connect gate="A" pin="VESD" pad="32"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="pinhead">
<description>&lt;b&gt;Pin Header Connectors&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="2X07">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="-8.89" y1="-1.905" x2="-8.255" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-6.985" y1="-2.54" x2="-6.35" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-6.35" y1="-1.905" x2="-5.715" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="-2.54" x2="-3.81" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="-1.905" x2="-3.175" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="-2.54" x2="-1.27" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-1.905" x2="-0.635" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="0.635" y1="-2.54" x2="1.27" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="1.27" y1="-1.905" x2="1.905" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="3.175" y1="-2.54" x2="3.81" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="3.81" y1="-1.905" x2="4.445" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="5.715" y1="-2.54" x2="6.35" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-8.89" y1="-1.905" x2="-8.89" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-8.89" y1="1.905" x2="-8.255" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-8.255" y1="2.54" x2="-6.985" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-6.985" y1="2.54" x2="-6.35" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-6.35" y1="1.905" x2="-5.715" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-5.715" y1="2.54" x2="-4.445" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="2.54" x2="-3.81" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="1.905" x2="-3.175" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="2.54" x2="-1.905" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="2.54" x2="-1.27" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="1.905" x2="-0.635" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="2.54" x2="0.635" y2="2.54" width="0.1524" layer="21"/>
<wire x1="0.635" y1="2.54" x2="1.27" y2="1.905" width="0.1524" layer="21"/>
<wire x1="1.27" y1="1.905" x2="1.905" y2="2.54" width="0.1524" layer="21"/>
<wire x1="1.905" y1="2.54" x2="3.175" y2="2.54" width="0.1524" layer="21"/>
<wire x1="3.175" y1="2.54" x2="3.81" y2="1.905" width="0.1524" layer="21"/>
<wire x1="3.81" y1="1.905" x2="4.445" y2="2.54" width="0.1524" layer="21"/>
<wire x1="4.445" y1="2.54" x2="5.715" y2="2.54" width="0.1524" layer="21"/>
<wire x1="5.715" y1="2.54" x2="6.35" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-6.35" y1="1.905" x2="-6.35" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="1.905" x2="-3.81" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="1.905" x2="-1.27" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="1.27" y1="1.905" x2="1.27" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="3.81" y1="1.905" x2="3.81" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="6.35" y1="1.905" x2="6.35" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="4.445" y1="-2.54" x2="5.715" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="1.905" y1="-2.54" x2="3.175" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="-2.54" x2="0.635" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="-2.54" x2="-1.905" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-5.715" y1="-2.54" x2="-4.445" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-8.255" y1="-2.54" x2="-6.985" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="6.35" y1="-1.905" x2="6.985" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="8.255" y1="-2.54" x2="8.89" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="6.35" y1="1.905" x2="6.985" y2="2.54" width="0.1524" layer="21"/>
<wire x1="6.985" y1="2.54" x2="8.255" y2="2.54" width="0.1524" layer="21"/>
<wire x1="8.255" y1="2.54" x2="8.89" y2="1.905" width="0.1524" layer="21"/>
<wire x1="8.89" y1="1.905" x2="8.89" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="6.985" y1="-2.54" x2="8.255" y2="-2.54" width="0.1524" layer="21"/>
<pad name="1" x="-7.62" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="2" x="-7.62" y="1.27" drill="1.016" shape="octagon"/>
<pad name="3" x="-5.08" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="4" x="-5.08" y="1.27" drill="1.016" shape="octagon"/>
<pad name="5" x="-2.54" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="6" x="-2.54" y="1.27" drill="1.016" shape="octagon"/>
<pad name="7" x="0" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="8" x="0" y="1.27" drill="1.016" shape="octagon"/>
<pad name="9" x="2.54" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="10" x="2.54" y="1.27" drill="1.016" shape="octagon"/>
<pad name="11" x="5.08" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="12" x="5.08" y="1.27" drill="1.016" shape="octagon"/>
<pad name="13" x="7.62" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="14" x="7.62" y="1.27" drill="1.016" shape="octagon"/>
<text x="-8.89" y="3.175" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-8.89" y="-4.445" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-7.874" y1="-1.524" x2="-7.366" y2="-1.016" layer="51"/>
<rectangle x1="-7.874" y1="1.016" x2="-7.366" y2="1.524" layer="51"/>
<rectangle x1="-5.334" y1="1.016" x2="-4.826" y2="1.524" layer="51"/>
<rectangle x1="-5.334" y1="-1.524" x2="-4.826" y2="-1.016" layer="51"/>
<rectangle x1="-2.794" y1="1.016" x2="-2.286" y2="1.524" layer="51"/>
<rectangle x1="-2.794" y1="-1.524" x2="-2.286" y2="-1.016" layer="51"/>
<rectangle x1="-0.254" y1="1.016" x2="0.254" y2="1.524" layer="51"/>
<rectangle x1="2.286" y1="1.016" x2="2.794" y2="1.524" layer="51"/>
<rectangle x1="4.826" y1="1.016" x2="5.334" y2="1.524" layer="51"/>
<rectangle x1="-0.254" y1="-1.524" x2="0.254" y2="-1.016" layer="51"/>
<rectangle x1="2.286" y1="-1.524" x2="2.794" y2="-1.016" layer="51"/>
<rectangle x1="4.826" y1="-1.524" x2="5.334" y2="-1.016" layer="51"/>
<rectangle x1="7.366" y1="1.016" x2="7.874" y2="1.524" layer="51"/>
<rectangle x1="7.366" y1="-1.524" x2="7.874" y2="-1.016" layer="51"/>
</package>
<package name="2X07/90">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="-8.89" y1="-1.905" x2="-6.35" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-6.35" y1="-1.905" x2="-6.35" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-6.35" y1="0.635" x2="-8.89" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-8.89" y1="0.635" x2="-8.89" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="6.985" x2="-7.62" y2="1.27" width="0.762" layer="21"/>
<wire x1="-6.35" y1="-1.905" x2="-3.81" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="-1.905" x2="-3.81" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="0.635" x2="-6.35" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="6.985" x2="-5.08" y2="1.27" width="0.762" layer="21"/>
<wire x1="-3.81" y1="-1.905" x2="-1.27" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-1.905" x2="-1.27" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="0.635" x2="-3.81" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="6.985" x2="-2.54" y2="1.27" width="0.762" layer="21"/>
<wire x1="-1.27" y1="-1.905" x2="1.27" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="1.27" y1="-1.905" x2="1.27" y2="0.635" width="0.1524" layer="21"/>
<wire x1="1.27" y1="0.635" x2="-1.27" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="6.985" x2="0" y2="1.27" width="0.762" layer="21"/>
<wire x1="1.27" y1="-1.905" x2="3.81" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="3.81" y1="-1.905" x2="3.81" y2="0.635" width="0.1524" layer="21"/>
<wire x1="3.81" y1="0.635" x2="1.27" y2="0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="6.985" x2="2.54" y2="1.27" width="0.762" layer="21"/>
<wire x1="3.81" y1="-1.905" x2="6.35" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="6.35" y1="-1.905" x2="6.35" y2="0.635" width="0.1524" layer="21"/>
<wire x1="6.35" y1="0.635" x2="3.81" y2="0.635" width="0.1524" layer="21"/>
<wire x1="5.08" y1="6.985" x2="5.08" y2="1.27" width="0.762" layer="21"/>
<wire x1="6.35" y1="-1.905" x2="8.89" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="8.89" y1="-1.905" x2="8.89" y2="0.635" width="0.1524" layer="21"/>
<wire x1="8.89" y1="0.635" x2="6.35" y2="0.635" width="0.1524" layer="21"/>
<wire x1="7.62" y1="6.985" x2="7.62" y2="1.27" width="0.762" layer="21"/>
<pad name="2" x="-7.62" y="-3.81" drill="1.016" shape="octagon"/>
<pad name="4" x="-5.08" y="-3.81" drill="1.016" shape="octagon"/>
<pad name="6" x="-2.54" y="-3.81" drill="1.016" shape="octagon"/>
<pad name="8" x="0" y="-3.81" drill="1.016" shape="octagon"/>
<pad name="10" x="2.54" y="-3.81" drill="1.016" shape="octagon"/>
<pad name="12" x="5.08" y="-3.81" drill="1.016" shape="octagon"/>
<pad name="14" x="7.62" y="-3.81" drill="1.016" shape="octagon"/>
<pad name="1" x="-7.62" y="-6.35" drill="1.016" shape="octagon"/>
<pad name="3" x="-5.08" y="-6.35" drill="1.016" shape="octagon"/>
<pad name="5" x="-2.54" y="-6.35" drill="1.016" shape="octagon"/>
<pad name="7" x="0" y="-6.35" drill="1.016" shape="octagon"/>
<pad name="9" x="2.54" y="-6.35" drill="1.016" shape="octagon"/>
<pad name="11" x="5.08" y="-6.35" drill="1.016" shape="octagon"/>
<pad name="13" x="7.62" y="-6.35" drill="1.016" shape="octagon"/>
<text x="-9.525" y="-3.81" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="10.795" y="-3.81" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-8.001" y1="0.635" x2="-7.239" y2="1.143" layer="21"/>
<rectangle x1="-5.461" y1="0.635" x2="-4.699" y2="1.143" layer="21"/>
<rectangle x1="-2.921" y1="0.635" x2="-2.159" y2="1.143" layer="21"/>
<rectangle x1="-0.381" y1="0.635" x2="0.381" y2="1.143" layer="21"/>
<rectangle x1="2.159" y1="0.635" x2="2.921" y2="1.143" layer="21"/>
<rectangle x1="4.699" y1="0.635" x2="5.461" y2="1.143" layer="21"/>
<rectangle x1="7.239" y1="0.635" x2="8.001" y2="1.143" layer="21"/>
<rectangle x1="-8.001" y1="-2.921" x2="-7.239" y2="-1.905" layer="21"/>
<rectangle x1="-5.461" y1="-2.921" x2="-4.699" y2="-1.905" layer="21"/>
<rectangle x1="-8.001" y1="-5.461" x2="-7.239" y2="-4.699" layer="21"/>
<rectangle x1="-8.001" y1="-4.699" x2="-7.239" y2="-2.921" layer="51"/>
<rectangle x1="-5.461" y1="-4.699" x2="-4.699" y2="-2.921" layer="51"/>
<rectangle x1="-5.461" y1="-5.461" x2="-4.699" y2="-4.699" layer="21"/>
<rectangle x1="-2.921" y1="-2.921" x2="-2.159" y2="-1.905" layer="21"/>
<rectangle x1="-0.381" y1="-2.921" x2="0.381" y2="-1.905" layer="21"/>
<rectangle x1="-2.921" y1="-5.461" x2="-2.159" y2="-4.699" layer="21"/>
<rectangle x1="-2.921" y1="-4.699" x2="-2.159" y2="-2.921" layer="51"/>
<rectangle x1="-0.381" y1="-4.699" x2="0.381" y2="-2.921" layer="51"/>
<rectangle x1="-0.381" y1="-5.461" x2="0.381" y2="-4.699" layer="21"/>
<rectangle x1="2.159" y1="-2.921" x2="2.921" y2="-1.905" layer="21"/>
<rectangle x1="4.699" y1="-2.921" x2="5.461" y2="-1.905" layer="21"/>
<rectangle x1="2.159" y1="-5.461" x2="2.921" y2="-4.699" layer="21"/>
<rectangle x1="2.159" y1="-4.699" x2="2.921" y2="-2.921" layer="51"/>
<rectangle x1="4.699" y1="-4.699" x2="5.461" y2="-2.921" layer="51"/>
<rectangle x1="4.699" y1="-5.461" x2="5.461" y2="-4.699" layer="21"/>
<rectangle x1="7.239" y1="-2.921" x2="8.001" y2="-1.905" layer="21"/>
<rectangle x1="7.239" y1="-5.461" x2="8.001" y2="-4.699" layer="21"/>
<rectangle x1="7.239" y1="-4.699" x2="8.001" y2="-2.921" layer="51"/>
</package>
</packages>
<symbols>
<symbol name="PINH2X7">
<wire x1="-6.35" y1="-10.16" x2="8.89" y2="-10.16" width="0.4064" layer="94"/>
<wire x1="8.89" y1="-10.16" x2="8.89" y2="10.16" width="0.4064" layer="94"/>
<wire x1="8.89" y1="10.16" x2="-6.35" y2="10.16" width="0.4064" layer="94"/>
<wire x1="-6.35" y1="10.16" x2="-6.35" y2="-10.16" width="0.4064" layer="94"/>
<text x="-6.35" y="10.795" size="1.778" layer="95">&gt;NAME</text>
<text x="-6.35" y="-12.7" size="1.778" layer="96">&gt;VALUE</text>
<pin name="1" x="-2.54" y="7.62" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="2" x="5.08" y="7.62" visible="pad" length="short" direction="pas" function="dot" rot="R180"/>
<pin name="3" x="-2.54" y="5.08" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="4" x="5.08" y="5.08" visible="pad" length="short" direction="pas" function="dot" rot="R180"/>
<pin name="5" x="-2.54" y="2.54" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="6" x="5.08" y="2.54" visible="pad" length="short" direction="pas" function="dot" rot="R180"/>
<pin name="7" x="-2.54" y="0" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="8" x="5.08" y="0" visible="pad" length="short" direction="pas" function="dot" rot="R180"/>
<pin name="9" x="-2.54" y="-2.54" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="10" x="5.08" y="-2.54" visible="pad" length="short" direction="pas" function="dot" rot="R180"/>
<pin name="11" x="-2.54" y="-5.08" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="12" x="5.08" y="-5.08" visible="pad" length="short" direction="pas" function="dot" rot="R180"/>
<pin name="13" x="-2.54" y="-7.62" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="14" x="5.08" y="-7.62" visible="pad" length="short" direction="pas" function="dot" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="PINHD-2X7" prefix="JP" uservalue="yes">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<gates>
<gate name="A" symbol="PINH2X7" x="0" y="0"/>
</gates>
<devices>
<device name="" package="2X07">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="10" pad="10"/>
<connect gate="A" pin="11" pad="11"/>
<connect gate="A" pin="12" pad="12"/>
<connect gate="A" pin="13" pad="13"/>
<connect gate="A" pin="14" pad="14"/>
<connect gate="A" pin="2" pad="2"/>
<connect gate="A" pin="3" pad="3"/>
<connect gate="A" pin="4" pad="4"/>
<connect gate="A" pin="5" pad="5"/>
<connect gate="A" pin="6" pad="6"/>
<connect gate="A" pin="7" pad="7"/>
<connect gate="A" pin="8" pad="8"/>
<connect gate="A" pin="9" pad="9"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="/90" package="2X07/90">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="10" pad="10"/>
<connect gate="A" pin="11" pad="11"/>
<connect gate="A" pin="12" pad="12"/>
<connect gate="A" pin="13" pad="13"/>
<connect gate="A" pin="14" pad="14"/>
<connect gate="A" pin="2" pad="2"/>
<connect gate="A" pin="3" pad="3"/>
<connect gate="A" pin="4" pad="4"/>
<connect gate="A" pin="5" pad="5"/>
<connect gate="A" pin="6" pad="6"/>
<connect gate="A" pin="7" pad="7"/>
<connect gate="A" pin="8" pad="8"/>
<connect gate="A" pin="9" pad="9"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="U1" library="RHD2000" deviceset="RHD2216" device=""/>
<part name="JP1" library="pinhead" deviceset="PINHD-2X7" device=""/>
<part name="JP2" library="pinhead" deviceset="PINHD-2X7" device=""/>
<part name="JP3" library="pinhead" deviceset="PINHD-2X7" device=""/>
<part name="JP4" library="pinhead" deviceset="PINHD-2X7" device=""/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="U1" gate="A" x="-33.02" y="88.9"/>
<instance part="JP1" gate="A" x="-93.98" y="78.74"/>
<instance part="JP2" gate="A" x="-35.56" y="165.1"/>
<instance part="JP3" gate="A" x="45.72" y="99.06" rot="R180"/>
<instance part="JP4" gate="A" x="-27.94" y="22.86"/>
</instances>
<busses>
</busses>
<nets>
<net name="N$2" class="0">
<segment>
<pinref part="U1" gate="A" pin="IN4+"/>
<wire x1="-63.5" y1="114.3" x2="-101.6" y2="114.3" width="0.1524" layer="91"/>
<wire x1="-101.6" y1="114.3" x2="-101.6" y2="86.36" width="0.1524" layer="91"/>
<pinref part="JP1" gate="A" pin="1"/>
<wire x1="-101.6" y1="86.36" x2="-96.52" y2="86.36" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<pinref part="U1" gate="A" pin="IN3-"/>
<wire x1="-63.5" y1="111.76" x2="-83.82" y2="111.76" width="0.1524" layer="91"/>
<wire x1="-83.82" y1="111.76" x2="-83.82" y2="86.36" width="0.1524" layer="91"/>
<pinref part="JP1" gate="A" pin="2"/>
<wire x1="-83.82" y1="86.36" x2="-88.9" y2="86.36" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="U1" gate="A" pin="IN3+"/>
<wire x1="-63.5" y1="109.22" x2="-104.14" y2="109.22" width="0.1524" layer="91"/>
<wire x1="-104.14" y1="109.22" x2="-104.14" y2="83.82" width="0.1524" layer="91"/>
<pinref part="JP1" gate="A" pin="3"/>
<wire x1="-104.14" y1="83.82" x2="-96.52" y2="83.82" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<pinref part="U1" gate="A" pin="IN2+"/>
<wire x1="-63.5" y1="104.14" x2="-106.68" y2="104.14" width="0.1524" layer="91"/>
<wire x1="-106.68" y1="104.14" x2="-106.68" y2="81.28" width="0.1524" layer="91"/>
<pinref part="JP1" gate="A" pin="5"/>
<wire x1="-106.68" y1="81.28" x2="-96.52" y2="81.28" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$6" class="0">
<segment>
<pinref part="U1" gate="A" pin="IN1+"/>
<wire x1="-63.5" y1="99.06" x2="-109.22" y2="99.06" width="0.1524" layer="91"/>
<wire x1="-109.22" y1="99.06" x2="-109.22" y2="78.74" width="0.1524" layer="91"/>
<pinref part="JP1" gate="A" pin="7"/>
<wire x1="-109.22" y1="78.74" x2="-96.52" y2="78.74" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$7" class="0">
<segment>
<pinref part="U1" gate="A" pin="IN0+"/>
<wire x1="-63.5" y1="93.98" x2="-111.76" y2="93.98" width="0.1524" layer="91"/>
<wire x1="-111.76" y1="93.98" x2="-111.76" y2="76.2" width="0.1524" layer="91"/>
<pinref part="JP1" gate="A" pin="9"/>
<wire x1="-111.76" y1="76.2" x2="-96.52" y2="76.2" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$8" class="0">
<segment>
<pinref part="U1" gate="A" pin="IN2-"/>
<wire x1="-63.5" y1="106.68" x2="-81.28" y2="106.68" width="0.1524" layer="91"/>
<wire x1="-81.28" y1="106.68" x2="-81.28" y2="83.82" width="0.1524" layer="91"/>
<pinref part="JP1" gate="A" pin="4"/>
<wire x1="-81.28" y1="83.82" x2="-88.9" y2="83.82" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$9" class="0">
<segment>
<pinref part="U1" gate="A" pin="IN1-"/>
<wire x1="-63.5" y1="101.6" x2="-78.74" y2="101.6" width="0.1524" layer="91"/>
<wire x1="-78.74" y1="101.6" x2="-78.74" y2="81.28" width="0.1524" layer="91"/>
<pinref part="JP1" gate="A" pin="6"/>
<wire x1="-78.74" y1="81.28" x2="-88.9" y2="81.28" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$10" class="0">
<segment>
<pinref part="U1" gate="A" pin="IN0-"/>
<wire x1="-63.5" y1="96.52" x2="-76.2" y2="96.52" width="0.1524" layer="91"/>
<wire x1="-76.2" y1="96.52" x2="-76.2" y2="78.74" width="0.1524" layer="91"/>
<pinref part="JP1" gate="A" pin="8"/>
<wire x1="-76.2" y1="78.74" x2="-88.9" y2="78.74" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$11" class="0">
<segment>
<pinref part="U1" gate="A" pin="GND0"/>
<wire x1="-63.5" y1="88.9" x2="-73.66" y2="88.9" width="0.1524" layer="91"/>
<wire x1="-73.66" y1="88.9" x2="-73.66" y2="76.2" width="0.1524" layer="91"/>
<pinref part="JP1" gate="A" pin="10"/>
<wire x1="-73.66" y1="76.2" x2="-88.9" y2="76.2" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$1" class="0">
<segment>
<pinref part="U1" gate="A" pin="GND2"/>
<wire x1="-63.5" y1="81.28" x2="-71.12" y2="81.28" width="0.1524" layer="91"/>
<wire x1="-71.12" y1="81.28" x2="-71.12" y2="73.66" width="0.1524" layer="91"/>
<pinref part="JP1" gate="A" pin="12"/>
<wire x1="-71.12" y1="73.66" x2="-88.9" y2="73.66" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$12" class="0">
<segment>
<pinref part="U1" gate="A" pin="AUXIN1"/>
<wire x1="-63.5" y1="73.66" x2="-63.5" y2="71.12" width="0.1524" layer="91"/>
<pinref part="JP1" gate="A" pin="14"/>
<wire x1="-63.5" y1="71.12" x2="-88.9" y2="71.12" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$13" class="0">
<segment>
<pinref part="U1" gate="A" pin="GND1"/>
<wire x1="-63.5" y1="83.82" x2="-68.58" y2="83.82" width="0.1524" layer="91"/>
<wire x1="-68.58" y1="83.82" x2="-68.58" y2="66.04" width="0.1524" layer="91"/>
<wire x1="-68.58" y1="66.04" x2="-101.6" y2="66.04" width="0.1524" layer="91"/>
<wire x1="-101.6" y1="66.04" x2="-101.6" y2="73.66" width="0.1524" layer="91"/>
<pinref part="JP1" gate="A" pin="11"/>
<wire x1="-101.6" y1="73.66" x2="-96.52" y2="73.66" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$14" class="0">
<segment>
<pinref part="U1" gate="A" pin="VDD1"/>
<wire x1="-63.5" y1="78.74" x2="-66.04" y2="78.74" width="0.1524" layer="91"/>
<wire x1="-66.04" y1="78.74" x2="-66.04" y2="63.5" width="0.1524" layer="91"/>
<wire x1="-66.04" y1="63.5" x2="-104.14" y2="63.5" width="0.1524" layer="91"/>
<wire x1="-104.14" y1="63.5" x2="-104.14" y2="71.12" width="0.1524" layer="91"/>
<pinref part="JP1" gate="A" pin="13"/>
<wire x1="-104.14" y1="71.12" x2="-96.52" y2="71.12" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$15" class="0">
<segment>
<pinref part="U1" gate="A" pin="IN4-"/>
<wire x1="-48.26" y1="121.92" x2="-81.28" y2="121.92" width="0.1524" layer="91"/>
<wire x1="-81.28" y1="121.92" x2="-81.28" y2="172.72" width="0.1524" layer="91"/>
<pinref part="JP2" gate="A" pin="1"/>
<wire x1="-81.28" y1="172.72" x2="-38.1" y2="172.72" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$16" class="0">
<segment>
<pinref part="U1" gate="A" pin="IN5-"/>
<wire x1="-43.18" y1="121.92" x2="-43.18" y2="124.46" width="0.1524" layer="91"/>
<wire x1="-43.18" y1="124.46" x2="-78.74" y2="124.46" width="0.1524" layer="91"/>
<wire x1="-78.74" y1="124.46" x2="-78.74" y2="170.18" width="0.1524" layer="91"/>
<pinref part="JP2" gate="A" pin="3"/>
<wire x1="-78.74" y1="170.18" x2="-38.1" y2="170.18" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$17" class="0">
<segment>
<pinref part="U1" gate="A" pin="IN6-"/>
<wire x1="-38.1" y1="121.92" x2="-38.1" y2="127" width="0.1524" layer="91"/>
<wire x1="-38.1" y1="127" x2="-76.2" y2="127" width="0.1524" layer="91"/>
<wire x1="-76.2" y1="127" x2="-76.2" y2="167.64" width="0.1524" layer="91"/>
<pinref part="JP2" gate="A" pin="5"/>
<wire x1="-76.2" y1="167.64" x2="-38.1" y2="167.64" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$19" class="0">
<segment>
<pinref part="U1" gate="A" pin="IN7-"/>
<wire x1="-33.02" y1="121.92" x2="-33.02" y2="129.54" width="0.1524" layer="91"/>
<wire x1="-33.02" y1="129.54" x2="-73.66" y2="129.54" width="0.1524" layer="91"/>
<wire x1="-73.66" y1="129.54" x2="-73.66" y2="165.1" width="0.1524" layer="91"/>
<pinref part="JP2" gate="A" pin="7"/>
<wire x1="-73.66" y1="165.1" x2="-38.1" y2="165.1" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$20" class="0">
<segment>
<pinref part="U1" gate="A" pin="IN8-"/>
<wire x1="-27.94" y1="121.92" x2="-27.94" y2="132.08" width="0.1524" layer="91"/>
<wire x1="-27.94" y1="132.08" x2="-71.12" y2="132.08" width="0.1524" layer="91"/>
<wire x1="-71.12" y1="132.08" x2="-71.12" y2="162.56" width="0.1524" layer="91"/>
<pinref part="JP2" gate="A" pin="9"/>
<wire x1="-71.12" y1="162.56" x2="-38.1" y2="162.56" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$21" class="0">
<segment>
<pinref part="U1" gate="A" pin="IN9-"/>
<wire x1="-22.86" y1="121.92" x2="-22.86" y2="134.62" width="0.1524" layer="91"/>
<wire x1="-22.86" y1="134.62" x2="-68.58" y2="134.62" width="0.1524" layer="91"/>
<wire x1="-68.58" y1="134.62" x2="-68.58" y2="160.02" width="0.1524" layer="91"/>
<pinref part="JP2" gate="A" pin="11"/>
<wire x1="-68.58" y1="160.02" x2="-38.1" y2="160.02" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$22" class="0">
<segment>
<pinref part="U1" gate="A" pin="IN10-"/>
<wire x1="-17.78" y1="121.92" x2="-17.78" y2="137.16" width="0.1524" layer="91"/>
<wire x1="-17.78" y1="137.16" x2="-66.04" y2="137.16" width="0.1524" layer="91"/>
<wire x1="-66.04" y1="137.16" x2="-66.04" y2="157.48" width="0.1524" layer="91"/>
<pinref part="JP2" gate="A" pin="13"/>
<wire x1="-66.04" y1="157.48" x2="-38.1" y2="157.48" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$23" class="0">
<segment>
<pinref part="U1" gate="A" pin="IN5+"/>
<wire x1="-45.72" y1="121.92" x2="-45.72" y2="139.7" width="0.1524" layer="91"/>
<wire x1="-45.72" y1="139.7" x2="2.54" y2="139.7" width="0.1524" layer="91"/>
<wire x1="2.54" y1="139.7" x2="2.54" y2="172.72" width="0.1524" layer="91"/>
<pinref part="JP2" gate="A" pin="2"/>
<wire x1="2.54" y1="172.72" x2="-30.48" y2="172.72" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$24" class="0">
<segment>
<pinref part="U1" gate="A" pin="IN6+"/>
<wire x1="-40.64" y1="121.92" x2="-40.64" y2="142.24" width="0.1524" layer="91"/>
<wire x1="-40.64" y1="142.24" x2="5.08" y2="142.24" width="0.1524" layer="91"/>
<wire x1="5.08" y1="142.24" x2="5.08" y2="170.18" width="0.1524" layer="91"/>
<pinref part="JP2" gate="A" pin="4"/>
<wire x1="5.08" y1="170.18" x2="-30.48" y2="170.18" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$25" class="0">
<segment>
<pinref part="U1" gate="A" pin="IN7+"/>
<wire x1="-35.56" y1="121.92" x2="-35.56" y2="144.78" width="0.1524" layer="91"/>
<wire x1="-35.56" y1="144.78" x2="7.62" y2="144.78" width="0.1524" layer="91"/>
<wire x1="7.62" y1="144.78" x2="7.62" y2="167.64" width="0.1524" layer="91"/>
<pinref part="JP2" gate="A" pin="6"/>
<wire x1="7.62" y1="167.64" x2="-30.48" y2="167.64" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$26" class="0">
<segment>
<pinref part="U1" gate="A" pin="IN8+"/>
<wire x1="-30.48" y1="121.92" x2="-30.48" y2="147.32" width="0.1524" layer="91"/>
<wire x1="-30.48" y1="147.32" x2="10.16" y2="147.32" width="0.1524" layer="91"/>
<wire x1="10.16" y1="147.32" x2="10.16" y2="165.1" width="0.1524" layer="91"/>
<pinref part="JP2" gate="A" pin="8"/>
<wire x1="10.16" y1="165.1" x2="-30.48" y2="165.1" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$27" class="0">
<segment>
<pinref part="U1" gate="A" pin="IN9+"/>
<wire x1="-25.4" y1="121.92" x2="-25.4" y2="149.86" width="0.1524" layer="91"/>
<wire x1="-25.4" y1="149.86" x2="12.7" y2="149.86" width="0.1524" layer="91"/>
<wire x1="12.7" y1="149.86" x2="12.7" y2="162.56" width="0.1524" layer="91"/>
<pinref part="JP2" gate="A" pin="10"/>
<wire x1="12.7" y1="162.56" x2="-30.48" y2="162.56" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$28" class="0">
<segment>
<pinref part="U1" gate="A" pin="IN10+"/>
<wire x1="-20.32" y1="121.92" x2="-20.32" y2="152.4" width="0.1524" layer="91"/>
<wire x1="-20.32" y1="152.4" x2="15.24" y2="152.4" width="0.1524" layer="91"/>
<wire x1="15.24" y1="152.4" x2="15.24" y2="160.02" width="0.1524" layer="91"/>
<pinref part="JP2" gate="A" pin="12"/>
<wire x1="15.24" y1="160.02" x2="-30.48" y2="160.02" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$29" class="0">
<segment>
<pinref part="U1" gate="A" pin="IN11+"/>
<wire x1="-15.24" y1="121.92" x2="-15.24" y2="154.94" width="0.1524" layer="91"/>
<wire x1="-15.24" y1="154.94" x2="17.78" y2="154.94" width="0.1524" layer="91"/>
<wire x1="17.78" y1="154.94" x2="17.78" y2="157.48" width="0.1524" layer="91"/>
<pinref part="JP2" gate="A" pin="14"/>
<wire x1="17.78" y1="157.48" x2="-30.48" y2="157.48" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$43" class="0">
<segment>
<pinref part="U1" gate="A" pin="GND4"/>
<wire x1="0" y1="71.12" x2="55.88" y2="71.12" width="0.1524" layer="91"/>
<wire x1="55.88" y1="71.12" x2="55.88" y2="91.44" width="0.1524" layer="91"/>
<pinref part="JP3" gate="A" pin="1"/>
<wire x1="55.88" y1="91.44" x2="48.26" y2="91.44" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$44" class="0">
<segment>
<pinref part="U1" gate="A" pin="VDD3"/>
<wire x1="0" y1="81.28" x2="58.42" y2="81.28" width="0.1524" layer="91"/>
<wire x1="58.42" y1="81.28" x2="58.42" y2="93.98" width="0.1524" layer="91"/>
<pinref part="JP3" gate="A" pin="3"/>
<wire x1="58.42" y1="93.98" x2="48.26" y2="93.98" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$45" class="0">
<segment>
<pinref part="U1" gate="A" pin="ELEC_TEST"/>
<wire x1="0" y1="88.9" x2="60.96" y2="88.9" width="0.1524" layer="91"/>
<wire x1="60.96" y1="88.9" x2="60.96" y2="96.52" width="0.1524" layer="91"/>
<pinref part="JP3" gate="A" pin="5"/>
<wire x1="60.96" y1="96.52" x2="48.26" y2="96.52" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$46" class="0">
<segment>
<pinref part="U1" gate="A" pin="IN15+"/>
<wire x1="0" y1="96.52" x2="17.78" y2="96.52" width="0.1524" layer="91"/>
<wire x1="17.78" y1="96.52" x2="17.78" y2="119.38" width="0.1524" layer="91"/>
<wire x1="17.78" y1="119.38" x2="60.96" y2="119.38" width="0.1524" layer="91"/>
<wire x1="60.96" y1="119.38" x2="60.96" y2="99.06" width="0.1524" layer="91"/>
<pinref part="JP3" gate="A" pin="7"/>
<wire x1="60.96" y1="99.06" x2="48.26" y2="99.06" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$47" class="0">
<segment>
<pinref part="U1" gate="A" pin="IN14+"/>
<wire x1="0" y1="101.6" x2="15.24" y2="101.6" width="0.1524" layer="91"/>
<wire x1="15.24" y1="101.6" x2="15.24" y2="121.92" width="0.1524" layer="91"/>
<wire x1="15.24" y1="121.92" x2="63.5" y2="121.92" width="0.1524" layer="91"/>
<wire x1="63.5" y1="121.92" x2="63.5" y2="101.6" width="0.1524" layer="91"/>
<pinref part="JP3" gate="A" pin="9"/>
<wire x1="63.5" y1="101.6" x2="48.26" y2="101.6" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$48" class="0">
<segment>
<pinref part="U1" gate="A" pin="IN13+"/>
<wire x1="0" y1="106.68" x2="12.7" y2="106.68" width="0.1524" layer="91"/>
<wire x1="12.7" y1="106.68" x2="12.7" y2="124.46" width="0.1524" layer="91"/>
<wire x1="12.7" y1="124.46" x2="66.04" y2="124.46" width="0.1524" layer="91"/>
<wire x1="66.04" y1="124.46" x2="66.04" y2="104.14" width="0.1524" layer="91"/>
<pinref part="JP3" gate="A" pin="11"/>
<wire x1="66.04" y1="104.14" x2="48.26" y2="104.14" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$49" class="0">
<segment>
<pinref part="U1" gate="A" pin="IN12+"/>
<wire x1="0" y1="111.76" x2="10.16" y2="111.76" width="0.1524" layer="91"/>
<wire x1="10.16" y1="111.76" x2="10.16" y2="127" width="0.1524" layer="91"/>
<wire x1="10.16" y1="127" x2="68.58" y2="127" width="0.1524" layer="91"/>
<wire x1="68.58" y1="127" x2="68.58" y2="106.68" width="0.1524" layer="91"/>
<pinref part="JP3" gate="A" pin="13"/>
<wire x1="68.58" y1="106.68" x2="48.26" y2="106.68" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$50" class="0">
<segment>
<pinref part="U1" gate="A" pin="LVDS_EN"/>
<wire x1="0" y1="76.2" x2="35.56" y2="76.2" width="0.1524" layer="91"/>
<wire x1="35.56" y1="76.2" x2="35.56" y2="91.44" width="0.1524" layer="91"/>
<pinref part="JP3" gate="A" pin="2"/>
<wire x1="35.56" y1="91.44" x2="40.64" y2="91.44" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$51" class="0">
<segment>
<pinref part="U1" gate="A" pin="VESD"/>
<wire x1="0" y1="86.36" x2="33.02" y2="86.36" width="0.1524" layer="91"/>
<wire x1="33.02" y1="86.36" x2="33.02" y2="93.98" width="0.1524" layer="91"/>
<pinref part="JP3" gate="A" pin="4"/>
<wire x1="33.02" y1="93.98" x2="40.64" y2="93.98" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$52" class="0">
<segment>
<pinref part="U1" gate="A" pin="IN15-"/>
<wire x1="0" y1="93.98" x2="30.48" y2="93.98" width="0.1524" layer="91"/>
<wire x1="30.48" y1="93.98" x2="30.48" y2="96.52" width="0.1524" layer="91"/>
<pinref part="JP3" gate="A" pin="6"/>
<wire x1="30.48" y1="96.52" x2="40.64" y2="96.52" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$53" class="0">
<segment>
<pinref part="U1" gate="A" pin="IN14-"/>
<pinref part="JP3" gate="A" pin="8"/>
<wire x1="0" y1="99.06" x2="40.64" y2="99.06" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$54" class="0">
<segment>
<pinref part="U1" gate="A" pin="IN13-"/>
<wire x1="0" y1="104.14" x2="30.48" y2="104.14" width="0.1524" layer="91"/>
<wire x1="30.48" y1="104.14" x2="30.48" y2="101.6" width="0.1524" layer="91"/>
<pinref part="JP3" gate="A" pin="10"/>
<wire x1="30.48" y1="101.6" x2="40.64" y2="101.6" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$55" class="0">
<segment>
<pinref part="JP3" gate="A" pin="12"/>
<wire x1="40.64" y1="104.14" x2="33.02" y2="104.14" width="0.1524" layer="91"/>
<wire x1="33.02" y1="104.14" x2="33.02" y2="109.22" width="0.1524" layer="91"/>
<pinref part="U1" gate="A" pin="IN12-"/>
<wire x1="33.02" y1="109.22" x2="0" y2="109.22" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$56" class="0">
<segment>
<pinref part="U1" gate="A" pin="IN11-"/>
<pinref part="JP3" gate="A" pin="14"/>
<wire x1="0" y1="114.3" x2="40.64" y2="114.3" width="0.1524" layer="91"/>
<wire x1="40.64" y1="114.3" x2="40.64" y2="106.68" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$18" class="0">
<segment>
<pinref part="U1" gate="A" pin="AUXIN2"/>
<wire x1="-55.88" y1="58.42" x2="-55.88" y2="30.48" width="0.1524" layer="91"/>
<pinref part="JP4" gate="A" pin="1"/>
<wire x1="-55.88" y1="30.48" x2="-30.48" y2="30.48" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$30" class="0">
<segment>
<pinref part="U1" gate="A" pin="AUXIN3"/>
<wire x1="-53.34" y1="58.42" x2="-53.34" y2="35.56" width="0.1524" layer="91"/>
<wire x1="-53.34" y1="35.56" x2="-17.78" y2="35.56" width="0.1524" layer="91"/>
<wire x1="-17.78" y1="35.56" x2="-17.78" y2="30.48" width="0.1524" layer="91"/>
<pinref part="JP4" gate="A" pin="2"/>
<wire x1="-17.78" y1="30.48" x2="-22.86" y2="30.48" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$31" class="0">
<segment>
<pinref part="U1" gate="A" pin="GND3"/>
<wire x1="-48.26" y1="58.42" x2="-48.26" y2="27.94" width="0.1524" layer="91"/>
<pinref part="JP4" gate="A" pin="3"/>
<wire x1="-48.26" y1="27.94" x2="-30.48" y2="27.94" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$32" class="0">
<segment>
<pinref part="U1" gate="A" pin="!CS!-"/>
<wire x1="-43.18" y1="58.42" x2="-43.18" y2="38.1" width="0.1524" layer="91"/>
<wire x1="-43.18" y1="38.1" x2="-15.24" y2="38.1" width="0.1524" layer="91"/>
<wire x1="-15.24" y1="38.1" x2="-15.24" y2="27.94" width="0.1524" layer="91"/>
<pinref part="JP4" gate="A" pin="4"/>
<wire x1="-15.24" y1="27.94" x2="-22.86" y2="27.94" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$33" class="0">
<segment>
<pinref part="U1" gate="A" pin="!CS!+"/>
<wire x1="-40.64" y1="58.42" x2="-40.64" y2="25.4" width="0.1524" layer="91"/>
<pinref part="JP4" gate="A" pin="5"/>
<wire x1="-40.64" y1="25.4" x2="-30.48" y2="25.4" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$34" class="0">
<segment>
<pinref part="U1" gate="A" pin="SCLK-"/>
<wire x1="-38.1" y1="58.42" x2="-38.1" y2="40.64" width="0.1524" layer="91"/>
<wire x1="-38.1" y1="40.64" x2="-12.7" y2="40.64" width="0.1524" layer="91"/>
<wire x1="-12.7" y1="40.64" x2="-12.7" y2="25.4" width="0.1524" layer="91"/>
<pinref part="JP4" gate="A" pin="6"/>
<wire x1="-12.7" y1="25.4" x2="-22.86" y2="25.4" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$35" class="0">
<segment>
<pinref part="U1" gate="A" pin="SCLK+"/>
<wire x1="-35.56" y1="58.42" x2="-35.56" y2="22.86" width="0.1524" layer="91"/>
<pinref part="JP4" gate="A" pin="7"/>
<wire x1="-35.56" y1="22.86" x2="-30.48" y2="22.86" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$36" class="0">
<segment>
<pinref part="U1" gate="A" pin="MOSI-"/>
<wire x1="-33.02" y1="58.42" x2="-33.02" y2="43.18" width="0.1524" layer="91"/>
<wire x1="-33.02" y1="43.18" x2="-10.16" y2="43.18" width="0.1524" layer="91"/>
<wire x1="-10.16" y1="43.18" x2="-10.16" y2="22.86" width="0.1524" layer="91"/>
<pinref part="JP4" gate="A" pin="8"/>
<wire x1="-10.16" y1="22.86" x2="-22.86" y2="22.86" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$37" class="0">
<segment>
<pinref part="U1" gate="A" pin="MOSI+"/>
<wire x1="-30.48" y1="58.42" x2="-30.48" y2="45.72" width="0.1524" layer="91"/>
<wire x1="-30.48" y1="45.72" x2="-58.42" y2="45.72" width="0.1524" layer="91"/>
<wire x1="-58.42" y1="45.72" x2="-58.42" y2="20.32" width="0.1524" layer="91"/>
<pinref part="JP4" gate="A" pin="9"/>
<wire x1="-58.42" y1="20.32" x2="-30.48" y2="20.32" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$38" class="0">
<segment>
<pinref part="U1" gate="A" pin="MISO-"/>
<wire x1="-27.94" y1="58.42" x2="-27.94" y2="45.72" width="0.1524" layer="91"/>
<wire x1="-27.94" y1="45.72" x2="-7.62" y2="45.72" width="0.1524" layer="91"/>
<wire x1="-7.62" y1="45.72" x2="-7.62" y2="20.32" width="0.1524" layer="91"/>
<pinref part="JP4" gate="A" pin="10"/>
<wire x1="-7.62" y1="20.32" x2="-22.86" y2="20.32" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$39" class="0">
<segment>
<pinref part="U1" gate="A" pin="MISO+"/>
<wire x1="-25.4" y1="58.42" x2="-25.4" y2="48.26" width="0.1524" layer="91"/>
<wire x1="-25.4" y1="48.26" x2="-60.96" y2="48.26" width="0.1524" layer="91"/>
<wire x1="-60.96" y1="48.26" x2="-60.96" y2="17.78" width="0.1524" layer="91"/>
<pinref part="JP4" gate="A" pin="11"/>
<wire x1="-60.96" y1="17.78" x2="-30.48" y2="17.78" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$40" class="0">
<segment>
<pinref part="U1" gate="A" pin="VDD2"/>
<wire x1="-20.32" y1="58.42" x2="-20.32" y2="48.26" width="0.1524" layer="91"/>
<wire x1="-20.32" y1="48.26" x2="-5.08" y2="48.26" width="0.1524" layer="91"/>
<wire x1="-5.08" y1="48.26" x2="-5.08" y2="17.78" width="0.1524" layer="91"/>
<pinref part="JP4" gate="A" pin="12"/>
<wire x1="-5.08" y1="17.78" x2="-22.86" y2="17.78" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$41" class="0">
<segment>
<pinref part="U1" gate="A" pin="AUXOUT"/>
<wire x1="-15.24" y1="58.42" x2="-15.24" y2="50.8" width="0.1524" layer="91"/>
<wire x1="-15.24" y1="50.8" x2="-63.5" y2="50.8" width="0.1524" layer="91"/>
<wire x1="-63.5" y1="50.8" x2="-63.5" y2="15.24" width="0.1524" layer="91"/>
<pinref part="JP4" gate="A" pin="13"/>
<wire x1="-63.5" y1="15.24" x2="-30.48" y2="15.24" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$42" class="0">
<segment>
<pinref part="U1" gate="A" pin="ADC_REF"/>
<wire x1="-12.7" y1="58.42" x2="-12.7" y2="50.8" width="0.1524" layer="91"/>
<wire x1="-12.7" y1="50.8" x2="-2.54" y2="50.8" width="0.1524" layer="91"/>
<wire x1="-2.54" y1="50.8" x2="-2.54" y2="15.24" width="0.1524" layer="91"/>
<pinref part="JP4" gate="A" pin="14"/>
<wire x1="-2.54" y1="15.24" x2="-22.86" y2="15.24" width="0.1524" layer="91"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
<errors>
<approved hash="104,1,-48.26,58.42,U1,GND3,N$31,,,"/>
<approved hash="104,1,0,71.12,U1,GND4,N$43,,,"/>
<approved hash="104,1,-20.32,58.42,U1,VDD2,N$40,,,"/>
<approved hash="204,1,0,66.04,U1,CTR,,,,"/>
<approved hash="115,1,-26.7123,24.2612,JP4,,,,,"/>
</errors>
</schematic>
</drawing>
</eagle>
