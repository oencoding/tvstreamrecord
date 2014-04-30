<div id="users-contain" class="ui-widget">
<h1>§Configuration§:
<button id="submit_cfg">§Submit changes§</button>
<div id="label_config_saved" info="§Saving configuration...§"></div>
</h1>
<div id="configtabs">
<ul>
<li><a href="#configtabs-1">§General§</a></li>
<li><a href="#configtabs-2">§EPG§</a></li>
<li><a href="#configtabs-3">§FFMPEG support§</a></li>
<li><a href="#configtabs-4">§Advanced§</a></li>
</ul>
<div id="configtabs-1">
<!--General configuration-->
<table id="configtable-1">
<thead>
<tr class="ui-widget-header ">
<th>§Parameter name§</th>
<th>§Value§</th>
</tr>
</thead>
<tbody>
<tr><td>§Path for your recordings§</td><td><input type="text" class="text ui-widget-content ui-corner-all" id="cfg_recordpath" value="" autocomplete="off" /><button id="button_pathchooser">§Browse§</button></td></tr>
<tr><td>§File extension for the recorded stream (default='.ts')§</td><td><input type="text" class="text ui-widget-content ui-corner-all" id="cfg_file_extension" value="" autocomplete="off" /></td></tr>
<tr><td>§Interface theme (default='smoothness')§</td>
    <td>
        <select id='cfg_theme' class="text ui-widget-content ui-corner-all">            
%for theme in themes:
            <option value='{{theme[0]}}'>{{theme[1]}}</option>
%end              
        </select>
    </td>
</tr>
<tr><td>§Interface language (default='english')§</td>
    <td>
        <select id='cfg_language' class="text ui-widget-content ui-corner-all">            
%for language in languages:
            <option value='{{language}}'>{{language}}</option>
%end              
        </select>
    </td>
</tr>
<tr><td>§Date/time locale (default='default')§</td>
    <td>
        <select id='cfg_locale' class="text ui-widget-content ui-corner-all">            
%for locale in locales:
            <option value='{{locale}}'>{{locale}}</option>
%end              
        </select>
    </td>
</tr>
<tr><td>§Set remote access password (leave blank for none)§</td><td><button id="button_setpass">§Set§ §password§</button></td></tr>
</tbody>
</table>
</div>
<div id="configtabs-2">
<!--EPG configuration-->
<table id="configtable-2">
<thead>
<tr class="ui-widget-header ">
<th>§Parameter name§</th>
<th>§Value§</th>
</tr>
</thead>
<tbody>
<tr><td>§Lenghten an EPG-record (delta before and after), [minutes]§</td><td><input id="cfg_delta_for_epg" /></td></tr>
<tr><td>§Enable XMLTV import§</td><td><input type="checkbox" class="switch icons" id="cfg_switch_xmltv_auto" /></td></tr>
<tr><td>§Initial path for an XMLTV import§</td><td><input type="text" class="text ui-widget-content ui-corner-all" id="cfg_xmltvinitpath" value="" autocomplete="off" /></td></tr>
<tr><td>§Enable stream scan/grab§</td><td><input type="checkbox" class="switch icons" id="cfg_switch_grab_auto" /></td></tr>
<tr><td>§Maximal EPG scan duration per channel, [seconds] (default: '60')§</td><td><input id="cfg_grab_max_duration" /></td></tr>
<tr><td>§Time to perform daily EPG/XMLTV grab (hh:mm format, 24h based, default '0' for manual only)§</td><td><input type="text" maxlength="5" id="cfg_grab_time" class="text ui-widget-content ui-corner-all" alert="§Invalid grab time, please check your settings§"/></td></tr>
<tr><td>§Zoom level for EPG view. Positive values for horizontal, negative for vertical view (default '1' for old style)§</td><td><input id="cfg_grab_zoom" alert="§Invalid EPG zoom, please check your settings§"/></td></tr>
<tr><td>§EPG list mode. Disable for client-side processing (more network load), enable for server-side processing (more server load)§</td><td><input type="checkbox" class="switch icons" id="cfg_switch_epglist_mode" /></td></tr>
<tr><td>§Client-side only: maximal number of events to request from server (earlier first), solves some perfomance issues§</td><td><input id="cfg_epg_max_events" /></td></tr>
<tr><td>§Delete/reset all EPG data§</td><td><button id="button_removeepg">§Delete§</button></td></tr>
</tbody>
</table>
</div>
<div id="configtabs-3">
<!--FFMPEG configuration-->
<table id="configtable-3">
<thead>
<tr class="ui-widget-header ">
<th>§Parameter name§</th>
<th>§Value§</th>
</tr>
</thead>
<tbody>
<tr><td>§Stream types, which should be forwarded to ffmpeg (space separated)§</td><td><input type="text" class="text ui-widget-content ui-corner-all" id="cfg_ffmpeg_types" value="" autocomplete="off" /></td></tr>
<tr><td>§Full path to ffmpeg for other streams support§</td><td><input type="text" class="text ui-widget-content ui-corner-all" id="cfg_ffmpeg_path" value="" autocomplete="off" /></td></tr>
<tr><td>§Additional output arguments for ffmpeg (default: '-acodec copy -vcodec copy')§</td><td><input type="text" class="text ui-widget-content ui-corner-all" id="cfg_ffmpeg_params" value="" autocomplete="off" /></td></tr>
</tbody>
</table>
</div>
<div id="configtabs-4">
<!--Advanced configuration-->
<table id="configtable-4">
<thead>
<tr class="ui-widget-header ">
<th>§Parameter name§</th>
<th>§Value§</th>
</tr>
</thead>
<tbody>
<tr><td>§Purge database records older than [days]§</td><td><input id="cfg_purgedelta" /></td></tr>
<tr><td>§Server bind address (restart needed)§</td><td><input type="text" class="text ui-widget-content ui-corner-all" id="cfg_server_bind_address" value="" autocomplete="off" alert="§Invalid bind address, please check your settings§" /></td></tr>
<tr><td>§Server port (restart needed)§</td><td><input type="text" class="text ui-widget-content ui-corner-all" id="cfg_server_port" value="" autocomplete="off" alert="§Invalid port, please check your settings§"/></td></tr>
<tr><td>§Record name mask (valid placeholders: %date% and %title%, default: '%date% - %title%')§</td><td><input type="text" class="text ui-widget-content ui-corner-all" id="cfg_record_mask" value="" autocomplete="off" alert="§Record name mask must have at least one placeholder§"/></td></tr>
<tr><td>§Reset the log file§</td><td><button id="button_resetlog">§Reset log§</button></td></tr>
</tbody>
</table>
</div>
</div>
<!--</form>-->
</div>
<div id="dialog_remove" title="§Confirmation request§" cancel="§Cancel§" delete="§Delete§"> 
	<p>§Do you want to delete all of your EPG data?§</p>
</div>
<div id="dialog_password" title="§Set§ §password§" cancel="§Cancel§" ok="§OK§"> 
	<p>§Set remote access password (leave blank for none)§</p>
    <p>
        §Old§ §password§<br />
        <input type="password" class="text ui-widget-content ui-corner-all" id="pass_old" value="" autocomplete="off" /><br />
        §New§ §password§<br /> 
        <input type="password" class="text ui-widget-content ui-corner-all" id="pass_new_1" value="" autocomplete="off" /><br />
        §Repeat§<br />
        <input type="password" class="text ui-widget-content ui-corner-all" id="pass_new_2" value="" autocomplete="off" />
    </p>
</div>
<div id="dialog_pathchooser" title="§Path for your recordings§" cancel="§Cancel§" ok="§OK§">
    <p>        
        <div id="pathchooser"></div>
    </p>
</div>