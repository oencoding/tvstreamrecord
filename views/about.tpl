%include header 

<div id="about">
<p><b>Tvstreamrecord v.{{ver}}</p></b>

<p><b>Quick guide</b></p>

<ol>
<li><p><b>Introduction</b></p>
<p>This software was designed to record http streams (TV and such). My goal was to be able to record streams from Elgato EyeTV Netstream with my NAS server so it's the primary objective of this software. Please note, that this software can't be used to record any videos from USB-based devices. A simply stream would be http://streamadress/stream000000 and will be recorded or grabbed as is. </p>
<p>I take no responsibility for any records, which can be made with my software.</p>
</li>
<li><p><b>Installation on Synology DS systems</b></p>
<p>Installation in Synology DS systems via community hub <a href="http://www.cphub.net">http://www.cphub.net</a>. Please insert it as package source in your DS Package Center and you will see my software under "other sources"</p>
<p>Please make sure that you have <a href="http://www.python.org/">Python 2.x</a> installed on your DS (not compatible with Python 3.x). Note that if you install Python for the first time, you may need to restart your DS.</p>
<p>Make sure that my software has been started by DS.</p>
</li>
<li><p><b>Installation on other systems</b></p>
<p>You can download a .zip file from my <a href="http://code.google.com/p/tvstreamrecord/">project page</a>. Simply install <a href="http://www.python.org/">Python 2.x</a> for your system and you'll be able to start my software with the following command:<br />
<i>python tvstreamrecord.py</i><br />
You shouldn't need any special permissions.</p></li>
<li><p><b>Running for the first time</b></p>
<p>To access the software you should open your favorite browser and navigate to your target IP with the port 8030, e.g. <a href="http://localhost:8030">http://localhost:8030.</a> Now you should see the web based page of my software. First you should proceed to the config page and review following settings:</p>
<li><p><b>Settings</b></p>
<p><i>Initial path for an XMLTV-Import</i> can be used to import EGP (electronic programm guide) from free XMLTV-compatible pages. The default value is the only one tested at this time.<br />
<i>Purge database records</i> will be used to automatically delete old EPG and records information and shouldn't normally be changed<br />
<i>Lenghten an EPG record</i> will be used to prolong the record and avoid any small time shifts in TV charts. Please note, that your system time will be used for recording and should be exact.<br />
<i>Path for your recordings</i> is a vital setting and should be set. On Synology DS you can use any shared folder, which can be accessed with the root user (e.g. /volume1/common/). On Windows systems you can use any path (e.g. d:\records\). Be sure to close your path string with an path char (/ or \), as the path string will be added to the filename. Otherwise you can use this to add prefixes to your recordings. As example, providing the path <i>/volume1/films/rec</i> will result in files with names: rec20130101000000<br />
<i>Server bind address</i> is exactly what it says. Default 0.0.0.0 will make your server available from any local address. Any other choices (i.e. 127.0.0.1) may be used to limit the access. This setting should not normally be changed. Changing it requires restart.<br />
<i>Server port</i> is the port the server runs on. You can change it, if you need it. Changing it requires restart.<br />
<i>File extension for the recorded stream</i> will be added to the filename. Mostly it would be MPEG transport stream (.ts). Changing this parameter doesn't change anything beside filename.</p></li>
<li><p><b>Channels adding and importing</b></p>
<p>As for now you have two ways to add channels. You can normally add a channel by providing its name and URL or you can import an .m3u playlist. With Elgato EyeTV Netstream you can export your channel list from the device page and import the file in my software. You can also use other .m3u with following syntax:<br /><i>
#EXTM3U<br />
#EXTINF:0,channel name 1<br />
http://192.168.0.10/stream/tunerequest000000000000000000000000000000000000000000000000<br />
#EXTINF:0,channel name 2<br />
http://192.168.0.10/stream/tunerequest000000000000000000000000000000000000000000000001<br /></i>
Please note that for using XMLTV the channel names should be the same as those from your XMLTV provider. </p>
<li><p><b>EPG import</b></p>
<p>If you have a free XMLTV provider from your region, you should add his address in config. Now you should be able to import EPG by pressing the corresponding button one time. Please just one time. As for now there is no direct feedback for this feature and full synchronisation takes some time, please check the log file for the progress or error status. The only provider tested is <a href="http://xmltv.spaetfruehstuecken.org/xmltv/">Egon zappt</a>. As I'm following <a href="http://www.oztivo.net/twiki/bin/view/TVGuide/StaticXMLGuideAPI">OzTiVo rules</a> to grab EPG data, you can refresh your data only one time a day.</p>
</li>
<li><p><b>Records</b></p>
<p>Here you can create a new record with channel and time provided. You can also pause and delete your recordings. The recorded streams will be </p>
</li>
<li><p><b>Feedback</b></p>
<p>As I'm not able to test my software on every plattform of the world, I beg you for your feedback regarding any issues with my software. Thank you!</p>
</li>
<ol />
</div>

%include footer         