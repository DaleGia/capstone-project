<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="9.0.0">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="2" name="Route2" color="1" fill="3" visible="no" active="no"/>
<layer number="3" name="Route3" color="4" fill="3" visible="no" active="no"/>
<layer number="4" name="Route4" color="1" fill="4" visible="no" active="no"/>
<layer number="5" name="Route5" color="4" fill="4" visible="no" active="no"/>
<layer number="6" name="Route6" color="1" fill="8" visible="no" active="no"/>
<layer number="7" name="Route7" color="4" fill="8" visible="no" active="no"/>
<layer number="8" name="Route8" color="1" fill="2" visible="no" active="no"/>
<layer number="9" name="Route9" color="4" fill="2" visible="no" active="no"/>
<layer number="10" name="Route10" color="1" fill="7" visible="no" active="no"/>
<layer number="11" name="Route11" color="4" fill="7" visible="no" active="no"/>
<layer number="12" name="Route12" color="1" fill="5" visible="no" active="no"/>
<layer number="13" name="Route13" color="4" fill="5" visible="no" active="no"/>
<layer number="14" name="Route14" color="1" fill="6" visible="no" active="no"/>
<layer number="15" name="Route15" color="4" fill="6" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="24" fill="1" visible="no" active="no"/>
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
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="88" name="SimResults" color="9" fill="1" visible="yes" active="yes"/>
<layer number="89" name="SimProbes" color="9" fill="1" visible="yes" active="yes"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="pinhead" urn="urn:adsk.eagle:library:325">
<description>&lt;b&gt;Pin Header Connectors&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="2X08" urn="urn:adsk.eagle:footprint:22373/1" library_version="3">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="-10.16" y1="-1.905" x2="-9.525" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-8.255" y1="-2.54" x2="-7.62" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="-1.905" x2="-6.985" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-5.715" y1="-2.54" x2="-5.08" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="-1.905" x2="-4.445" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="-2.54" x2="-2.54" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-1.905" x2="-1.905" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="-2.54" x2="0" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="0" y1="-1.905" x2="0.635" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="1.905" y1="-2.54" x2="2.54" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-1.905" x2="3.175" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="4.445" y1="-2.54" x2="5.08" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="-1.905" x2="-10.16" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="1.905" x2="-9.525" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-9.525" y1="2.54" x2="-8.255" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-8.255" y1="2.54" x2="-7.62" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="1.905" x2="-6.985" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-6.985" y1="2.54" x2="-5.715" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-5.715" y1="2.54" x2="-5.08" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="1.905" x2="-4.445" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="2.54" x2="-3.175" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="2.54" x2="-2.54" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="1.905" x2="-1.905" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="2.54" x2="-0.635" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="2.54" x2="0" y2="1.905" width="0.1524" layer="21"/>
<wire x1="0" y1="1.905" x2="0.635" y2="2.54" width="0.1524" layer="21"/>
<wire x1="0.635" y1="2.54" x2="1.905" y2="2.54" width="0.1524" layer="21"/>
<wire x1="1.905" y1="2.54" x2="2.54" y2="1.905" width="0.1524" layer="21"/>
<wire x1="2.54" y1="1.905" x2="3.175" y2="2.54" width="0.1524" layer="21"/>
<wire x1="3.175" y1="2.54" x2="4.445" y2="2.54" width="0.1524" layer="21"/>
<wire x1="4.445" y1="2.54" x2="5.08" y2="1.905" width="0.1524" layer="21"/>
<wire x1="5.08" y1="1.905" x2="5.715" y2="2.54" width="0.1524" layer="21"/>
<wire x1="5.715" y1="2.54" x2="6.985" y2="2.54" width="0.1524" layer="21"/>
<wire x1="6.985" y1="2.54" x2="7.62" y2="1.905" width="0.1524" layer="21"/>
<wire x1="7.62" y1="-1.905" x2="6.985" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="5.08" y1="-1.905" x2="5.715" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="1.905" x2="-7.62" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="1.905" x2="-5.08" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="1.905" x2="-2.54" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="0" y1="1.905" x2="0" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="2.54" y1="1.905" x2="2.54" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="5.08" y1="1.905" x2="5.08" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="7.62" y1="1.905" x2="7.62" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="5.715" y1="-2.54" x2="6.985" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="3.175" y1="-2.54" x2="4.445" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="0.635" y1="-2.54" x2="1.905" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="-2.54" x2="-0.635" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="-2.54" x2="-3.175" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-6.985" y1="-2.54" x2="-5.715" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-9.525" y1="-2.54" x2="-8.255" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="7.62" y1="1.905" x2="8.255" y2="2.54" width="0.1524" layer="21"/>
<wire x1="8.255" y1="2.54" x2="9.525" y2="2.54" width="0.1524" layer="21"/>
<wire x1="9.525" y1="2.54" x2="10.16" y2="1.905" width="0.1524" layer="21"/>
<wire x1="10.16" y1="-1.905" x2="9.525" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="7.62" y1="-1.905" x2="8.255" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="10.16" y1="1.905" x2="10.16" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="8.255" y1="-2.54" x2="9.525" y2="-2.54" width="0.1524" layer="21"/>
<pad name="1" x="-8.89" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="2" x="-8.89" y="1.27" drill="1.016" shape="octagon"/>
<pad name="3" x="-6.35" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="4" x="-6.35" y="1.27" drill="1.016" shape="octagon"/>
<pad name="5" x="-3.81" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="6" x="-3.81" y="1.27" drill="1.016" shape="octagon"/>
<pad name="7" x="-1.27" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="8" x="-1.27" y="1.27" drill="1.016" shape="octagon"/>
<pad name="9" x="1.27" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="10" x="1.27" y="1.27" drill="1.016" shape="octagon"/>
<pad name="11" x="3.81" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="12" x="3.81" y="1.27" drill="1.016" shape="octagon"/>
<pad name="13" x="6.35" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="14" x="6.35" y="1.27" drill="1.016" shape="octagon"/>
<pad name="15" x="8.89" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="16" x="8.89" y="1.27" drill="1.016" shape="octagon"/>
<text x="-10.16" y="3.175" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-10.16" y="-4.445" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-9.144" y1="-1.524" x2="-8.636" y2="-1.016" layer="51"/>
<rectangle x1="-9.144" y1="1.016" x2="-8.636" y2="1.524" layer="51"/>
<rectangle x1="-6.604" y1="1.016" x2="-6.096" y2="1.524" layer="51"/>
<rectangle x1="-6.604" y1="-1.524" x2="-6.096" y2="-1.016" layer="51"/>
<rectangle x1="-4.064" y1="1.016" x2="-3.556" y2="1.524" layer="51"/>
<rectangle x1="-4.064" y1="-1.524" x2="-3.556" y2="-1.016" layer="51"/>
<rectangle x1="-1.524" y1="1.016" x2="-1.016" y2="1.524" layer="51"/>
<rectangle x1="1.016" y1="1.016" x2="1.524" y2="1.524" layer="51"/>
<rectangle x1="3.556" y1="1.016" x2="4.064" y2="1.524" layer="51"/>
<rectangle x1="-1.524" y1="-1.524" x2="-1.016" y2="-1.016" layer="51"/>
<rectangle x1="1.016" y1="-1.524" x2="1.524" y2="-1.016" layer="51"/>
<rectangle x1="3.556" y1="-1.524" x2="4.064" y2="-1.016" layer="51"/>
<rectangle x1="6.096" y1="1.016" x2="6.604" y2="1.524" layer="51"/>
<rectangle x1="6.096" y1="-1.524" x2="6.604" y2="-1.016" layer="51"/>
<rectangle x1="8.636" y1="1.016" x2="9.144" y2="1.524" layer="51"/>
<rectangle x1="8.636" y1="-1.524" x2="9.144" y2="-1.016" layer="51"/>
</package>
<package name="2X08/90" urn="urn:adsk.eagle:footprint:22374/1" library_version="3">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="-10.16" y1="-1.905" x2="-7.62" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="-1.905" x2="-7.62" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="0.635" x2="-10.16" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="0.635" x2="-10.16" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-8.89" y1="6.985" x2="-8.89" y2="1.27" width="0.762" layer="21"/>
<wire x1="-7.62" y1="-1.905" x2="-5.08" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="-1.905" x2="-5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="0.635" x2="-7.62" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-6.35" y1="6.985" x2="-6.35" y2="1.27" width="0.762" layer="21"/>
<wire x1="-5.08" y1="-1.905" x2="-2.54" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-1.905" x2="-2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="0.635" x2="-5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="6.985" x2="-3.81" y2="1.27" width="0.762" layer="21"/>
<wire x1="-2.54" y1="-1.905" x2="0" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="0" y1="-1.905" x2="0" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="0.635" x2="-2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="6.985" x2="-1.27" y2="1.27" width="0.762" layer="21"/>
<wire x1="0" y1="-1.905" x2="2.54" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-1.905" x2="2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="0.635" x2="0" y2="0.635" width="0.1524" layer="21"/>
<wire x1="1.27" y1="6.985" x2="1.27" y2="1.27" width="0.762" layer="21"/>
<wire x1="2.54" y1="-1.905" x2="5.08" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="5.08" y1="-1.905" x2="5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="5.08" y1="0.635" x2="2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="3.81" y1="6.985" x2="3.81" y2="1.27" width="0.762" layer="21"/>
<wire x1="5.08" y1="-1.905" x2="7.62" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="7.62" y1="-1.905" x2="7.62" y2="0.635" width="0.1524" layer="21"/>
<wire x1="7.62" y1="0.635" x2="5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="6.35" y1="6.985" x2="6.35" y2="1.27" width="0.762" layer="21"/>
<wire x1="7.62" y1="-1.905" x2="10.16" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="10.16" y1="-1.905" x2="10.16" y2="0.635" width="0.1524" layer="21"/>
<wire x1="10.16" y1="0.635" x2="7.62" y2="0.635" width="0.1524" layer="21"/>
<wire x1="8.89" y1="6.985" x2="8.89" y2="1.27" width="0.762" layer="21"/>
<pad name="2" x="-8.89" y="-3.81" drill="1.016" shape="octagon"/>
<pad name="4" x="-6.35" y="-3.81" drill="1.016" shape="octagon"/>
<pad name="6" x="-3.81" y="-3.81" drill="1.016" shape="octagon"/>
<pad name="8" x="-1.27" y="-3.81" drill="1.016" shape="octagon"/>
<pad name="10" x="1.27" y="-3.81" drill="1.016" shape="octagon"/>
<pad name="12" x="3.81" y="-3.81" drill="1.016" shape="octagon"/>
<pad name="14" x="6.35" y="-3.81" drill="1.016" shape="octagon"/>
<pad name="16" x="8.89" y="-3.81" drill="1.016" shape="octagon"/>
<pad name="1" x="-8.89" y="-6.35" drill="1.016" shape="octagon"/>
<pad name="3" x="-6.35" y="-6.35" drill="1.016" shape="octagon"/>
<pad name="5" x="-3.81" y="-6.35" drill="1.016" shape="octagon"/>
<pad name="7" x="-1.27" y="-6.35" drill="1.016" shape="octagon"/>
<pad name="9" x="1.27" y="-6.35" drill="1.016" shape="octagon"/>
<pad name="11" x="3.81" y="-6.35" drill="1.016" shape="octagon"/>
<pad name="13" x="6.35" y="-6.35" drill="1.016" shape="octagon"/>
<pad name="15" x="8.89" y="-6.35" drill="1.016" shape="octagon"/>
<text x="-10.795" y="-3.81" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="12.065" y="-3.81" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-9.271" y1="0.635" x2="-8.509" y2="1.143" layer="21"/>
<rectangle x1="-6.731" y1="0.635" x2="-5.969" y2="1.143" layer="21"/>
<rectangle x1="-4.191" y1="0.635" x2="-3.429" y2="1.143" layer="21"/>
<rectangle x1="-1.651" y1="0.635" x2="-0.889" y2="1.143" layer="21"/>
<rectangle x1="0.889" y1="0.635" x2="1.651" y2="1.143" layer="21"/>
<rectangle x1="3.429" y1="0.635" x2="4.191" y2="1.143" layer="21"/>
<rectangle x1="5.969" y1="0.635" x2="6.731" y2="1.143" layer="21"/>
<rectangle x1="8.509" y1="0.635" x2="9.271" y2="1.143" layer="21"/>
<rectangle x1="-9.271" y1="-2.921" x2="-8.509" y2="-1.905" layer="21"/>
<rectangle x1="-6.731" y1="-2.921" x2="-5.969" y2="-1.905" layer="21"/>
<rectangle x1="-9.271" y1="-5.461" x2="-8.509" y2="-4.699" layer="21"/>
<rectangle x1="-9.271" y1="-4.699" x2="-8.509" y2="-2.921" layer="51"/>
<rectangle x1="-6.731" y1="-4.699" x2="-5.969" y2="-2.921" layer="51"/>
<rectangle x1="-6.731" y1="-5.461" x2="-5.969" y2="-4.699" layer="21"/>
<rectangle x1="-4.191" y1="-2.921" x2="-3.429" y2="-1.905" layer="21"/>
<rectangle x1="-1.651" y1="-2.921" x2="-0.889" y2="-1.905" layer="21"/>
<rectangle x1="-4.191" y1="-5.461" x2="-3.429" y2="-4.699" layer="21"/>
<rectangle x1="-4.191" y1="-4.699" x2="-3.429" y2="-2.921" layer="51"/>
<rectangle x1="-1.651" y1="-4.699" x2="-0.889" y2="-2.921" layer="51"/>
<rectangle x1="-1.651" y1="-5.461" x2="-0.889" y2="-4.699" layer="21"/>
<rectangle x1="0.889" y1="-2.921" x2="1.651" y2="-1.905" layer="21"/>
<rectangle x1="3.429" y1="-2.921" x2="4.191" y2="-1.905" layer="21"/>
<rectangle x1="0.889" y1="-5.461" x2="1.651" y2="-4.699" layer="21"/>
<rectangle x1="0.889" y1="-4.699" x2="1.651" y2="-2.921" layer="51"/>
<rectangle x1="3.429" y1="-4.699" x2="4.191" y2="-2.921" layer="51"/>
<rectangle x1="3.429" y1="-5.461" x2="4.191" y2="-4.699" layer="21"/>
<rectangle x1="5.969" y1="-2.921" x2="6.731" y2="-1.905" layer="21"/>
<rectangle x1="8.509" y1="-2.921" x2="9.271" y2="-1.905" layer="21"/>
<rectangle x1="5.969" y1="-5.461" x2="6.731" y2="-4.699" layer="21"/>
<rectangle x1="5.969" y1="-4.699" x2="6.731" y2="-2.921" layer="51"/>
<rectangle x1="8.509" y1="-4.699" x2="9.271" y2="-2.921" layer="51"/>
<rectangle x1="8.509" y1="-5.461" x2="9.271" y2="-4.699" layer="21"/>
</package>
</packages>
<packages3d>
<package3d name="2X08" urn="urn:adsk.eagle:package:22481/2" type="model" library_version="3">
<description>PIN HEADER</description>
<packageinstances>
<packageinstance name="2X08"/>
</packageinstances>
</package3d>
<package3d name="2X08/90" urn="urn:adsk.eagle:package:22488/2" type="model" library_version="3">
<description>PIN HEADER</description>
<packageinstances>
<packageinstance name="2X08/90"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="PINH2X8" urn="urn:adsk.eagle:symbol:22372/1" library_version="3">
<wire x1="-6.35" y1="-12.7" x2="8.89" y2="-12.7" width="0.4064" layer="94"/>
<wire x1="8.89" y1="-12.7" x2="8.89" y2="10.16" width="0.4064" layer="94"/>
<wire x1="8.89" y1="10.16" x2="-6.35" y2="10.16" width="0.4064" layer="94"/>
<wire x1="-6.35" y1="10.16" x2="-6.35" y2="-12.7" width="0.4064" layer="94"/>
<text x="-6.35" y="10.795" size="1.778" layer="95">&gt;NAME</text>
<text x="-6.35" y="-15.24" size="1.778" layer="96">&gt;VALUE</text>
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
<pin name="15" x="-2.54" y="-10.16" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="16" x="5.08" y="-10.16" visible="pad" length="short" direction="pas" function="dot" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="PINHD-2X8" urn="urn:adsk.eagle:component:22549/3" prefix="JP" uservalue="yes" library_version="3">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<gates>
<gate name="A" symbol="PINH2X8" x="0" y="0"/>
</gates>
<devices>
<device name="" package="2X08">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="10" pad="10"/>
<connect gate="A" pin="11" pad="11"/>
<connect gate="A" pin="12" pad="12"/>
<connect gate="A" pin="13" pad="13"/>
<connect gate="A" pin="14" pad="14"/>
<connect gate="A" pin="15" pad="15"/>
<connect gate="A" pin="16" pad="16"/>
<connect gate="A" pin="2" pad="2"/>
<connect gate="A" pin="3" pad="3"/>
<connect gate="A" pin="4" pad="4"/>
<connect gate="A" pin="5" pad="5"/>
<connect gate="A" pin="6" pad="6"/>
<connect gate="A" pin="7" pad="7"/>
<connect gate="A" pin="8" pad="8"/>
<connect gate="A" pin="9" pad="9"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:22481/2"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="/90" package="2X08/90">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="10" pad="10"/>
<connect gate="A" pin="11" pad="11"/>
<connect gate="A" pin="12" pad="12"/>
<connect gate="A" pin="13" pad="13"/>
<connect gate="A" pin="14" pad="14"/>
<connect gate="A" pin="15" pad="15"/>
<connect gate="A" pin="16" pad="16"/>
<connect gate="A" pin="2" pad="2"/>
<connect gate="A" pin="3" pad="3"/>
<connect gate="A" pin="4" pad="4"/>
<connect gate="A" pin="5" pad="5"/>
<connect gate="A" pin="6" pad="6"/>
<connect gate="A" pin="7" pad="7"/>
<connect gate="A" pin="8" pad="8"/>
<connect gate="A" pin="9" pad="9"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:22488/2"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="MA40S4S">
<packages>
<package name="MA40S4S">
<pad name="INPUT+" x="0" y="0" drill="0.6" diameter="2.1844"/>
<pad name="INPUT-" x="5" y="0" drill="0.6" diameter="2.1844"/>
<circle x="2.5" y="0" radius="5" width="0.127" layer="47"/>
<text x="1.005071875" y="1.631365625" size="1.27" layer="21">S M</text>
<text x="0" y="-2.553640625" size="1.27" layer="21">xxxxxx</text>
</package>
</packages>
<symbols>
<symbol name="MA40S4S">
<wire x1="0" y1="0" x2="0" y2="7.62" width="0.254" layer="94"/>
<wire x1="0" y1="7.62" x2="10.16" y2="7.62" width="0.254" layer="94"/>
<wire x1="10.16" y1="7.62" x2="10.16" y2="0" width="0.254" layer="94"/>
<wire x1="10.16" y1="0" x2="0" y2="0" width="0.254" layer="94"/>
<pin name="INPUT+" x="-5.08" y="5.08" length="middle"/>
<pin name="INPUT-" x="-5.08" y="2.54" length="middle"/>
<text x="0" y="-2.54" size="1.27" layer="94">M40S4S</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="MA40S4S">
<gates>
<gate name="G$1" symbol="MA40S4S" x="0" y="0"/>
</gates>
<devices>
<device name="" package="MA40S4S">
<connects>
<connect gate="G$1" pin="INPUT+" pad="INPUT+"/>
<connect gate="G$1" pin="INPUT-" pad="INPUT-"/>
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
<part name="JP1" library="pinhead" library_urn="urn:adsk.eagle:library:325" deviceset="PINHD-2X8" device="" package3d_urn="urn:adsk.eagle:package:22481/2"/>
<part name="U$1" library="MA40S4S" deviceset="MA40S4S" device=""/>
<part name="U$2" library="MA40S4S" deviceset="MA40S4S" device=""/>
<part name="U$3" library="MA40S4S" deviceset="MA40S4S" device=""/>
<part name="U$4" library="MA40S4S" deviceset="MA40S4S" device=""/>
<part name="U$5" library="MA40S4S" deviceset="MA40S4S" device=""/>
<part name="U$6" library="MA40S4S" deviceset="MA40S4S" device=""/>
<part name="U$7" library="MA40S4S" deviceset="MA40S4S" device=""/>
<part name="U$8" library="MA40S4S" deviceset="MA40S4S" device=""/>
<part name="U$9" library="MA40S4S" deviceset="MA40S4S" device=""/>
<part name="U$10" library="MA40S4S" deviceset="MA40S4S" device=""/>
<part name="U$11" library="MA40S4S" deviceset="MA40S4S" device=""/>
<part name="U$12" library="MA40S4S" deviceset="MA40S4S" device=""/>
<part name="U$13" library="MA40S4S" deviceset="MA40S4S" device=""/>
<part name="U$14" library="MA40S4S" deviceset="MA40S4S" device=""/>
<part name="U$15" library="MA40S4S" deviceset="MA40S4S" device=""/>
<part name="U$16" library="MA40S4S" deviceset="MA40S4S" device=""/>
<part name="U$17" library="MA40S4S" deviceset="MA40S4S" device=""/>
<part name="U$18" library="MA40S4S" deviceset="MA40S4S" device=""/>
<part name="U$19" library="MA40S4S" deviceset="MA40S4S" device=""/>
<part name="U$20" library="MA40S4S" deviceset="MA40S4S" device=""/>
<part name="U$21" library="MA40S4S" deviceset="MA40S4S" device=""/>
<part name="U$22" library="MA40S4S" deviceset="MA40S4S" device=""/>
<part name="U$23" library="MA40S4S" deviceset="MA40S4S" device=""/>
<part name="U$24" library="MA40S4S" deviceset="MA40S4S" device=""/>
<part name="U$25" library="MA40S4S" deviceset="MA40S4S" device=""/>
<part name="U$26" library="MA40S4S" deviceset="MA40S4S" device=""/>
<part name="U$27" library="MA40S4S" deviceset="MA40S4S" device=""/>
<part name="U$28" library="MA40S4S" deviceset="MA40S4S" device=""/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="JP1" gate="A" x="129.54" y="0"/>
<instance part="U$1" gate="G$1" x="53.34" y="78.74"/>
<instance part="U$2" gate="G$1" x="53.34" y="66.04"/>
<instance part="U$3" gate="G$1" x="53.34" y="53.34"/>
<instance part="U$4" gate="G$1" x="53.34" y="40.64"/>
<instance part="U$5" gate="G$1" x="83.82" y="78.74"/>
<instance part="U$6" gate="G$1" x="83.82" y="66.04"/>
<instance part="U$7" gate="G$1" x="83.82" y="53.34"/>
<instance part="U$8" gate="G$1" x="83.82" y="40.64"/>
<instance part="U$9" gate="G$1" x="114.3" y="78.74"/>
<instance part="U$10" gate="G$1" x="114.3" y="66.04"/>
<instance part="U$11" gate="G$1" x="114.3" y="53.34"/>
<instance part="U$12" gate="G$1" x="114.3" y="40.64"/>
<instance part="U$13" gate="G$1" x="144.78" y="78.74"/>
<instance part="U$14" gate="G$1" x="144.78" y="66.04"/>
<instance part="U$15" gate="G$1" x="144.78" y="53.34"/>
<instance part="U$16" gate="G$1" x="144.78" y="40.64"/>
<instance part="U$17" gate="G$1" x="175.26" y="78.74"/>
<instance part="U$18" gate="G$1" x="175.26" y="66.04"/>
<instance part="U$19" gate="G$1" x="175.26" y="53.34"/>
<instance part="U$20" gate="G$1" x="175.26" y="40.64"/>
<instance part="U$21" gate="G$1" x="205.74" y="78.74"/>
<instance part="U$22" gate="G$1" x="205.74" y="66.04"/>
<instance part="U$23" gate="G$1" x="205.74" y="53.34"/>
<instance part="U$24" gate="G$1" x="205.74" y="40.64"/>
<instance part="U$25" gate="G$1" x="236.22" y="78.74"/>
<instance part="U$26" gate="G$1" x="236.22" y="66.04"/>
<instance part="U$27" gate="G$1" x="236.22" y="53.34"/>
<instance part="U$28" gate="G$1" x="236.22" y="40.64"/>
</instances>
<busses>
</busses>
<nets>
<net name="N$1" class="0">
<segment>
<wire x1="45.72" y1="68.58" x2="45.72" y2="55.88" width="0.1524" layer="91"/>
<junction x="45.72" y="55.88"/>
<wire x1="45.72" y1="43.18" x2="45.72" y2="55.88" width="0.1524" layer="91"/>
<junction x="45.72" y="43.18"/>
<wire x1="45.72" y1="81.28" x2="45.72" y2="68.58" width="0.1524" layer="91"/>
<junction x="45.72" y="68.58"/>
<wire x1="45.72" y1="43.18" x2="45.72" y2="6.35" width="0.1524" layer="91"/>
<wire x1="45.72" y1="6.35" x2="135.89" y2="6.35" width="0.1524" layer="91"/>
<wire x1="135.89" y1="6.35" x2="135.89" y2="5.08" width="0.1524" layer="91"/>
<pinref part="JP1" gate="A" pin="4"/>
<wire x1="135.89" y1="5.08" x2="134.62" y2="5.08" width="0.1524" layer="91"/>
<pinref part="U$2" gate="G$1" pin="INPUT-"/>
<pinref part="U$3" gate="G$1" pin="INPUT-"/>
<pinref part="U$4" gate="G$1" pin="INPUT-"/>
<wire x1="45.72" y1="43.18" x2="48.26" y2="43.18" width="0.1524" layer="91"/>
<wire x1="45.72" y1="55.88" x2="48.26" y2="55.88" width="0.1524" layer="91"/>
<wire x1="45.72" y1="68.58" x2="48.26" y2="68.58" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="INPUT-"/>
<wire x1="45.72" y1="81.28" x2="48.26" y2="81.28" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<wire x1="40.64" y1="83.82" x2="40.64" y2="71.12" width="0.1524" layer="91"/>
<wire x1="40.64" y1="71.12" x2="40.64" y2="58.42" width="0.1524" layer="91"/>
<wire x1="40.64" y1="58.42" x2="40.64" y2="45.72" width="0.1524" layer="91"/>
<junction x="40.64" y="45.72"/>
<junction x="40.64" y="58.42"/>
<junction x="40.64" y="71.12"/>
<pinref part="JP1" gate="A" pin="3"/>
<wire x1="40.64" y1="45.72" x2="40.64" y2="5.08" width="0.1524" layer="91"/>
<wire x1="40.64" y1="5.08" x2="127" y2="5.08" width="0.1524" layer="91"/>
<pinref part="U$2" gate="G$1" pin="INPUT+"/>
<pinref part="U$3" gate="G$1" pin="INPUT+"/>
<pinref part="U$4" gate="G$1" pin="INPUT+"/>
<wire x1="40.64" y1="45.72" x2="48.26" y2="45.72" width="0.1524" layer="91"/>
<wire x1="40.64" y1="58.42" x2="48.26" y2="58.42" width="0.1524" layer="91"/>
<wire x1="40.64" y1="71.12" x2="48.26" y2="71.12" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="INPUT+"/>
<wire x1="40.64" y1="83.82" x2="48.26" y2="83.82" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<wire x1="76.2" y1="68.58" x2="76.2" y2="55.88" width="0.1524" layer="91"/>
<junction x="76.2" y="55.88"/>
<wire x1="76.2" y1="43.18" x2="76.2" y2="55.88" width="0.1524" layer="91"/>
<junction x="76.2" y="43.18"/>
<wire x1="76.2" y1="81.28" x2="76.2" y2="68.58" width="0.1524" layer="91"/>
<junction x="76.2" y="68.58"/>
<pinref part="JP1" gate="A" pin="2"/>
<wire x1="134.62" y1="7.62" x2="134.62" y2="11.43" width="0.1524" layer="91"/>
<wire x1="134.62" y1="11.43" x2="76.2" y2="11.43" width="0.1524" layer="91"/>
<wire x1="76.2" y1="43.18" x2="76.2" y2="11.43" width="0.1524" layer="91"/>
<pinref part="U$5" gate="G$1" pin="INPUT-"/>
<pinref part="U$6" gate="G$1" pin="INPUT-"/>
<pinref part="U$7" gate="G$1" pin="INPUT-"/>
<pinref part="U$8" gate="G$1" pin="INPUT-"/>
<wire x1="76.2" y1="81.28" x2="78.74" y2="81.28" width="0.1524" layer="91"/>
<wire x1="76.2" y1="68.58" x2="78.74" y2="68.58" width="0.1524" layer="91"/>
<wire x1="76.2" y1="55.88" x2="78.74" y2="55.88" width="0.1524" layer="91"/>
<wire x1="76.2" y1="43.18" x2="78.74" y2="43.18" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<wire x1="71.12" y1="83.82" x2="71.12" y2="71.12" width="0.1524" layer="91"/>
<wire x1="71.12" y1="71.12" x2="71.12" y2="58.42" width="0.1524" layer="91"/>
<wire x1="71.12" y1="58.42" x2="71.12" y2="45.72" width="0.1524" layer="91"/>
<junction x="71.12" y="45.72"/>
<junction x="71.12" y="58.42"/>
<junction x="71.12" y="71.12"/>
<pinref part="JP1" gate="A" pin="1"/>
<wire x1="71.12" y1="45.72" x2="71.12" y2="7.62" width="0.1524" layer="91"/>
<wire x1="71.12" y1="7.62" x2="127" y2="7.62" width="0.1524" layer="91"/>
<pinref part="U$5" gate="G$1" pin="INPUT+"/>
<pinref part="U$6" gate="G$1" pin="INPUT+"/>
<pinref part="U$7" gate="G$1" pin="INPUT+"/>
<pinref part="U$8" gate="G$1" pin="INPUT+"/>
<wire x1="71.12" y1="83.82" x2="78.74" y2="83.82" width="0.1524" layer="91"/>
<wire x1="71.12" y1="71.12" x2="78.74" y2="71.12" width="0.1524" layer="91"/>
<wire x1="71.12" y1="58.42" x2="78.74" y2="58.42" width="0.1524" layer="91"/>
<wire x1="71.12" y1="45.72" x2="78.74" y2="45.72" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<wire x1="106.68" y1="68.58" x2="106.68" y2="55.88" width="0.1524" layer="91"/>
<junction x="106.68" y="55.88"/>
<wire x1="106.68" y1="43.18" x2="106.68" y2="55.88" width="0.1524" layer="91"/>
<junction x="106.68" y="43.18"/>
<wire x1="106.68" y1="81.28" x2="106.68" y2="68.58" width="0.1524" layer="91"/>
<junction x="106.68" y="68.58"/>
<wire x1="106.68" y1="43.18" x2="106.68" y2="0" width="0.1524" layer="91"/>
<pinref part="JP1" gate="A" pin="7"/>
<wire x1="127" y1="0" x2="106.68" y2="0" width="0.1524" layer="91"/>
<pinref part="U$12" gate="G$1" pin="INPUT-"/>
<pinref part="U$11" gate="G$1" pin="INPUT-"/>
<pinref part="U$10" gate="G$1" pin="INPUT-"/>
<pinref part="U$9" gate="G$1" pin="INPUT-"/>
<wire x1="106.68" y1="43.18" x2="109.22" y2="43.18" width="0.1524" layer="91"/>
<wire x1="106.68" y1="55.88" x2="109.22" y2="55.88" width="0.1524" layer="91"/>
<wire x1="106.68" y1="68.58" x2="109.22" y2="68.58" width="0.1524" layer="91"/>
<wire x1="106.68" y1="81.28" x2="109.22" y2="81.28" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$6" class="0">
<segment>
<wire x1="101.6" y1="83.82" x2="101.6" y2="71.12" width="0.1524" layer="91"/>
<wire x1="101.6" y1="71.12" x2="101.6" y2="58.42" width="0.1524" layer="91"/>
<wire x1="101.6" y1="58.42" x2="101.6" y2="45.72" width="0.1524" layer="91"/>
<junction x="101.6" y="45.72"/>
<junction x="101.6" y="58.42"/>
<junction x="101.6" y="71.12"/>
<wire x1="101.6" y1="45.72" x2="101.6" y2="1.27" width="0.1524" layer="91"/>
<pinref part="JP1" gate="A" pin="8"/>
<wire x1="134.62" y1="0" x2="134.62" y2="1.27" width="0.1524" layer="91"/>
<wire x1="134.62" y1="1.27" x2="101.6" y2="1.27" width="0.1524" layer="91"/>
<pinref part="U$12" gate="G$1" pin="INPUT+"/>
<pinref part="U$11" gate="G$1" pin="INPUT+"/>
<pinref part="U$10" gate="G$1" pin="INPUT+"/>
<pinref part="U$9" gate="G$1" pin="INPUT+"/>
<wire x1="109.22" y1="45.72" x2="101.6" y2="45.72" width="0.1524" layer="91"/>
<wire x1="101.6" y1="58.42" x2="109.22" y2="58.42" width="0.1524" layer="91"/>
<wire x1="101.6" y1="71.12" x2="109.22" y2="71.12" width="0.1524" layer="91"/>
<wire x1="101.6" y1="83.82" x2="109.22" y2="83.82" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$7" class="0">
<segment>
<wire x1="137.16" y1="68.58" x2="137.16" y2="55.88" width="0.1524" layer="91"/>
<wire x1="137.16" y1="24.13" x2="137.16" y2="43.18" width="0.1524" layer="91"/>
<junction x="137.16" y="55.88"/>
<wire x1="137.16" y1="43.18" x2="137.16" y2="55.88" width="0.1524" layer="91"/>
<junction x="137.16" y="43.18"/>
<wire x1="137.16" y1="81.28" x2="137.16" y2="68.58" width="0.1524" layer="91"/>
<junction x="137.16" y="68.58"/>
<wire x1="137.16" y1="24.13" x2="143.51" y2="24.13" width="0.1524" layer="91"/>
<wire x1="143.51" y1="24.13" x2="143.51" y2="3.81" width="0.1524" layer="91"/>
<wire x1="143.51" y1="3.81" x2="125.73" y2="3.81" width="0.1524" layer="91"/>
<wire x1="125.73" y1="3.81" x2="125.73" y2="2.54" width="0.1524" layer="91"/>
<pinref part="JP1" gate="A" pin="5"/>
<wire x1="125.73" y1="2.54" x2="127" y2="2.54" width="0.1524" layer="91"/>
<pinref part="U$15" gate="G$1" pin="INPUT-"/>
<pinref part="U$16" gate="G$1" pin="INPUT-"/>
<pinref part="U$13" gate="G$1" pin="INPUT-"/>
<wire x1="137.16" y1="81.28" x2="139.7" y2="81.28" width="0.1524" layer="91"/>
<pinref part="U$14" gate="G$1" pin="INPUT-"/>
<wire x1="137.16" y1="68.58" x2="139.7" y2="68.58" width="0.1524" layer="91"/>
<wire x1="137.16" y1="55.88" x2="139.7" y2="55.88" width="0.1524" layer="91"/>
<wire x1="137.16" y1="43.18" x2="139.7" y2="43.18" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$8" class="0">
<segment>
<wire x1="132.08" y1="83.82" x2="132.08" y2="71.12" width="0.1524" layer="91"/>
<wire x1="132.08" y1="71.12" x2="132.08" y2="58.42" width="0.1524" layer="91"/>
<wire x1="132.08" y1="58.42" x2="132.08" y2="45.72" width="0.1524" layer="91"/>
<junction x="132.08" y="45.72"/>
<junction x="132.08" y="58.42"/>
<junction x="132.08" y="71.12"/>
<wire x1="132.08" y1="45.72" x2="132.08" y2="15.24" width="0.1524" layer="91"/>
<wire x1="132.08" y1="15.24" x2="146.05" y2="15.24" width="0.1524" layer="91"/>
<wire x1="146.05" y1="15.24" x2="146.05" y2="2.54" width="0.1524" layer="91"/>
<pinref part="JP1" gate="A" pin="6"/>
<wire x1="146.05" y1="2.54" x2="134.62" y2="2.54" width="0.1524" layer="91"/>
<pinref part="U$15" gate="G$1" pin="INPUT+"/>
<pinref part="U$16" gate="G$1" pin="INPUT+"/>
<pinref part="U$14" gate="G$1" pin="INPUT+"/>
<wire x1="132.08" y1="71.12" x2="139.7" y2="71.12" width="0.1524" layer="91"/>
<wire x1="132.08" y1="58.42" x2="139.7" y2="58.42" width="0.1524" layer="91"/>
<wire x1="132.08" y1="45.72" x2="139.7" y2="45.72" width="0.1524" layer="91"/>
<pinref part="U$13" gate="G$1" pin="INPUT+"/>
<wire x1="132.08" y1="83.82" x2="139.7" y2="83.82" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$9" class="0">
<segment>
<wire x1="167.64" y1="68.58" x2="167.64" y2="55.88" width="0.1524" layer="91"/>
<junction x="167.64" y="55.88"/>
<wire x1="167.64" y1="43.18" x2="167.64" y2="55.88" width="0.1524" layer="91"/>
<junction x="167.64" y="43.18"/>
<wire x1="167.64" y1="81.28" x2="167.64" y2="68.58" width="0.1524" layer="91"/>
<junction x="167.64" y="68.58"/>
<wire x1="167.64" y1="43.18" x2="167.64" y2="-3.81" width="0.1524" layer="91"/>
<wire x1="167.64" y1="-3.81" x2="124.46" y2="-3.81" width="0.1524" layer="91"/>
<pinref part="JP1" gate="A" pin="11"/>
<wire x1="124.46" y1="-3.81" x2="124.46" y2="-5.08" width="0.1524" layer="91"/>
<wire x1="124.46" y1="-5.08" x2="127" y2="-5.08" width="0.1524" layer="91"/>
<pinref part="U$17" gate="G$1" pin="INPUT-"/>
<pinref part="U$20" gate="G$1" pin="INPUT-"/>
<wire x1="167.64" y1="43.18" x2="170.18" y2="43.18" width="0.1524" layer="91"/>
<pinref part="U$19" gate="G$1" pin="INPUT-"/>
<wire x1="167.64" y1="55.88" x2="170.18" y2="55.88" width="0.1524" layer="91"/>
<pinref part="U$18" gate="G$1" pin="INPUT-"/>
<wire x1="167.64" y1="68.58" x2="170.18" y2="68.58" width="0.1524" layer="91"/>
<wire x1="167.64" y1="81.28" x2="170.18" y2="81.28" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$10" class="0">
<segment>
<wire x1="162.56" y1="83.82" x2="162.56" y2="71.12" width="0.1524" layer="91"/>
<wire x1="162.56" y1="71.12" x2="162.56" y2="58.42" width="0.1524" layer="91"/>
<wire x1="162.56" y1="58.42" x2="162.56" y2="45.72" width="0.1524" layer="91"/>
<junction x="162.56" y="45.72"/>
<junction x="162.56" y="58.42"/>
<junction x="162.56" y="71.12"/>
<wire x1="162.56" y1="45.72" x2="162.56" y2="-5.08" width="0.1524" layer="91"/>
<pinref part="JP1" gate="A" pin="12"/>
<wire x1="162.56" y1="-5.08" x2="134.62" y2="-5.08" width="0.1524" layer="91"/>
<pinref part="U$17" gate="G$1" pin="INPUT+"/>
<pinref part="U$18" gate="G$1" pin="INPUT+"/>
<pinref part="U$19" gate="G$1" pin="INPUT+"/>
<pinref part="U$20" gate="G$1" pin="INPUT+"/>
<wire x1="162.56" y1="45.72" x2="170.18" y2="45.72" width="0.1524" layer="91"/>
<wire x1="162.56" y1="58.42" x2="170.18" y2="58.42" width="0.1524" layer="91"/>
<wire x1="162.56" y1="71.12" x2="170.18" y2="71.12" width="0.1524" layer="91"/>
<wire x1="162.56" y1="83.82" x2="170.18" y2="83.82" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$11" class="0">
<segment>
<wire x1="198.12" y1="68.58" x2="198.12" y2="55.88" width="0.1524" layer="91"/>
<junction x="198.12" y="55.88"/>
<wire x1="198.12" y1="43.18" x2="198.12" y2="55.88" width="0.1524" layer="91"/>
<junction x="198.12" y="43.18"/>
<wire x1="198.12" y1="81.28" x2="198.12" y2="68.58" width="0.1524" layer="91"/>
<junction x="198.12" y="68.58"/>
<wire x1="198.12" y1="43.18" x2="198.12" y2="-1.27" width="0.1524" layer="91"/>
<pinref part="JP1" gate="A" pin="9"/>
<wire x1="127" y1="-2.54" x2="125.73" y2="-2.54" width="0.1524" layer="91"/>
<wire x1="125.73" y1="-2.54" x2="125.73" y2="-1.27" width="0.1524" layer="91"/>
<wire x1="198.12" y1="-1.27" x2="125.73" y2="-1.27" width="0.1524" layer="91"/>
<pinref part="U$24" gate="G$1" pin="INPUT-"/>
<wire x1="198.12" y1="43.18" x2="200.66" y2="43.18" width="0.1524" layer="91"/>
<pinref part="U$23" gate="G$1" pin="INPUT-"/>
<wire x1="198.12" y1="55.88" x2="200.66" y2="55.88" width="0.1524" layer="91"/>
<pinref part="U$22" gate="G$1" pin="INPUT-"/>
<wire x1="198.12" y1="68.58" x2="200.66" y2="68.58" width="0.1524" layer="91"/>
<pinref part="U$21" gate="G$1" pin="INPUT-"/>
<wire x1="198.12" y1="81.28" x2="200.66" y2="81.28" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$12" class="0">
<segment>
<wire x1="193.04" y1="83.82" x2="193.04" y2="71.12" width="0.1524" layer="91"/>
<wire x1="193.04" y1="71.12" x2="193.04" y2="58.42" width="0.1524" layer="91"/>
<wire x1="193.04" y1="58.42" x2="193.04" y2="45.72" width="0.1524" layer="91"/>
<junction x="193.04" y="45.72"/>
<junction x="193.04" y="58.42"/>
<junction x="193.04" y="71.12"/>
<wire x1="193.04" y1="45.72" x2="193.04" y2="-2.54" width="0.1524" layer="91"/>
<pinref part="JP1" gate="A" pin="10"/>
<wire x1="134.62" y1="-2.54" x2="193.04" y2="-2.54" width="0.1524" layer="91"/>
<pinref part="U$24" gate="G$1" pin="INPUT+"/>
<wire x1="193.04" y1="45.72" x2="200.66" y2="45.72" width="0.1524" layer="91"/>
<pinref part="U$23" gate="G$1" pin="INPUT+"/>
<wire x1="193.04" y1="58.42" x2="200.66" y2="58.42" width="0.1524" layer="91"/>
<pinref part="U$22" gate="G$1" pin="INPUT+"/>
<wire x1="193.04" y1="71.12" x2="200.66" y2="71.12" width="0.1524" layer="91"/>
<pinref part="U$21" gate="G$1" pin="INPUT+"/>
<wire x1="193.04" y1="83.82" x2="200.66" y2="83.82" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$13" class="0">
<segment>
<wire x1="228.6" y1="68.58" x2="228.6" y2="55.88" width="0.1524" layer="91"/>
<junction x="228.6" y="55.88"/>
<wire x1="228.6" y1="43.18" x2="228.6" y2="55.88" width="0.1524" layer="91"/>
<junction x="228.6" y="43.18"/>
<wire x1="228.6" y1="81.28" x2="228.6" y2="68.58" width="0.1524" layer="91"/>
<junction x="228.6" y="68.58"/>
<wire x1="228.6" y1="43.18" x2="228.6" y2="-11.43" width="0.1524" layer="91"/>
<wire x1="228.6" y1="-11.43" x2="125.73" y2="-11.43" width="0.1524" layer="91"/>
<wire x1="125.73" y1="-11.43" x2="125.73" y2="-10.16" width="0.1524" layer="91"/>
<pinref part="JP1" gate="A" pin="15"/>
<wire x1="125.73" y1="-10.16" x2="127" y2="-10.16" width="0.1524" layer="91"/>
<pinref part="U$25" gate="G$1" pin="INPUT-"/>
<wire x1="228.6" y1="81.28" x2="231.14" y2="81.28" width="0.1524" layer="91"/>
<pinref part="U$26" gate="G$1" pin="INPUT-"/>
<wire x1="228.6" y1="68.58" x2="231.14" y2="68.58" width="0.1524" layer="91"/>
<pinref part="U$27" gate="G$1" pin="INPUT-"/>
<wire x1="228.6" y1="55.88" x2="231.14" y2="55.88" width="0.1524" layer="91"/>
<pinref part="U$28" gate="G$1" pin="INPUT-"/>
<wire x1="228.6" y1="43.18" x2="231.14" y2="43.18" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$14" class="0">
<segment>
<wire x1="223.52" y1="83.82" x2="223.52" y2="71.12" width="0.1524" layer="91"/>
<wire x1="223.52" y1="71.12" x2="223.52" y2="58.42" width="0.1524" layer="91"/>
<wire x1="223.52" y1="58.42" x2="223.52" y2="45.72" width="0.1524" layer="91"/>
<junction x="223.52" y="45.72"/>
<junction x="223.52" y="58.42"/>
<junction x="223.52" y="71.12"/>
<pinref part="JP1" gate="A" pin="16"/>
<wire x1="223.52" y1="45.72" x2="223.52" y2="-10.16" width="0.1524" layer="91"/>
<wire x1="223.52" y1="-10.16" x2="134.62" y2="-10.16" width="0.1524" layer="91"/>
<pinref part="U$25" gate="G$1" pin="INPUT+"/>
<wire x1="223.52" y1="83.82" x2="231.14" y2="83.82" width="0.1524" layer="91"/>
<pinref part="U$26" gate="G$1" pin="INPUT+"/>
<wire x1="223.52" y1="71.12" x2="231.14" y2="71.12" width="0.1524" layer="91"/>
<pinref part="U$27" gate="G$1" pin="INPUT+"/>
<wire x1="223.52" y1="58.42" x2="231.14" y2="58.42" width="0.1524" layer="91"/>
<pinref part="U$28" gate="G$1" pin="INPUT+"/>
<wire x1="223.52" y1="45.72" x2="231.14" y2="45.72" width="0.1524" layer="91"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
<compatibility>
<note version="8.2" severity="warning">
Since Version 8.2, EAGLE supports online libraries. The ids
of those online libraries will not be understood (or retained)
with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports URNs for individual library
assets (packages, symbols, and devices). The URNs of those assets
will not be understood (or retained) with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports the association of 3D packages
with devices in libraries, schematics, and board files. Those 3D
packages will not be understood (or retained) with this version.
</note>
</compatibility>
</eagle>