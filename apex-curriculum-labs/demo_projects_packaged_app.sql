prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- ORACLE Application Express (APEX) export file
--
-- You should run the script connected to SQL*Plus as the Oracle user
-- APEX_190200 or as the owner (parsing schema) of the application.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_api.import_begin (
 p_version_yyyy_mm_dd=>'2019.10.04'
,p_release=>'19.2.0.00.18'
,p_default_workspace_id=>5523230421166791507
,p_default_application_id=>23192
,p_default_id_offset=>0
,p_default_owner=>'LOWCODE'
);
end;
/
 
prompt APPLICATION 23192 - Demo Projects
--
-- Application Export:
--   Application:     23192
--   Name:            Demo Projects
--   Date and Time:   04:14 Tuesday January 14, 2020
--   Exported By:     LOWCODE
--   Flashback:       0
--   Export Type:     Application Export
--     Pages:                     36
--       Items:                   82
--       Validations:              5
--       Processes:               33
--       Regions:                 92
--       Buttons:                 61
--       Dynamic Actions:         31
--     Shared Components:
--       Logic:
--         App Settings:           2
--         Build Options:          6
--       Navigation:
--         Lists:                  8
--         Breadcrumbs:            1
--           Entries:             11
--       Security:
--         Authentication:         1
--         Authorization:          4
--         ACL Roles:              3
--       User Interface:
--         Themes:                 1
--         Templates:
--           Page:                 9
--           Region:              16
--           Label:                7
--           List:                12
--           Popup LOV:            1
--           Calendar:             1
--           Breadcrumb:           1
--           Button:               3
--           Report:              11
--         LOVs:                  18
--         Shortcuts:              1
--         Plug-ins:               1
--       Globalization:
--       Reports:
--       E-Mail:
--     Supporting Objects:  Included
--       Install scripts:          3
--   Version:         19.2.0.00.18
--   Instance ID:     63113759365424
--

prompt --application/delete_application
begin
wwv_flow_api.remove_flow(wwv_flow.g_flow_id);
end;
/
prompt --application/create_application
begin
wwv_flow_api.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_owner=>nvl(wwv_flow_application_install.get_schema,'LOWCODE')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'Demo Projects')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'23192')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'3EC0AC6BE7FDF1CFC438590E49C7D488A6BFDC93335FA28C19E3989E95D31A70'
,p_bookmark_checksum_function=>'SH512'
,p_compatibility_mode=>'19.2'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_allow_feedback_yn=>'Y'
,p_date_format=>'DS'
,p_timestamp_format=>'DS'
,p_timestamp_tz_format=>'DS'
,p_direction_right_to_left=>'N'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_documentation_banner=>'Application created from create application wizard 2019.12.11.'
,p_authentication=>'PLUGIN'
,p_authentication_id=>wwv_flow_api.id(12100623808562960738)
,p_application_tab_set=>1
,p_logo_type=>'T'
,p_logo_text=>'Demo Projects'
,p_app_builder_icon_name=>'app-icon.svg'
,p_public_user=>'APEX_PUBLIC_USER'
,p_proxy_server=>nvl(wwv_flow_application_install.get_proxy,'')
,p_no_proxy_domains=>nvl(wwv_flow_application_install.get_no_proxy_domains,'')
,p_flow_version=>'Release 1.0'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_runtime_api_usage=>'T'
,p_security_scheme=>wwv_flow_api.id(18852375913584963069)
,p_rejoin_existing_sessions=>'N'
,p_csv_encoding=>'Y'
,p_auto_time_zone=>'N'
,p_substitution_string_01=>'APP_NAME'
,p_substitution_value_01=>'Demo Projects'
,p_last_updated_by=>'LOWCODE'
,p_last_upd_yyyymmddhh24miss=>'20200114041346'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_files_version=>3
,p_ui_type_name => null
);
end;
/
prompt --application/shared_components/navigation/lists/desktop_navigation_menu
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(12100624629447960739)
,p_name=>'Desktop Navigation Menu'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(12100783131482960892)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Home'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:'
,p_list_item_icon=>'fa-home'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(12176831044313401557)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Dashboard'
,p_list_item_link_target=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-dashboard'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'10'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(12100813257314961265)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Projects'
,p_list_item_link_target=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-folder'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(12100837316786961390)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Milestones'
,p_list_item_link_target=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-flag'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(12100859417969961497)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Tasks'
,p_list_item_link_target=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-check-square-o'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(12100784918953960895)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Team Members'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-users'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(18858966919657774678)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'Calendar'
,p_list_item_link_target=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-calendar'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'11'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(18863363053143395502)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>'Reports'
,p_list_item_link_target=>'f?p=&APP_ID.:12:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'12,14,15,17'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(18874546025107522262)
,p_list_item_display_sequence=>100
,p_list_item_link_text=>'Project Tree'
,p_list_item_link_target=>'f?p=&APP_ID.:14:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_api.id(18863363053143395502)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'14'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(18896290606192239489)
,p_list_item_display_sequence=>110
,p_list_item_link_text=>'Tasks Review'
,p_list_item_link_target=>'f?p=&APP_ID.:15:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_api.id(18863363053143395502)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'15'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(18897831376662180769)
,p_list_item_display_sequence=>120
,p_list_item_link_text=>'Milestones Review'
,p_list_item_link_target=>'f?p=&APP_ID.:17:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_api.id(18863363053143395502)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'17'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(12101119801590961889)
,p_list_item_display_sequence=>90
,p_list_item_link_text=>'Administration'
,p_list_item_link_target=>'f?p=&APP_ID.:10000:&APP_SESSION.::&DEBUG.:'
,p_list_item_icon=>'fa-user-wrench'
,p_security_scheme=>wwv_flow_api.id(12100765682466960847)
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/desktop_navigation_bar
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(12100761187929960835)
,p_name=>'Desktop Navigation Bar'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(12101116358839961886)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Feedback'
,p_list_item_link_target=>'f?p=&APP_ID.:10050:&SESSION.::&DEBUG.:RP,10050:P10050_PAGE_ID:&APP_PAGE_ID.:'
,p_list_item_icon=>'fa-comment-o'
,p_list_text_02=>'icon-only'
,p_required_patch=>wwv_flow_api.id(12100763141023960844)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(12101116606187961886)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'About'
,p_list_item_icon=>'fa-question-circle-o'
,p_list_text_02=>'icon-only'
,p_required_patch=>wwv_flow_api.id(12100763669348960844)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(12101117197718961886)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Page Help'
,p_list_item_link_target=>'f?p=&APP_ID.:10061:&SESSION.::&DEBUG.::P10061_PAGE_ID:&APP_PAGE_ID.:'
,p_list_item_icon=>'fa-question-circle-o'
,p_parent_list_item_id=>wwv_flow_api.id(12101116606187961886)
,p_list_text_02=>'icon-only'
,p_required_patch=>wwv_flow_api.id(12100763669348960844)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(12101117617794961887)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'---'
,p_list_item_link_target=>'separator'
,p_parent_list_item_id=>wwv_flow_api.id(12101116606187961886)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(12101118002959961887)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'About Page'
,p_list_item_link_target=>'f?p=&APP_ID.:10060:&SESSION.::&DEBUG.:10060'
,p_list_item_icon=>'fa-info-circle-o'
,p_parent_list_item_id=>wwv_flow_api.id(12101116606187961886)
,p_required_patch=>wwv_flow_api.id(12100763669348960844)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(12101118392059961887)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'&APP_USER.'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-user'
,p_list_text_02=>'has-username'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(12101118805024961888)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'---'
,p_list_item_link_target=>'separator'
,p_parent_list_item_id=>wwv_flow_api.id(12101118392059961887)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(12101119297665961888)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>'Sign Out'
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_list_item_icon=>'fa-sign-out'
,p_parent_list_item_id=>wwv_flow_api.id(12101118392059961887)
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/page_navigation
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(12100979357282961709)
,p_name=>'Page Navigation'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(18916012585239326076)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Dashboard'
,p_list_item_link_target=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-dashboard '
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(12100980132768961709)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Projects'
,p_list_item_link_target=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-folder'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(12100980576104961710)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Milestones'
,p_list_item_link_target=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-flag'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(12100980971554961710)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Tasks'
,p_list_item_link_target=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-check-square-o'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(12100979706391961709)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Team Members'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-users'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(18916337431980867638)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Calendar'
,p_list_item_link_target=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-calendar '
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/application_configuration
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(12101120946812961890)
,p_name=>'Application Configuration'
,p_list_status=>'PUBLIC'
,p_required_patch=>wwv_flow_api.id(12100763320234960844)
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(12101121384524961890)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Configuration Options'
,p_list_item_link_target=>'f?p=&APP_ID.:10010:&SESSION.::&DEBUG.:10010:::'
,p_list_item_icon=>'fa-sliders'
,p_list_text_01=>'Enable or disable application features'
,p_required_patch=>wwv_flow_api.id(12100763320234960844)
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/user_interface
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(12101121644695961891)
,p_name=>'User Interface'
,p_list_status=>'PUBLIC'
,p_required_patch=>wwv_flow_api.id(12100763799335960844)
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(12101122006873961891)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Theme Style Selection'
,p_list_item_link_target=>'f?p=&APP_ID.:10020:&SESSION.::&DEBUG.:10020:::'
,p_list_item_icon=>'fa-paint-brush'
,p_list_text_01=>'Set the default application look and feel'
,p_required_patch=>wwv_flow_api.id(12100763799335960844)
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/activity_reports
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(12101122353358961891)
,p_name=>'Activity Reports'
,p_list_status=>'PUBLIC'
,p_required_patch=>wwv_flow_api.id(12100763056153960844)
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(12101122744300961891)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Dashboard'
,p_list_item_link_target=>'f?p=&APP_ID.:10030:&SESSION.::&DEBUG.:10030:::'
,p_list_item_icon=>'fa-area-chart'
,p_list_text_01=>'View application activity metrics'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(12101123170865961892)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Top Users'
,p_list_item_link_target=>'f?p=&APP_ID.:10031:&SESSION.::&DEBUG.:10031:::'
,p_list_item_icon=>'fa-user-chart'
,p_list_text_01=>'Report of page views aggregated by user'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(12101123594594961892)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Application Error Log'
,p_list_item_link_target=>'f?p=&APP_ID.:10032:&SESSION.::&DEBUG.:10032:::'
,p_list_item_icon=>'fa-exclamation'
,p_list_text_01=>'Report of errors logged by this application'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(12101123997152961893)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Page Performance'
,p_list_item_link_target=>'f?p=&APP_ID.:10033:&SESSION.::&DEBUG.:10033:::'
,p_list_item_icon=>'fa-file-chart'
,p_list_text_01=>'Report of activity and performance by application page'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(12101124323882961893)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Page Views'
,p_list_item_link_target=>'f?p=&APP_ID.:10034:&SESSION.::&DEBUG.:RIR,10034:::'
,p_list_item_icon=>'fa-file-search'
,p_list_text_01=>'Report of each page view by user including date of access and elapsed time'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/access_control
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(12101124621236961893)
,p_name=>'Access Control'
,p_list_status=>'PUBLIC'
,p_required_patch=>wwv_flow_api.id(12100762962395960844)
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(12101125031672961893)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Users'
,p_list_item_link_target=>'f?p=&APP_ID.:10041:&SESSION.::&DEBUG.:RP:::'
,p_list_item_icon=>'fa-users'
,p_list_text_01=>'Change access control settings and disable access control'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(12101125411147961894)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Access Control'
,p_list_item_link_target=>'f?p=&APP_ID.:10040:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-key'
,p_list_text_01=>'Set level of access for authenticated users of this application'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/feedback
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(12101125777084961894)
,p_name=>'Feedback'
,p_list_status=>'PUBLIC'
,p_required_patch=>wwv_flow_api.id(12100763141023960844)
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(12101126157336961894)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'User Feedback'
,p_list_item_link_target=>'f?p=&APP_ID.:10053:&SESSION.::&DEBUG.:10053:::'
,p_list_item_icon=>'fa-comment-o'
,p_list_text_01=>'Report of all feedback submitted by application users'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/files/app_icon_svg
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '3C73766720786D6C6E733D22687474703A2F2F7777772E77332E6F72672F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F7777772E77332E6F72672F313939392F786C696E6B222076696577426F783D223020302036342036';
wwv_flow_api.g_varchar2_table(2) := '34223E3C646566733E3C7374796C653E2E636C732D317B66696C6C3A75726C282372616469616C2D6772616469656E74293B7D2E636C732D327B6F7061636974793A302E313B7D2E636C732D332C2E636C732D347B66696C6C3A236666663B7D2E636C73';
wwv_flow_api.g_varchar2_table(3) := '2D337B6F7061636974793A302E343B7D3C2F7374796C653E3C72616469616C4772616469656E742069643D2272616469616C2D6772616469656E74222063783D223332222063793D222E30352220723D22363422206772616469656E74556E6974733D22';
wwv_flow_api.g_varchar2_table(4) := '7573657253706163654F6E557365223E3C73746F70206F66667365743D2230222073746F702D636F6C6F723D2223666666222073746F702D6F7061636974793D22302E3135222F3E3C73746F70206F66667365743D222E35222073746F702D636F6C6F72';
wwv_flow_api.g_varchar2_table(5) := '3D2223666666222073746F702D6F7061636974793D22302E31222F3E3C73746F70206F66667365743D2231222073746F702D636F6C6F723D2223666666222073746F702D6F7061636974793D2230222F3E3C2F72616469616C4772616469656E743E3C73';
wwv_flow_api.g_varchar2_table(6) := '796D626F6C2069643D22616D6269656E742D6C69676874696E67222076696577426F783D22302030203634203634223E3C7061746820636C6173733D22636C732D312220643D224D302030683634763634682D36347A222F3E3C2F73796D626F6C3E3C2F';
wwv_flow_api.g_varchar2_table(7) := '646566733E3C7469746C653E636C6F75643C2F7469746C653E3C726563742077696474683D22363422206865696768743D223634222066696C6C3D2223454438313345222F3E3C672069643D2269636F6E73223E3C7061746820636C6173733D22636C73';
wwv_flow_api.g_varchar2_table(8) := '2D322220643D224D31362E30352033312E3561342E3920342E392030203020302D2E30352E352035203520302030203020352035683132762D31682D313261342E39383320342E3938332030203020312D342E39352D342E357A4D32302E303235203338';
wwv_flow_api.g_varchar2_table(9) := '2E356C2D2E3032352E3561362036203020302030203620366831366136203620302030203020362D366C2D2E3033332D2E3337327A222F3E3C7061746820636C6173733D22636C732D332220643D224D333720323361342E39393320342E393933203020';
wwv_flow_api.g_varchar2_table(10) := '3020302D392E3931352D2E38343220332E34383320332E3438332030203020302D352E37313520332E3837396C2D2E33372D2E303337613520352030203020302030203130683132762D382E316135203520302030203020342D342E397A222F3E3C7061';
wwv_flow_api.g_varchar2_table(11) := '746820636C6173733D22636C732D342220643D224D34322034346136203620302030203020312E3132352D31312E383931203620362030203120302D31302E35382D352E3620342E34353120342E3435312030203020302D322E3034352D2E3530392034';
wwv_flow_api.g_varchar2_table(12) := '2E34353920342E3435392030203020302D342E323220362E3031346C2D2E32382D2E3031346136203620302030203020302031327A222F3E3C2F673E3C7573652077696474683D22363422206865696768743D2236342220786C696E6B3A687265663D22';
wwv_flow_api.g_varchar2_table(13) := '23616D6269656E742D6C69676874696E67222069643D226C69676874696E67222F3E3C2F7376673E';
wwv_flow_api.create_app_static_file(
 p_id=>wwv_flow_api.id(12100762415190960840)
,p_file_name=>'app-icon.svg'
,p_mime_type=>'image/svg+xml'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/app_icon_css
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2E6170702D69636F6E207B0A202020206261636B67726F756E642D696D6167653A2075726C286170702D69636F6E2E737667293B0A202020206261636B67726F756E642D7265706561743A206E6F2D7265706561743B0A202020206261636B67726F756E';
wwv_flow_api.g_varchar2_table(2) := '642D73697A653A20636F7665723B0A202020206261636B67726F756E642D706F736974696F6E3A203530253B0A202020206261636B67726F756E642D636F6C6F723A20234544383133453B0A7D';
wwv_flow_api.create_app_static_file(
 p_id=>wwv_flow_api.id(12100762769722960843)
,p_file_name=>'app-icon.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
prompt --application/plugin_settings
begin
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(12100621748768960736)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attribute_01=>'modern'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(12100622089359960736)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_RICH_TEXT_EDITOR'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(12100622320659960737)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_STAR_RATING'
,p_attribute_01=>'fa-star'
,p_attribute_04=>'#VALUE#'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(12100622685914960737)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attribute_01=>'Y'
,p_attribute_03=>'N'
,p_attribute_05=>'SWITCH_CB'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(12100622915238960737)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_CSS_CALENDAR'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(12100623204669960737)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(12100623558226960737)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attribute_01=>'IG'
);
end;
/
prompt --application/shared_components/security/authorizations/administration_rights
begin
wwv_flow_api.create_security_scheme(
 p_id=>wwv_flow_api.id(12100765682466960847)
,p_name=>'Administration Rights'
,p_scheme_type=>'NATIVE_IS_IN_GROUP'
,p_attribute_01=>'Administrator'
,p_attribute_02=>'A'
,p_error_message=>'Insufficient privileges, user is not an Administrator'
,p_caching=>'BY_USER_BY_PAGE_VIEW'
);
end;
/
prompt --application/shared_components/security/authorizations/reader_rights
begin
wwv_flow_api.create_security_scheme(
 p_id=>wwv_flow_api.id(12100765764880960847)
,p_name=>'Reader Rights'
,p_scheme_type=>'NATIVE_FUNCTION_BODY'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if nvl(apex_app_setting.get_value(',
'   p_name => ''ACCESS_CONTROL_SCOPE''),''x'') = ''ALL_USERS'' then',
'    -- allow user not in the ACL to access the application',
'    return true;',
'else',
'    -- require user to have at least one role',
'    return apex_acl.has_user_any_roles (',
'        p_application_id => :APP_ID, ',
'        p_user_name      => :APP_USER);',
'end if;'))
,p_error_message=>'You are not authorized to view this application, either because you have not been granted access, or your account has been locked. Please contact the application administrator.'
,p_caching=>'BY_USER_BY_SESSION'
);
end;
/
prompt --application/shared_components/security/authorizations/contribution_rights
begin
wwv_flow_api.create_security_scheme(
 p_id=>wwv_flow_api.id(12100765826134960847)
,p_name=>'Contribution Rights'
,p_scheme_type=>'NATIVE_IS_IN_GROUP'
,p_attribute_01=>'Administrator,Contributor'
,p_attribute_02=>'A'
,p_error_message=>'Insufficient privileges, user is not a Contributor'
,p_caching=>'BY_USER_BY_PAGE_VIEW'
);
end;
/
prompt --application/shared_components/security/authorizations/team_members
begin
wwv_flow_api.create_security_scheme(
 p_id=>wwv_flow_api.id(18852375913584963069)
,p_name=>'Team Members'
,p_scheme_type=>'NATIVE_EXISTS'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from demo_proj_team_members',
'where upper(username) = upper(:APP_USER)',
''))
,p_error_message=>'You must be a team member to use this application.'
,p_caching=>'BY_USER_BY_SESSION'
);
end;
/
prompt --application/shared_components/security/app_access_control/administrator
begin
wwv_flow_api.create_acl_role(
 p_id=>wwv_flow_api.id(12100765230731960846)
,p_static_id=>'ADMINISTRATOR'
,p_name=>'Administrator'
,p_description=>'Role assigned to application administrators.'
);
end;
/
prompt --application/shared_components/security/app_access_control/contributor
begin
wwv_flow_api.create_acl_role(
 p_id=>wwv_flow_api.id(12100765441048960847)
,p_static_id=>'CONTRIBUTOR'
,p_name=>'Contributor'
,p_description=>'Role assigned to application contributors.'
);
end;
/
prompt --application/shared_components/security/app_access_control/reader
begin
wwv_flow_api.create_acl_role(
 p_id=>wwv_flow_api.id(12100765579771960847)
,p_static_id=>'READER'
,p_name=>'Reader'
,p_description=>'Role assigned to application readers.'
);
end;
/
prompt --application/shared_components/navigation/navigation_bar
begin
null;
end;
/
prompt --application/shared_components/logic/application_items
begin
null;
end;
/
prompt --application/shared_components/logic/application_computations
begin
null;
end;
/
prompt --application/shared_components/logic/application_settings
begin
wwv_flow_api.create_app_setting(
 p_id=>wwv_flow_api.id(12100766933106960849)
,p_name=>'FEEDBACK_ATTACHMENTS_YN'
,p_value=>'Y'
,p_is_required=>'N'
,p_valid_values=>'Y, N'
,p_on_upgrade_keep_value=>true
,p_required_patch=>wwv_flow_api.id(12100763141023960844)
);
wwv_flow_api.create_app_setting(
 p_id=>wwv_flow_api.id(12100767294946960850)
,p_name=>'ACCESS_CONTROL_SCOPE'
,p_value=>'ACL_ONLY'
,p_is_required=>'N'
,p_valid_values=>'ACL_ONLY, ALL_USERS'
,p_on_upgrade_keep_value=>true
,p_required_patch=>wwv_flow_api.id(12100762962395960844)
,p_comments=>'The default access level given to authenticated users who are not in the access control list'
);
end;
/
prompt --application/shared_components/navigation/tabs/standard
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/parent
begin
null;
end;
/
prompt --application/shared_components/user_interface/lovs/access_roles
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(12101062770714961828)
,p_lov_name=>'ACCESS_ROLES'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select role_name d, role_id r',
'from APEX_APPL_ACL_ROLES where application_id = :APP_ID ',
'order by 1'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'R'
,p_display_column_name=>'D'
);
end;
/
prompt --application/shared_components/user_interface/lovs/demo_projects_name
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(12100842151444961397)
,p_lov_name=>'DEMO_PROJECTS.NAME'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'DEMO_PROJECTS'
,p_return_column_name=>'ID'
,p_display_column_name=>'NAME'
,p_default_sort_column_name=>'NAME'
,p_default_sort_direction=>'ASC'
);
end;
/
prompt --application/shared_components/user_interface/lovs/demo_proj_milestones_name
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(12100866014184961511)
,p_lov_name=>'DEMO_PROJ_MILESTONES.NAME'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'DEMO_PROJ_MILESTONES'
,p_return_column_name=>'ID'
,p_display_column_name=>'NAME'
,p_default_sort_column_name=>'NAME'
,p_default_sort_direction=>'ASC'
);
end;
/
prompt --application/shared_components/user_interface/lovs/demo_proj_status_description
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(12100818466441961273)
,p_lov_name=>'DEMO_PROJ_STATUS.DESCRIPTION'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'DEMO_PROJ_STATUS'
,p_return_column_name=>'CD'
,p_display_column_name=>'DESCRIPTION'
,p_default_sort_column_name=>'DESCRIPTION'
,p_default_sort_direction=>'ASC'
);
end;
/
prompt --application/shared_components/user_interface/lovs/demo_proj_team_members_username
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(12100819075431961274)
,p_lov_name=>'DEMO_PROJ_TEAM_MEMBERS.USERNAME'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'DEMO_PROJ_TEAM_MEMBERS'
,p_return_column_name=>'ID'
,p_display_column_name=>'USERNAME'
,p_default_sort_column_name=>'USERNAME'
,p_default_sort_direction=>'ASC'
);
end;
/
prompt --application/shared_components/user_interface/lovs/desktop_theme_styles
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(12100991246080961722)
,p_lov_name=>'DESKTOP THEME STYLES'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select s.name d,',
'    s.theme_style_id r',
'from apex_application_theme_styles s, apex_application_themes t',
'where s.application_id = t.application_id',
'    and s.theme_number = t.theme_number',
'    and s.application_id = :app_id',
'    and t.ui_type_name   = ''DESKTOP''',
'    and t.is_current = ''Yes''',
'order by 1'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'R'
,p_display_column_name=>'D'
);
end;
/
prompt --application/shared_components/user_interface/lovs/email_username_format
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(12101070416607961834)
,p_lov_name=>'EMAIL_USERNAME_FORMAT'
,p_lov_query=>'.'||wwv_flow_api.id(12101070416607961834)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(12101070798121961834)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Email Addresses'
,p_lov_return_value=>'EMAIL'
);
end;
/
prompt --application/shared_components/user_interface/lovs/feedback_rating
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(12101089259224961852)
,p_lov_name=>'FEEDBACK_RATING'
,p_lov_query=>'.'||wwv_flow_api.id(12101089259224961852)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(12101089504732961852)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Positive'
,p_lov_return_value=>'3'
,p_lov_template=>'<span title="#DISPLAY_VALUE#" aria-label="#DISPLAY_VALUE#"><span class="fa fa-smile-o fa-2x feedback-positive" aria-hidden="true" ></span></span>'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(12101089928284961853)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Neutral'
,p_lov_return_value=>'2'
,p_lov_template=>'<span title="#DISPLAY_VALUE#" aria-label="#DISPLAY_VALUE#"><span class="fa fa-emoji-neutral fa-2x feedback-neutral" aria-hidden="true" ></span></span>'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(12101090397162961853)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Negative'
,p_lov_return_value=>'1'
,p_lov_template=>'<span title="#DISPLAY_VALUE#" aria-label="#DISPLAY_VALUE#"><span class="fa fa-frown-o fa-2x feedback-negative" aria-hidden="true" ></span></span>'
);
end;
/
prompt --application/shared_components/user_interface/lovs/feedback_status
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(12101099494862961861)
,p_lov_name=>'FEEDBACK_STATUS'
,p_lov_query=>'.'||wwv_flow_api.id(12101099494862961861)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(12101099782330961861)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'No Action'
,p_lov_return_value=>'0'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(12101100129665961861)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Acknowledged'
,p_lov_return_value=>'1'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(12101100552034961862)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Open'
,p_lov_return_value=>'3'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(12101100964149961862)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Closed'
,p_lov_return_value=>'4'
);
end;
/
prompt --application/shared_components/user_interface/lovs/login_remember_username
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(12100777734409960877)
,p_lov_name=>'LOGIN_REMEMBER_USERNAME'
,p_lov_query=>'.'||wwv_flow_api.id(12100777734409960877)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(12100778192075960878)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'Remember username'
,p_lov_return_value=>'Y'
);
end;
/
prompt --application/shared_components/user_interface/lovs/milestones
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(17482253515193212629)
,p_lov_name=>'MILESTONES'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select name as display',
', id as return',
'from demo_proj_milestones',
'order by 1',
''))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'RETURN'
,p_display_column_name=>'DISPLAY'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
end;
/
prompt --application/shared_components/user_interface/lovs/projects
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(17476080343291496862)
,p_lov_name=>'PROJECTS'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select name as display,',
' id as return',
' from demo_projects',
'      order by 1',
''))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'RETURN'
,p_display_column_name=>'DISPLAY'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
end;
/
prompt --application/shared_components/user_interface/lovs/status
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(18877680433882670079)
,p_lov_name=>'STATUS'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select description d, cd r',
'from demo_proj_status',
'order by display_order',
''))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'R'
,p_display_column_name=>'D'
);
end;
/
prompt --application/shared_components/user_interface/lovs/statuses
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(17458140949113655899)
,p_lov_name=>'STATUSES'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select description as display,',
'cd as return',
'from demo_proj_status',
'order by 1',
''))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'RETURN'
,p_display_column_name=>'DISPLAY'
);
end;
/
prompt --application/shared_components/user_interface/lovs/team_members
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(17422105771482015927)
,p_lov_name=>'TEAM MEMBERS'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select full_name as display,',
'id as return',
'from demo_proj_team_members   ',
'order by 1  ',
''))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'RETURN'
,p_display_column_name=>'DISPLAY'
);
end;
/
prompt --application/shared_components/user_interface/lovs/timeframe_4_weeks
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(12101011784620961745)
,p_lov_name=>'TIMEFRAME (4 WEEKS)'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select disp,',
'      val as seconds',
' from table( apex_util.get_timeframe_lov_data )',
'order by insert_order'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'SECONDS'
,p_display_column_name=>'DISP'
);
end;
/
prompt --application/shared_components/user_interface/lovs/user_theme_preference
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(12100991938644961723)
,p_lov_name=>'USER_THEME_PREFERENCE'
,p_lov_query=>'.'||wwv_flow_api.id(12100991938644961723)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(12100992244530961724)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Allow End Users to choose Theme Style'
,p_lov_return_value=>'Yes'
);
end;
/
prompt --application/shared_components/user_interface/lovs/view_as_report_chart
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(12101047166698961813)
,p_lov_name=>'VIEW_AS_REPORT_CHART'
,p_lov_query=>'.'||wwv_flow_api.id(12101047166698961813)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(12101047499112961813)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Add Report Page'
,p_lov_return_value=>'REPORT'
,p_lov_template=>'<span class="fa fa-table" aria-hidden="true"></span><span class="u-VisuallyHidden">#DISPLAY_VALUE#</span>'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(12101047861455961814)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Add Chart Page'
,p_lov_return_value=>'CHART'
,p_lov_template=>'<span class="fa fa-pie-chart" aria-hidden="true"></span><span class="u-VisuallyHidden">#DISPLAY_VALUE#</span>'
);
end;
/
prompt --application/pages/page_groups
begin
wwv_flow_api.create_page_group(
 p_id=>wwv_flow_api.id(12100767576725960852)
,p_group_name=>'Administration'
);
end;
/
prompt --application/comments
begin
null;
end;
/
prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
wwv_flow_api.create_menu(
 p_id=>wwv_flow_api.id(12100624126947960738)
,p_name=>'Breadcrumb'
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(12100624340313960738)
,p_short_name=>'Home'
,p_link=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.'
,p_page_id=>1
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(12100794137372960912)
,p_parent_id=>0
,p_short_name=>'Team Members'
,p_link=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:::'
,p_page_id=>2
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(12100820808257961276)
,p_parent_id=>0
,p_short_name=>'Projects'
,p_link=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.:::'
,p_page_id=>4
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(12100843963859961399)
,p_parent_id=>0
,p_short_name=>'Milestones'
,p_link=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.:::'
,p_page_id=>6
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(12100868178980961514)
,p_parent_id=>0
,p_short_name=>'Tasks'
,p_link=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.:::'
,p_page_id=>8
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(12101120709507961890)
,p_short_name=>'Administration'
,p_link=>'f?p=&APP_ID.:10000:&SESSION.'
,p_page_id=>10000
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(18858967888615774681)
,p_short_name=>'Calendar'
,p_link=>'f?p=&APP_ID.:11:&SESSION.'
,p_page_id=>11
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(18863363956524395506)
,p_parent_id=>0
,p_short_name=>'Summary'
,p_link=>'f?p=&APP_ID.:12:&SESSION.::&DEBUG.:::'
,p_page_id=>12
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(18874547196843522267)
,p_parent_id=>wwv_flow_api.id(18863363956524395506)
,p_short_name=>'Project Tree '
,p_link=>'f?p=&APP_ID.:14:&SESSION.'
,p_page_id=>14
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(18896291760418239492)
,p_parent_id=>wwv_flow_api.id(18863363956524395506)
,p_short_name=>'Tasks Review'
,p_link=>'f?p=&APP_ID.:15:&SESSION.'
,p_page_id=>15
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(18897832389820180803)
,p_parent_id=>wwv_flow_api.id(18863363956524395506)
,p_short_name=>'Milestones Review'
,p_link=>'f?p=&APP_ID.:17:&SESSION.'
,p_page_id=>17
);
end;
/
prompt --application/shared_components/user_interface/templates/page/left_side_column
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(12100624967130960739)
,p_theme_id=>42
,p_name=>'Left Side Column'
,p_internal_name=>'LEFT_SIDE_COLUMN'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.leftSideCol();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-PageBody t-PageBody--showLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'<a href="#main" id="t_Body_skipToContent">&APP_TEXT$UI_PAGE_SKIP_TO_CONTENT.</a>',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding" role="banner">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" aria-label="#EXPAND_COLLAPSE_NAV_LABEL#" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Header-controlsIcon" aria-hidden="t'
||'rue"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">#NAVIGATION_BAR#</div>',
'  </div>',
'  <div class="t-Header-nav">#TOP_GLOBAL_NAVIGATION_LIST##REGION_POSITION_06#</div>',
'</header>',
''))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">#REGION_POSITION_01#</div>',
'    <div class="t-Body-side" id="t_Body_side">#REGION_POSITION_02#</div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      <main id="main" class="t-Body-mainContent">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-fullContent">#REGION_POSITION_08#</div>',
'        <div class="t-Body-contentInner">#BODY#</div>',
'      </main>',
'      <footer class="t-Footer" role="contentinfo">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            #BUILT_WITH_LOVE_USING_APEX#',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">#REGION_POSITION_04#</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'      <span class="t-Icon a-Icon icon-user"></span>',
'      <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'    <span class="t-Icon #IMAGE#"></span>',
'    <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525196570560608698
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(12100625261147960741)
,p_page_template_id=>wwv_flow_api.id(12100624967130960739)
,p_name=>'Before Content Body'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(12100625590333960742)
,p_page_template_id=>wwv_flow_api.id(12100624967130960739)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(12100625844390960742)
,p_page_template_id=>wwv_flow_api.id(12100624967130960739)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(12100626140241960742)
,p_page_template_id=>wwv_flow_api.id(12100624967130960739)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(12100626450586960742)
,p_page_template_id=>wwv_flow_api.id(12100624967130960739)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(12100626721064960742)
,p_page_template_id=>wwv_flow_api.id(12100624967130960739)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(12100627029830960743)
,p_page_template_id=>wwv_flow_api.id(12100624967130960739)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(12100627335608960743)
,p_page_template_id=>wwv_flow_api.id(12100624967130960739)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/page/left_and_right_side_columns
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(12100627753791960744)
,p_theme_id=>42
,p_name=>'Left and Right Side Columns'
,p_internal_name=>'LEFT_AND_RIGHT_SIDE_COLUMNS'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.bothSideCols();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>',
'</head>',
'<body class="t-PageBody t-PageBody--showLeft no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'<a href="#main" id="t_Body_skipToContent">&APP_TEXT$UI_PAGE_SKIP_TO_CONTENT.</a>',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding" role="banner">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" aria-label="#EXPAND_COLLAPSE_NAV_LABEL#" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Header-controlsIcon" aria-hidden="t'
||'rue"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">#NAVIGATION_BAR#</div>',
'  </div>',
'  <div class="t-Header-nav">#TOP_GLOBAL_NAVIGATION_LIST##REGION_POSITION_06#</div>',
'</header>',
''))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">#REGION_POSITION_01#</div>',
'    <div class="t-Body-side" id="t_Body_side">#REGION_POSITION_02#</div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      <main id="main" class="t-Body-mainContent">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-fullContent">#REGION_POSITION_08#</div>',
'        <div class="t-Body-contentInner">#BODY#</div>',
'      </main>',
'      <footer class="t-Footer" role="contentinfo">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            #BUILT_WITH_LOVE_USING_APEX#',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Body-actionsToggle" title="#EXPAND_COLLAPSE_SIDE_COL_LABEL#" id="t_Button_rightControlButton" type="button"><span class="t-Body-actionsControlsIcon" aria-hidden="true"></span></button>',
'    <div class="t-Body-actionsContent" role="complementary">#REGION_POSITION_03#</div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">#REGION_POSITION_04#</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'      <span class="t-Icon a-Icon icon-user"></span>',
'      <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'    <span class="t-Icon #IMAGE#"></span>',
'    <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525203692562657055
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(12100628004650960744)
,p_page_template_id=>wwv_flow_api.id(12100627753791960744)
,p_name=>'Before Content Body'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>6
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(12100628320612960744)
,p_page_template_id=>wwv_flow_api.id(12100627753791960744)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(12100628629516960744)
,p_page_template_id=>wwv_flow_api.id(12100627753791960744)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>6
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(12100628966575960744)
,p_page_template_id=>wwv_flow_api.id(12100627753791960744)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>6
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(12100629227505960745)
,p_page_template_id=>wwv_flow_api.id(12100627753791960744)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(12100629518517960745)
,p_page_template_id=>wwv_flow_api.id(12100627753791960744)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>3
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(12100629891979960745)
,p_page_template_id=>wwv_flow_api.id(12100627753791960744)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(12100630195385960745)
,p_page_template_id=>wwv_flow_api.id(12100627753791960744)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(12100630463425960745)
,p_page_template_id=>wwv_flow_api.id(12100627753791960744)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>3
);
end;
/
prompt --application/shared_components/user_interface/templates/page/login
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(12100630806966960745)
,p_theme_id=>42
,p_name=>'Login'
,p_internal_name=>'LOGIN'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.appLogin();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-PageBody--login no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Login-container">',
'  <header class="t-Login-containerHeader">#REGION_POSITION_01#</header>',
'  <main class="t-Login-containerBody" id="main">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION##BODY#</main>',
'  <footer class="t-Login-containerFooter">#REGION_POSITION_02#</footer>',
'</div>',
''))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>6
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2099711150063350616
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(12100631138363960746)
,p_page_template_id=>wwv_flow_api.id(12100630806966960745)
,p_name=>'Body Footer'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(12100631478994960746)
,p_page_template_id=>wwv_flow_api.id(12100630806966960745)
,p_name=>'Body Header'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(12100631704477960746)
,p_page_template_id=>wwv_flow_api.id(12100630806966960745)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/page/master_detail
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(12100633152522960747)
,p_theme_id=>42
,p_name=>'Marquee'
,p_internal_name=>'MASTER_DETAIL'
,p_is_popup=>false
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.stickyTableHeader#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.apexTabs#MIN#.js?v=#APEX_VERSION#'))
,p_javascript_code_onload=>'apex.theme42.initializePage.masterDetail();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-PageBody t-PageBody--masterDetail t-PageBody--hideLeft no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'<a href="#main" id="t_Body_skipToContent">&APP_TEXT$UI_PAGE_SKIP_TO_CONTENT.</a>',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding" role="banner">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" aria-label="#EXPAND_COLLAPSE_NAV_LABEL#" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Header-controlsIcon" aria-hidden="t'
||'rue"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">#NAVIGATION_BAR#</div>',
'  </div>',
'  <div class="t-Header-nav">#TOP_GLOBAL_NAVIGATION_LIST##REGION_POSITION_06#</div>',
'</header>'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">#REGION_POSITION_01#</div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      <main id="main" class="t-Body-mainContent">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-fullContent">#REGION_POSITION_08#</div>',
'        <div class="t-Body-info" id="t_Body_info">#REGION_POSITION_02#</div>',
'        <div class="t-Body-contentInner" role="main">#BODY#</div>',
'      </main>',
'      <footer class="t-Footer" role="contentinfo">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            #BUILT_WITH_LOVE_USING_APEX#',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Body-actionsToggle" title="#EXPAND_COLLAPSE_SIDE_COL_LABEL#" id="t_Button_rightControlButton" type="button"><span class="t-Body-actionsControlsIcon" aria-hidden="true"></span></button>',
'    <div class="t-Body-actionsContent" role="complementary">#REGION_POSITION_03#</div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">#REGION_POSITION_04#</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'      <span class="t-Icon a-Icon icon-user"></span>',
'      <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'    <span class="t-Icon #IMAGE#"></span>',
'    <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>1996914646461572319
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(12100633480614960747)
,p_page_template_id=>wwv_flow_api.id(12100633152522960747)
,p_name=>'Before Content Body'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(12100633761085960748)
,p_page_template_id=>wwv_flow_api.id(12100633152522960747)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(12100634096299960748)
,p_page_template_id=>wwv_flow_api.id(12100633152522960747)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(12100634349281960748)
,p_page_template_id=>wwv_flow_api.id(12100633152522960747)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(12100634605272960748)
,p_page_template_id=>wwv_flow_api.id(12100633152522960747)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(12100634928943960748)
,p_page_template_id=>wwv_flow_api.id(12100633152522960747)
,p_name=>'Master Detail'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(12100635279218960748)
,p_page_template_id=>wwv_flow_api.id(12100633152522960747)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(12100635549206960748)
,p_page_template_id=>wwv_flow_api.id(12100633152522960747)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(12100635801598960749)
,p_page_template_id=>wwv_flow_api.id(12100633152522960747)
,p_name=>'Right Side Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
end;
/
prompt --application/shared_components/user_interface/templates/page/minimal_no_navigation
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(12100636244795960749)
,p_theme_id=>42
,p_name=>'Minimal (No Navigation)'
,p_internal_name=>'MINIMAL_NO_NAVIGATION'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.noSideCol();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#  ',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES# t-PageBody--noNav" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'<a href="#main" id="t_Body_skipToContent">&APP_TEXT$UI_PAGE_SKIP_TO_CONTENT.</a>',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding" role="banner">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" aria-label="#EXPAND_COLLAPSE_NAV_LABEL#" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Icon fa fa-bars" aria-hidden="true"'
||'></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">#NAVIGATION_BAR#</div>',
'  </div>',
'</header>',
'    '))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">#REGION_POSITION_01#</div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      <main id="main" class="t-Body-mainContent">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-fullContent">#REGION_POSITION_08#</div>',
'        <div class="t-Body-contentInner">#BODY#</div>',
'      </main>',
'      <footer class="t-Footer" role="contentinfo">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            #BUILT_WITH_LOVE_USING_APEX#',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">#REGION_POSITION_04#</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>',
''))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar t-NavigationBar--classic" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'      <span class="t-Icon a-Icon icon-user"></span>',
'      <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header" href="#LINK#">',
'    <span class="t-Icon #IMAGE#"></span>',
'    <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>4
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2977628563533209425
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(12100636575134960749)
,p_page_template_id=>wwv_flow_api.id(12100636244795960749)
,p_name=>'Before Content Body'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(12100636882356960749)
,p_page_template_id=>wwv_flow_api.id(12100636244795960749)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(12100637197096960749)
,p_page_template_id=>wwv_flow_api.id(12100636244795960749)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(12100637412859960750)
,p_page_template_id=>wwv_flow_api.id(12100636244795960749)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(12100637705898960750)
,p_page_template_id=>wwv_flow_api.id(12100636244795960749)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(12100638050261960750)
,p_page_template_id=>wwv_flow_api.id(12100636244795960749)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(12100638384851960750)
,p_page_template_id=>wwv_flow_api.id(12100636244795960749)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/page/modal_dialog
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(12100638718555960750)
,p_theme_id=>42
,p_name=>'Modal Dialog'
,p_internal_name=>'MODAL_DIALOG'
,p_is_popup=>true
,p_javascript_code_onload=>'apex.theme42.initializePage.modalDialog();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-Dialog-page t-Dialog-page--standard #DIALOG_CSS_CLASSES# #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Dialog" role="dialog" aria-label="#TITLE#">',
'  <div class="t-Dialog-header">#REGION_POSITION_01#</div>',
'  <div class="t-Dialog-bodyWrapperOut">',
'    <div class="t-Dialog-bodyWrapperIn">',
'      <div class="t-Dialog-body" role="main">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION##BODY#</div>',
'    </div>',
'  </div>',
'  <div class="t-Dialog-footer">#REGION_POSITION_03#</div>',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>3
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},''t-Dialog-page--standard ''+#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_height=>'auto'
,p_dialog_width=>'720'
,p_dialog_max_width=>'960'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2098960803539086924
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(12100639071057960751)
,p_page_template_id=>wwv_flow_api.id(12100638718555960750)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(12100639356321960751)
,p_page_template_id=>wwv_flow_api.id(12100638718555960750)
,p_name=>'Dialog Footer'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(12100639626111960751)
,p_page_template_id=>wwv_flow_api.id(12100638718555960750)
,p_name=>'Dialog Header'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/page/right_side_column
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(12100640206083960752)
,p_theme_id=>42
,p_name=>'Right Side Column'
,p_internal_name=>'RIGHT_SIDE_COLUMN'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.rightSideCol();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8"> ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'<a href="#main" id="t_Body_skipToContent">&APP_TEXT$UI_PAGE_SKIP_TO_CONTENT.</a>',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding" role="banner">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" aria-label="#EXPAND_COLLAPSE_NAV_LABEL#" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Header-controlsIcon" aria-hidden="t'
||'rue"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">#NAVIGATION_BAR#</div>',
'  </div>',
'  <div class="t-Header-nav">#TOP_GLOBAL_NAVIGATION_LIST##REGION_POSITION_06#</div>',
'</header>'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">#REGION_POSITION_01#</div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      <main id="main" class="t-Body-mainContent">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-fullContent">#REGION_POSITION_08#</div>',
'        <div class="t-Body-contentInner">#BODY#</div>',
'      </main>',
'      <footer class="t-Footer" role="contentinfo">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            #BUILT_WITH_LOVE_USING_APEX#',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Body-actionsToggle" aria-label="#EXPAND_COLLAPSE_SIDE_COL_LABEL#" title="#EXPAND_COLLAPSE_SIDE_COL_LABEL#" id="t_Button_rightControlButton" type="button"><span class="t-Body-actionsControlsIcon" aria-hidden="true"></span></button'
||'>',
'    <div class="t-Body-actionsContent" role="complementary">#REGION_POSITION_03#</div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">#REGION_POSITION_04#</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'      <span class="t-Icon a-Icon icon-user"></span>',
'      <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'    <span class="t-Icon #IMAGE#"></span>',
'    <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525200116240651575
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(12100640582592960752)
,p_page_template_id=>wwv_flow_api.id(12100640206083960752)
,p_name=>'Before Content Body'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(12100640840502960752)
,p_page_template_id=>wwv_flow_api.id(12100640206083960752)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(12100641122947960752)
,p_page_template_id=>wwv_flow_api.id(12100640206083960752)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(12100641436217960752)
,p_page_template_id=>wwv_flow_api.id(12100640206083960752)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(12100641728691960752)
,p_page_template_id=>wwv_flow_api.id(12100640206083960752)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(12100642090139960753)
,p_page_template_id=>wwv_flow_api.id(12100640206083960752)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(12100642366141960753)
,p_page_template_id=>wwv_flow_api.id(12100640206083960752)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(12100642664909960753)
,p_page_template_id=>wwv_flow_api.id(12100640206083960752)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
end;
/
prompt --application/shared_components/user_interface/templates/page/standard
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(12100643005416960753)
,p_theme_id=>42
,p_name=>'Standard'
,p_internal_name=>'STANDARD'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.noSideCol();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'<a href="#main" id="t_Body_skipToContent">&APP_TEXT$UI_PAGE_SKIP_TO_CONTENT.</a>',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding" role="banner">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" aria-label="#EXPAND_COLLAPSE_NAV_LABEL#" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Header-controlsIcon" aria-hidden="t'
||'rue"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">#NAVIGATION_BAR#</div>',
'  </div>',
'  <div class="t-Header-nav">#TOP_GLOBAL_NAVIGATION_LIST##REGION_POSITION_06#</div>',
'</header>',
''))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">#REGION_POSITION_01#</div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      <main id="main" class="t-Body-mainContent">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-fullContent">#REGION_POSITION_08#</div>',
'        <div class="t-Body-contentInner">#BODY#</div>',
'      </main>',
'      <footer class="t-Footer" role="contentinfo">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            #BUILT_WITH_LOVE_USING_APEX#',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">#REGION_POSITION_04#</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>',
''))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar t-NavigationBar--classic" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'      <span class="t-Icon a-Icon icon-user"></span>',
'      <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header" href="#LINK#">',
'    <span class="t-Icon #IMAGE#"></span>',
'    <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>1
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>4070909157481059304
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(12100643347135960753)
,p_page_template_id=>wwv_flow_api.id(12100643005416960753)
,p_name=>'Before Content Body'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(12100643694395960754)
,p_page_template_id=>wwv_flow_api.id(12100643005416960753)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(12100643963469960754)
,p_page_template_id=>wwv_flow_api.id(12100643005416960753)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(12100644283110960754)
,p_page_template_id=>wwv_flow_api.id(12100643005416960753)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(12100644551434960755)
,p_page_template_id=>wwv_flow_api.id(12100643005416960753)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(12100644896794960755)
,p_page_template_id=>wwv_flow_api.id(12100643005416960753)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(12100645142346960755)
,p_page_template_id=>wwv_flow_api.id(12100643005416960753)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/page/wizard_modal_dialog
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(12100645516676960755)
,p_theme_id=>42
,p_name=>'Wizard Modal Dialog'
,p_internal_name=>'WIZARD_MODAL_DIALOG'
,p_is_popup=>true
,p_javascript_code_onload=>'apex.theme42.initializePage.wizardModal();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-Dialog-page t-Dialog-page--wizard #DIALOG_CSS_CLASSES# #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Dialog" role="dialog" aria-label="#TITLE#">',
'  <div class="t-Dialog-header">#REGION_POSITION_01#</div>',
'  <div class="t-Dialog-bodyWrapperOut">',
'    <div class="t-Dialog-bodyWrapperIn">',
'      <div class="t-Dialog-body" role="main">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION##BODY#</div>',
'    </div>',
'  </div>',
'  <div class="t-Dialog-footer">#REGION_POSITION_03#</div>',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_theme_class_id=>3
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},''t-Dialog-page--wizard ''+#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_height=>'auto'
,p_dialog_width=>'720'
,p_dialog_max_width=>'960'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2120348229686426515
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(12100645850850960755)
,p_page_template_id=>wwv_flow_api.id(12100645516676960755)
,p_name=>'Wizard Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(12100646167952960756)
,p_page_template_id=>wwv_flow_api.id(12100645516676960755)
,p_name=>'Wizard Buttons'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(12100646498811960756)
,p_page_template_id=>wwv_flow_api.id(12100645516676960755)
,p_name=>'Wizard Progress Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/button/icon
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(12100738113074960817)
,p_template_name=>'Icon'
,p_internal_name=>'ICON'
,p_template=>'<button class="t-Button t-Button--noLabel t-Button--icon #BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#" title="#LABEL#" aria-label="#LABEL#"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"><'
||'/span></button>'
,p_hot_template=>'<button class="t-Button t-Button--noLabel t-Button--icon #BUTTON_CSS_CLASSES# t-Button--hot" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#" title="#LABEL#" aria-label="#LABEL#"><span class="t-Icon #ICON_CSS_CLASSES#" aria-h'
||'idden="true"></span></button>'
,p_reference_id=>2347660919680321258
,p_translate_this_template=>'N'
,p_theme_class_id=>5
,p_theme_id=>42
);
end;
/
prompt --application/shared_components/user_interface/templates/button/text
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(12100738882918960818)
,p_template_name=>'Text'
,p_internal_name=>'TEXT'
,p_template=>'<button onclick="#JAVASCRIPT#" class="t-Button #BUTTON_CSS_CLASSES#" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#"><span class="t-Button-label">#LABEL#</span></button>'
,p_hot_template=>'<button onclick="#JAVASCRIPT#" class="t-Button t-Button--hot #BUTTON_CSS_CLASSES#" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#"><span class="t-Button-label">#LABEL#</span></button>'
,p_reference_id=>4070916158035059322
,p_translate_this_template=>'N'
,p_theme_class_id=>1
,p_theme_id=>42
);
end;
/
prompt --application/shared_components/user_interface/templates/button/text_with_icon
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(12100738926227960818)
,p_template_name=>'Text with Icon'
,p_internal_name=>'TEXT_WITH_ICON'
,p_template=>'<button class="t-Button t-Button--icon #BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#"><span class="t-Icon t-Icon--left #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-Button-label">#LABEL#'
||'</span><span class="t-Icon t-Icon--right #ICON_CSS_CLASSES#" aria-hidden="true"></span></button>'
,p_hot_template=>'<button class="t-Button t-Button--icon #BUTTON_CSS_CLASSES# t-Button--hot" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#"><span class="t-Icon t-Icon--left #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-Button-'
||'label">#LABEL#</span><span class="t-Icon t-Icon--right #ICON_CSS_CLASSES#" aria-hidden="true"></span></button>'
,p_reference_id=>2081382742158699622
,p_translate_this_template=>'N'
,p_theme_class_id=>4
,p_preset_template_options=>'t-Button--iconRight'
,p_theme_id=>42
);
end;
/
prompt --application/shared_components/user_interface/templates/region/alert
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(12100647074917960757)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-header">',
'        <h2 class="t-Alert-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'      </div>',
'      <div class="t-Alert-body">#BODY#</div>',
'    </div>',
'    <div class="t-Alert-buttons">#PREVIOUS##CLOSE##CREATE##NEXT#</div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Alert'
,p_internal_name=>'ALERT'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>21
,p_preset_template_options=>'t-Alert--horizontal:t-Alert--defaultIcons:t-Alert--warning'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2039236646100190748
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(12100647379075960757)
,p_plug_template_id=>wwv_flow_api.id(12100647074917960757)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/region/blank_with_attributes
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(12100650718659960759)
,p_layout=>'TABLE'
,p_template=>'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="#REGION_CSS_CLASSES#">#PREVIOUS##BODY##SUB_REGIONS##NEXT#</div>'
,p_page_plug_template_name=>'Blank with Attributes'
,p_internal_name=>'BLANK_WITH_ATTRIBUTES'
,p_theme_id=>42
,p_theme_class_id=>7
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>4499993862448380551
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/blank_with_attributes_no_grid
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(12100650924443960759)
,p_layout=>'TABLE'
,p_template=>'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="#REGION_CSS_CLASSES#">#PREVIOUS##BODY##SUB_REGIONS##NEXT#</div>'
,p_page_plug_template_name=>'Blank with Attributes (No Grid)'
,p_internal_name=>'BLANK_WITH_ATTRIBUTES_NO_GRID'
,p_theme_id=>42
,p_theme_class_id=>7
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3369790999010910123
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(12100651212471960759)
,p_plug_template_id=>wwv_flow_api.id(12100650924443960759)
,p_name=>'Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(12100651576556960760)
,p_plug_template_id=>wwv_flow_api.id(12100650924443960759)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/buttons_container
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(12100651778089960760)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ButtonRegion t-Form--floatLeft #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-ButtonRegion-wrap">',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--left"><div class="t-ButtonRegion-buttons">#PREVIOUS##CLOSE##DELETE#</div></div>',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--content">',
'      <h2 class="t-ButtonRegion-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'      #BODY#',
'      <div class="t-ButtonRegion-buttons">#CHANGE#</div>',
'    </div>',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--right"><div class="t-ButtonRegion-buttons">#EDIT##CREATE##NEXT#</div></div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Buttons Container'
,p_internal_name=>'BUTTONS_CONTAINER'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>17
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2124982336649579661
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(12100652017888960760)
,p_plug_template_id=>wwv_flow_api.id(12100651778089960760)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(12100652317738960761)
,p_plug_template_id=>wwv_flow_api.id(12100651778089960760)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/region/carousel_container
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(12100653984355960761)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Region t-Region--carousel #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <span class="t-Region-headerIcon"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"></span></span>',
'    <h2 class="t-Region-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#COPY##EDIT#<span class="js-maximizeButtonContainer"></span></div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #BODY#',
'   <div class="t-Region-carouselRegions">',
'     #SUB_REGIONS#',
'   </div>',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#CLOSE##HELP#</div>',
'    <div class="t-Region-buttons-right">#DELETE##CHANGE##CREATE#</div>',
'   </div>',
' </div>',
'</div>'))
,p_sub_plug_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div data-label="#SUB_REGION_TITLE#" id="SR_#SUB_REGION_ID#">',
'  #SUB_REGION#',
'</div>'))
,p_page_plug_template_name=>'Carousel Container'
,p_internal_name=>'CAROUSEL_CONTAINER'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.apexTabs#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#plugins/com.oracle.apex.carousel/1.1/com.oracle.apex.carousel#MIN#.js?v=#APEX_VERSION#'))
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>5
,p_default_template_options=>'t-Region--showCarouselControls'
,p_preset_template_options=>'t-Region--hiddenOverflow'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2865840475322558786
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(12100654271526960762)
,p_plug_template_id=>wwv_flow_api.id(12100653984355960761)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(12100654544075960762)
,p_plug_template_id=>wwv_flow_api.id(12100653984355960761)
,p_name=>'Slides'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/region/collapsible
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(12100661125941960765)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Region t-Region--hideShow #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems  t-Region-headerItems--controls"><button class="t-Button t-Button--icon t-Button--hideShow" type="button"></button></div>',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <h2 class="t-Region-title">#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#EDIT#</div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#CLOSE#</div>',
'    <div class="t-Region-buttons-right">#CREATE#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #COPY#',
'     #BODY#',
'     #SUB_REGIONS#',
'     #CHANGE#',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
' </div>',
'</div>'))
,p_page_plug_template_name=>'Collapsible'
,p_internal_name=>'COLLAPSIBLE'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>1
,p_preset_template_options=>'is-expanded:t-Region--scrollBody'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2662888092628347716
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(12100661496604960766)
,p_plug_template_id=>wwv_flow_api.id(12100661125941960765)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(12100661786393960766)
,p_plug_template_id=>wwv_flow_api.id(12100661125941960765)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/region/content_block
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(12100666568505960769)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ContentBlock #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-ContentBlock-header">',
'    <div class="t-ContentBlock-headerItems t-ContentBlock-headerItems--title">',
'      <span class="t-ContentBlock-headerIcon"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"></span></span>',
'      <h1 class="t-ContentBlock-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h1>',
'      #EDIT#',
'    </div>',
'    <div class="t-ContentBlock-headerItems t-ContentBlock-headerItems--buttons">#CHANGE#</div>',
'  </div>',
'  <div class="t-ContentBlock-body">#BODY#</div>',
'  <div class="t-ContentBlock-buttons">#PREVIOUS##NEXT#</div>',
'</div>',
''))
,p_page_plug_template_name=>'Content Block'
,p_internal_name=>'CONTENT_BLOCK'
,p_theme_id=>42
,p_theme_class_id=>21
,p_preset_template_options=>'t-ContentBlock--h1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2320668864738842174
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/hero
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(12100668594223960770)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-HeroRegion #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-HeroRegion-wrap">',
'    <div class="t-HeroRegion-col t-HeroRegion-col--left"><span class="t-HeroRegion-icon t-Icon #ICON_CSS_CLASSES#"></span></div>',
'    <div class="t-HeroRegion-col t-HeroRegion-col--content">',
'      <h1 class="t-HeroRegion-title">#TITLE#</h1>',
'      #BODY#',
'    </div>',
'    <div class="t-HeroRegion-col t-HeroRegion-col--right"><div class="t-HeroRegion-form">#SUB_REGIONS#</div><div class="t-HeroRegion-buttons">#NEXT#</div></div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Hero'
,p_internal_name=>'HERO'
,p_theme_id=>42
,p_theme_class_id=>22
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2672571031438297268
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(12100668863629960770)
,p_plug_template_id=>wwv_flow_api.id(12100668594223960770)
,p_name=>'Region Body'
,p_placeholder=>'#BODY#'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/inline_dialog
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(12100670616113960771)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#_parent">',
'<div id="#REGION_STATIC_ID#"  class="t-DialogRegion #REGION_CSS_CLASSES# js-regionDialog" #REGION_ATTRIBUTES# style="display:none" title="#TITLE#">',
'  <div class="t-DialogRegion-wrap">',
'    <div class="t-DialogRegion-bodyWrapperOut"><div class="t-DialogRegion-bodyWrapperIn"><div class="t-DialogRegion-body">#BODY#</div></div></div>',
'    <div class="t-DialogRegion-buttons">',
'       <div class="t-ButtonRegion t-ButtonRegion--dialogRegion">',
'         <div class="t-ButtonRegion-wrap">',
'           <div class="t-ButtonRegion-col t-ButtonRegion-col--left"><div class="t-ButtonRegion-buttons">#PREVIOUS##DELETE##CLOSE#</div></div>',
'           <div class="t-ButtonRegion-col t-ButtonRegion-col--right"><div class="t-ButtonRegion-buttons">#EDIT##CREATE##NEXT#</div></div>',
'         </div>',
'       </div>',
'    </div>',
'  </div>',
'</div>',
'</div>'))
,p_page_plug_template_name=>'Inline Dialog'
,p_internal_name=>'INLINE_DIALOG'
,p_theme_id=>42
,p_theme_class_id=>24
,p_default_template_options=>'js-modal:js-draggable:js-resizable'
,p_preset_template_options=>'js-dialog-size600x400'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2671226943886536762
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(12100670989025960772)
,p_plug_template_id=>wwv_flow_api.id(12100670616113960771)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/inline_popup
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(12100672993852960773)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#_parent">',
'<div id="#REGION_STATIC_ID#"  class="t-DialogRegion #REGION_CSS_CLASSES# js-regionPopup" #REGION_ATTRIBUTES# style="display:none" title="#TITLE#">',
'  <div class="t-DialogRegion-wrap">',
'    <div class="t-DialogRegion-bodyWrapperOut"><div class="t-DialogRegion-bodyWrapperIn"><div class="t-DialogRegion-body">#BODY#</div></div></div>',
'    <div class="t-DialogRegion-buttons">',
'       <div class="t-ButtonRegion t-ButtonRegion--dialogRegion">',
'         <div class="t-ButtonRegion-wrap">',
'           <div class="t-ButtonRegion-col t-ButtonRegion-col--left"><div class="t-ButtonRegion-buttons">#PREVIOUS##DELETE##CLOSE#</div></div>',
'           <div class="t-ButtonRegion-col t-ButtonRegion-col--right"><div class="t-ButtonRegion-buttons">#EDIT##CREATE##NEXT#</div></div>',
'         </div>',
'       </div>',
'    </div>',
'  </div>',
'</div>',
'</div>'))
,p_page_plug_template_name=>'Inline Popup'
,p_internal_name=>'INLINE_POPUP'
,p_theme_id=>42
,p_theme_class_id=>24
,p_preset_template_options=>'js-dialog-size600x400'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>1483922538999385230
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(12100673225881960773)
,p_plug_template_id=>wwv_flow_api.id(12100672993852960773)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/interactive_report
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(12100676227768960775)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="t-IRR-region #REGION_CSS_CLASSES#">',
'  <h2 class="u-VisuallyHidden" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'#PREVIOUS##BODY##SUB_REGIONS##NEXT#',
'</div>'))
,p_page_plug_template_name=>'Interactive Report'
,p_internal_name=>'INTERACTIVE_REPORT'
,p_theme_id=>42
,p_theme_class_id=>9
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2099079838218790610
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/login
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(12100676844997960775)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Login-region t-Form--stretchInputs t-Form--labelsAbove #REGION_CSS_CLASSES#" id="#REGION_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-Login-header">',
'    <span class="t-Login-logo #ICON_CSS_CLASSES#"></span>',
'    <h1 class="t-Login-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h1>',
'  </div>',
'  <div class="t-Login-body">#BODY#</div>',
'  <div class="t-Login-buttons">#NEXT#</div>',
'  <div class="t-Login-links">#EDIT##CREATE#</div>',
'  <div class="t-Login-subRegions">#SUB_REGIONS#</div>',
'</div>'))
,p_page_plug_template_name=>'Login'
,p_internal_name=>'LOGIN'
,p_theme_id=>42
,p_theme_class_id=>23
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2672711194551076376
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(12100677143451960775)
,p_plug_template_id=>wwv_flow_api.id(12100676844997960775)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/standard
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(12100678190315960776)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Region #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <span class="t-Region-headerIcon"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"></span></span>',
'    <h2 class="t-Region-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#COPY##EDIT#<span class="js-maximizeButtonContainer"></span></div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #BODY#',
'     #SUB_REGIONS#',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#CLOSE##HELP#</div>',
'    <div class="t-Region-buttons-right">#DELETE##CHANGE##CREATE#</div>',
'   </div>',
' </div>',
'</div>',
''))
,p_page_plug_template_name=>'Standard'
,p_internal_name=>'STANDARD'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>8
,p_preset_template_options=>'t-Region--scrollBody'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>4070912133526059312
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(12100678427189960776)
,p_plug_template_id=>wwv_flow_api.id(12100678190315960776)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(12100678740451960776)
,p_plug_template_id=>wwv_flow_api.id(12100678190315960776)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/region/tabs_container
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(12100684919027960780)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-TabsRegion #REGION_CSS_CLASSES# apex-tabs-region" #REGION_ATTRIBUTES# id="#REGION_STATIC_ID#">',
'  #BODY#',
'  <div class="t-TabsRegion-items">',
'    #SUB_REGIONS#',
'  </div>',
'</div>'))
,p_sub_plug_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div data-label="#SUB_REGION_TITLE#" id="SR_#SUB_REGION_ID#">',
'  #SUB_REGION#',
'</div>'))
,p_page_plug_template_name=>'Tabs Container'
,p_internal_name=>'TABS_CONTAINER'
,p_javascript_file_urls=>'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.apexTabs#MIN#.js?v=#APEX_VERSION#'
,p_theme_id=>42
,p_theme_class_id=>5
,p_preset_template_options=>'t-TabsRegion-mod--simple'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3221725015618492759
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(12100685280752960780)
,p_plug_template_id=>wwv_flow_api.id(12100684919027960780)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(12100685519885960780)
,p_plug_template_id=>wwv_flow_api.id(12100684919027960780)
,p_name=>'Tabs'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/title_bar
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(12100687582209960782)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="t-BreadcrumbRegion #REGION_CSS_CLASSES#"> ',
'  <div class="t-BreadcrumbRegion-body">',
'    <div class="t-BreadcrumbRegion-breadcrumb">',
'      #BODY#',
'    </div>',
'    <div class="t-BreadcrumbRegion-title">',
'      <h1 class="t-BreadcrumbRegion-titleText">#TITLE#</h1>',
'    </div>',
'  </div>',
'  <div class="t-BreadcrumbRegion-buttons">#PREVIOUS##CLOSE##DELETE##HELP##CHANGE##EDIT##COPY##CREATE##NEXT#</div>',
'</div>'))
,p_page_plug_template_name=>'Title Bar'
,p_internal_name=>'TITLE_BAR'
,p_theme_id=>42
,p_theme_class_id=>6
,p_default_template_options=>'t-BreadcrumbRegion--showBreadcrumb'
,p_preset_template_options=>'t-BreadcrumbRegion--useBreadcrumbTitle'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2530016523834132090
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/wizard_container
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(12100688556657960782)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Wizard #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-Wizard-header">',
'    <h1 class="t-Wizard-title">#TITLE#</h1>',
'    <div class="u-Table t-Wizard-controls">',
'      <div class="u-Table-fit t-Wizard-buttons">#PREVIOUS##CLOSE#</div>',
'      <div class="u-Table-fill t-Wizard-steps">',
'        #BODY#',
'      </div>',
'      <div class="u-Table-fit t-Wizard-buttons">#NEXT#</div>',
'    </div>',
'  </div>',
'  <div class="t-Wizard-body">',
'    #SUB_REGIONS#',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Wizard Container'
,p_internal_name=>'WIZARD_CONTAINER'
,p_theme_id=>42
,p_theme_class_id=>8
,p_preset_template_options=>'t-Wizard--hideStepsXSmall'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2117602213152591491
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(12100688855610960782)
,p_plug_template_id=>wwv_flow_api.id(12100688556657960782)
,p_name=>'Wizard Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/list/badge_list
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(12100713857286960800)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item #A02#">',
'  <a class="t-BadgeList-wrap u-color #A04#" href="#LINK#" #A03#>',
'  <span class="t-BadgeList-label">#TEXT#</span>',
'  <span class="t-BadgeList-value">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item #A02#">',
'  <a class="t-BadgeList-wrap u-color #A04#" href="#LINK#" #A03#>',
'  <span class="t-BadgeList-label">#TEXT#</span>',
'  <span class="t-BadgeList-value">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_name=>'Badge List'
,p_internal_name=>'BADGE_LIST'
,p_theme_id=>42
,p_theme_class_id=>3
,p_preset_template_options=>'t-BadgeList--large:t-BadgeList--cols t-BadgeList--3cols:t-BadgeList--circular'
,p_list_template_before_rows=>'<ul class="t-BadgeList #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Value'
,p_a02_label=>'List item CSS Classes'
,p_a03_label=>'Link Attributes'
,p_a04_label=>'Link Classes'
,p_reference_id=>2062482847268086664
,p_list_template_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'A01: Large Number',
'A02: List Item Classes',
'A03: Link Attributes'))
);
end;
/
prompt --application/shared_components/user_interface/templates/list/cards
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(12100717889787960804)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item is-active #A04#">',
'  <div class="t-Card">',
'    <a href="#LINK#" class="t-Card-wrap" #A05#>',
'      <div class="t-Card-icon u-color #A06#"><span class="t-Icon #ICON_CSS_CLASSES#"><span class="t-Card-initials" role="presentation">#A03#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#TEXT#</h3><h4 class="t-Card-subtitle">#A07#</h4></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#A01#</div>',
'        <div class="t-Card-info">#A02#</div>',
'      </div>',
'      <span class="t-Card-colorFill u-color #A06#"></span>',
'    </a>',
'  </div>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #A04#">',
'  <div class="t-Card">',
'    <a href="#LINK#" class="t-Card-wrap" #A05#>',
'      <div class="t-Card-icon u-color #A06#"><span class="t-Icon #ICON_CSS_CLASSES#"><span class="t-Card-initials" role="presentation">#A03#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#TEXT#</h3><h4 class="t-Card-subtitle">#A07#</h4></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#A01#</div>',
'        <div class="t-Card-info">#A02#</div>',
'      </div>',
'      <span class="t-Card-colorFill u-color #A06#"></span>',
'    </a>',
'  </div>',
'</li>'))
,p_list_template_name=>'Cards'
,p_internal_name=>'CARDS'
,p_theme_id=>42
,p_theme_class_id=>4
,p_preset_template_options=>'t-Cards--animColorFill:t-Cards--3cols:t-Cards--basic'
,p_list_template_before_rows=>'<ul class="t-Cards #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Description'
,p_a02_label=>'Secondary Information'
,p_a03_label=>'Initials'
,p_a04_label=>'List Item CSS Classes'
,p_a05_label=>'Link Attributes'
,p_a06_label=>'Card Color Class'
,p_a07_label=>'Subtitle'
,p_reference_id=>2885322685880632508
);
end;
/
prompt --application/shared_components/user_interface/templates/list/links_list
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(12100723423560960807)
,p_list_template_current=>'<li class="t-LinksList-item is-current #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-b'
||'adge">#A01#</span></a></li>'
,p_list_template_noncurrent=>'<li class="t-LinksList-item #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#'
||'</span></a></li>'
,p_list_template_name=>'Links List'
,p_internal_name=>'LINKS_LIST'
,p_theme_id=>42
,p_theme_class_id=>18
,p_list_template_before_rows=>'<ul class="t-LinksList #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'
,p_list_template_after_rows=>'</ul>'
,p_before_sub_list=>'<ul class="t-LinksList-list">'
,p_after_sub_list=>'</ul>'
,p_sub_list_item_current=>'<li class="t-LinksList-item is-current #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-b'
||'adge">#A01#</span></a></li>'
,p_sub_list_item_noncurrent=>'<li class="t-LinksList-item #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#'
||'</span></a></li>'
,p_item_templ_curr_w_child=>'<li class="t-LinksList-item is-current is-expanded #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t'
||'-LinksList-badge">#A01#</span></a>#SUB_LISTS#</li>'
,p_item_templ_noncurr_w_child=>'<li class="t-LinksList-item #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#'
||'</span></a></li>'
,p_a01_label=>'Badge Value'
,p_a02_label=>'Link Attributes'
,p_a03_label=>'List Item CSS Classes'
,p_reference_id=>4070914341144059318
);
end;
/
prompt --application/shared_components/user_interface/templates/list/media_list
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(12100725081101960809)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MediaList-item is-active #A04#">',
'    <a href="#LINK#" class="t-MediaList-itemWrap #A05#" #A03#>',
'        <div class="t-MediaList-iconWrap">',
'            <span class="t-MediaList-icon u-color #A06#"><span class="t-Icon #ICON_CSS_CLASSES#" #IMAGE_ATTR#></span></span>',
'        </div>',
'        <div class="t-MediaList-body">',
'            <h3 class="t-MediaList-title">#TEXT#</h3>',
'            <p class="t-MediaList-desc">#A01#</p>',
'        </div>',
'        <div class="t-MediaList-badgeWrap">',
'            <span class="t-MediaList-badge">#A02#</span>',
'        </div>',
'    </a>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MediaList-item  #A04#">',
'    <a href="#LINK#" class="t-MediaList-itemWrap #A05#" #A03#>',
'        <div class="t-MediaList-iconWrap">',
'            <span class="t-MediaList-icon u-color #A06#"><span class="t-Icon #ICON_CSS_CLASSES#" #IMAGE_ATTR#></span></span>',
'        </div>',
'        <div class="t-MediaList-body">',
'            <h3 class="t-MediaList-title">#TEXT#</h3>',
'            <p class="t-MediaList-desc">#A01#</p>',
'        </div>',
'        <div class="t-MediaList-badgeWrap">',
'            <span class="t-MediaList-badge">#A02#</span>',
'        </div>',
'    </a>',
'</li>'))
,p_list_template_name=>'Media List'
,p_internal_name=>'MEDIA_LIST'
,p_theme_id=>42
,p_theme_class_id=>5
,p_default_template_options=>'t-MediaList--showIcons:t-MediaList--showDesc'
,p_list_template_before_rows=>'<ul class="t-MediaList #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Description'
,p_a02_label=>'Badge Value'
,p_a03_label=>'Link Attributes'
,p_a04_label=>'List Item CSS Classes'
,p_a05_label=>'Link Class'
,p_a06_label=>'Icon Color Class'
,p_reference_id=>2066548068783481421
);
end;
/
prompt --application/shared_components/user_interface/templates/list/menu_bar
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(12100727810142960810)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Menu Bar'
,p_internal_name=>'MENU_BAR'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menubar", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  apex.actions.addFromMarkup( e );',
'}',
'e.menu({',
'  behaveLikeTabs: e.hasClass("js-tabLike"),',
'  menubarShowSubMenuIcon: e.hasClass("js-showSubMenuIcons") || null,',
'  iconType: ''fa'',',
'  slide: e.hasClass("js-slide"),',
'  menubar: true,',
'  menubarOverflow: true,',
'  callout: e.hasClass("js-menu-callout")',
'});'))
,p_theme_id=>42
,p_theme_class_id=>20
,p_default_template_options=>'js-showSubMenuIcons'
,p_list_template_before_rows=>'<div class="t-MenuBar #COMPONENT_CSS_CLASSES#" id="#PARENT_STATIC_ID#_menubar"><ul style="display:none">'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_reference_id=>2008709236185638887
);
end;
/
prompt --application/shared_components/user_interface/templates/list/menu_popup
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(12100729044234960811)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>',
''))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>',
''))
,p_list_template_name=>'Menu Popup'
,p_internal_name=>'MENU_POPUP'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menu", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  apex.actions.addFromMarkup( e );',
'}',
'e.menu({ slide: e.hasClass("js-slide"), iconType: ''fa'', callout: e.hasClass("js-menu-callout")});'))
,p_theme_id=>42
,p_theme_class_id=>20
,p_list_template_before_rows=>'<div id="#PARENT_STATIC_ID#_menu" class="#COMPONENT_CSS_CLASSES#" style="display:none;"><ul>'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'Data ID'
,p_a02_label=>'Disabled (True/False)'
,p_a03_label=>'Hidden (True/False)'
,p_a04_label=>'Title Attribute'
,p_a05_label=>'Shortcut'
,p_reference_id=>3492264004432431646
);
end;
/
prompt --application/shared_components/user_interface/templates/list/navigation_bar
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(12100729638990960811)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item is-active #A02#">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item #A02#">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'    <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_name=>'Navigation Bar'
,p_internal_name=>'NAVIGATION_BAR'
,p_theme_id=>42
,p_theme_class_id=>20
,p_list_template_before_rows=>'<ul class="t-NavigationBar #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'
,p_list_template_after_rows=>'</ul>'
,p_before_sub_list=>'<div class="t-NavigationBar-menu" style="display: none" id="menu_#PARENT_LIST_ITEM_ID#"><ul>'
,p_after_sub_list=>'</ul></div></li>'
,p_sub_list_item_current=>'<li data-current="true" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-current="false" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item is-active #A02#">',
'  <button class="t-Button t-Button--icon t-Button t-Button--header t-Button--navBar js-menuButton" type="button" id="#LIST_ITEM_ID#" data-menu="menu_#LIST_ITEM_ID#">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span><span class="a-Icon icon-down-arrow"></span>',
'  </button>'))
,p_item_templ_noncurr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item #A02#">',
'  <button class="t-Button t-Button--icon t-Button t-Button--header t-Button--navBar js-menuButton" type="button" id="#LIST_ITEM_ID#" data-menu="menu_#LIST_ITEM_ID#">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span><span class="a-Icon icon-down-arrow"></span>',
'  </button>'))
,p_sub_templ_curr_w_child=>'<li data-current="true" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_sub_templ_noncurr_w_child=>'<li data-current="false" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_a01_label=>'Badge Value'
,p_a02_label=>'List  Item CSS Classes'
,p_reference_id=>2846096252961119197
);
end;
/
prompt --application/shared_components/user_interface/templates/list/side_navigation_menu
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(12100730091875960812)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Side Navigation Menu'
,p_internal_name=>'SIDE_NAVIGATION_MENU'
,p_javascript_file_urls=>'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.treeView#MIN#.js?v=#APEX_VERSION#'
,p_javascript_code_onload=>'apex.jQuery(''body'').addClass(''t-PageBody--leftNav'');'
,p_theme_id=>42
,p_theme_class_id=>19
,p_preset_template_options=>'js-navCollapsed--default:t-TreeNav--styleA'
,p_list_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-nav" id="t_Body_nav" role="navigation" aria-label="&APP_TITLE!ATTR.">',
'<div class="t-TreeNav #COMPONENT_CSS_CLASSES#" id="t_TreeNav" data-id="#PARENT_STATIC_ID#_tree" aria-label="&APP_TITLE!ATTR."><ul style="display:none">'))
,p_list_template_after_rows=>'</ul></div></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'ID Attribute'
,p_a02_label=>'Disabled True/False'
,p_a04_label=>'Title'
,p_reference_id=>2466292414354694776
);
end;
/
prompt --application/shared_components/user_interface/templates/list/tabs
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(12100731620329960813)
,p_list_template_current=>'<li class="t-Tabs-item is-active"><a href="#LINK#" class="t-Tabs-link"><span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Tabs-label">#TEXT#</span></a></li>'
,p_list_template_noncurrent=>'<li class="t-Tabs-item"><a href="#LINK#" class="t-Tabs-link"><span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Tabs-label">#TEXT#</span></a></li>'
,p_list_template_name=>'Tabs'
,p_internal_name=>'TABS'
,p_javascript_file_urls=>'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.apexTabs#MIN#.js?v=#APEX_VERSION#'
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-Tabs--simple'
,p_list_template_before_rows=>'<ul class="t-Tabs #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_reference_id=>3288206686691809997
);
end;
/
prompt --application/shared_components/user_interface/templates/list/top_navigation_menu
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(12100733214017960814)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Top Navigation Menu'
,p_internal_name=>'TOP_NAVIGATION_MENU'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("#t_MenuNav", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  if ( apex.actions ) {',
'    apex.actions.addFromMarkup( e );',
'  } else {',
'    apex.debug.warn("Include actions.js to support menu shortcuts");',
'  }',
'}',
'e.menu({',
'  behaveLikeTabs: e.hasClass("js-tabLike"),',
'  menubarShowSubMenuIcon: e.hasClass("js-showSubMenuIcons") || null,',
'  slide: e.hasClass("js-slide"),',
'  menubar: true,',
'  menubarOverflow: true,',
'  callout: e.hasClass("js-menu-callout")',
'});'))
,p_theme_id=>42
,p_theme_class_id=>20
,p_default_template_options=>'js-tabLike'
,p_list_template_before_rows=>'<div class="t-Header-nav-list #COMPONENT_CSS_CLASSES#" id="t_MenuNav"><ul style="display:none">'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'ID Attribute'
,p_a02_label=>'Disabled True / False'
,p_a03_label=>'Hide'
,p_a04_label=>'Title Attribute'
,p_a05_label=>'Shortcut Key'
,p_reference_id=>2525307901300239072
);
end;
/
prompt --application/shared_components/user_interface/templates/list/top_navigation_tabs
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(12100734475296960814)
,p_list_template_current=>'<li class="t-NavTabs-item #A03# is-active" id="#A01#"><a href="#LINK#" class="t-NavTabs-link #A04# " title="#TEXT_ESC_SC#"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-NavTabs-label">#TEXT_ESC_SC#</span><span class'
||'="t-NavTabs-badge #A05#">#A02#</span></a></li>'
,p_list_template_noncurrent=>'<li class="t-NavTabs-item #A03#" id="#A01#"><a href="#LINK#" class="t-NavTabs-link #A04# " title="#TEXT_ESC_SC#"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-NavTabs-label">#TEXT_ESC_SC#</span><span class="t-NavTab'
||'s-badge #A05#">#A02#</span></a></li>'
,p_list_template_name=>'Top Navigation Tabs'
,p_internal_name=>'TOP_NAVIGATION_TABS'
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-NavTabs--inlineLabels-lg:t-NavTabs--displayLabels-sm'
,p_list_template_before_rows=>'<ul class="t-NavTabs #COMPONENT_CSS_CLASSES#" id="#PARENT_STATIC_ID#_navtabs">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'List Item ID'
,p_a02_label=>'Badge Value'
,p_a03_label=>'List Item Class'
,p_a04_label=>'Link Class'
,p_a05_label=>'Badge Class'
,p_reference_id=>1453011561172885578
);
end;
/
prompt --application/shared_components/user_interface/templates/list/wizard_progress
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(12100736029988960815)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-WizardSteps-step is-active" id="#LIST_ITEM_ID#"><div class="t-WizardSteps-wrap" data-link="#LINK#"><span class="t-WizardSteps-marker"></span><span class="t-WizardSteps-label">#TEXT# <span class="t-WizardSteps-labelState"></span></span></'
||'div></li>',
''))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-WizardSteps-step" id="#LIST_ITEM_ID#"><div class="t-WizardSteps-wrap" data-link="#LINK#"><span class="t-WizardSteps-marker"></span><span class="t-WizardSteps-label">#TEXT# <span class="t-WizardSteps-labelState"></span></span></div></li>',
''))
,p_list_template_name=>'Wizard Progress'
,p_internal_name=>'WIZARD_PROGRESS'
,p_javascript_code_onload=>'apex.theme.initWizardProgressBar();'
,p_theme_id=>42
,p_theme_class_id=>17
,p_preset_template_options=>'t-WizardSteps--displayLabels'
,p_list_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<h2 class="u-VisuallyHidden">#CURRENT_PROGRESS#</h2>',
'<ul class="t-WizardSteps #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'))
,p_list_template_after_rows=>'</ul>'
,p_reference_id=>2008702338707394488
);
end;
/
prompt --application/shared_components/user_interface/templates/report/alerts
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(12100689893200960783)
,p_row_template_name=>'Alerts'
,p_internal_name=>'ALERTS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--horizontal t-Alert--colorBG t-Alert--defaultIcons t-Alert--#ALERT_TYPE#" role="alert">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-header">',
'        <h2 class="t-Alert-title">#ALERT_TITLE#</h2>',
'      </div>',
'      <div class="t-Alert-body">',
'        #ALERT_DESC#',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      #ALERT_ACTION#',
'    </div>',
'  </div>',
'</div>'))
,p_row_template_before_rows=>'<div class="t-Alerts #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_alerts" data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</div>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>14
,p_reference_id=>2881456138952347027
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/badge_list
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(12100690092029960784)
,p_row_template_name=>'Badge List'
,p_internal_name=>'BADGE_LIST'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item">',
' <span class="t-BadgeList-wrap u-color">',
'  <span class="t-BadgeList-label">#COLUMN_HEADER#</span>',
'  <span class="t-BadgeList-value">#COLUMN_VALUE#</span>',
' </span>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-BadgeList #COMPONENT_CSS_CLASSES#" data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>6
,p_preset_template_options=>'t-BadgeList--large:t-BadgeList--fixed:t-BadgeList--circular'
,p_reference_id=>2103197159775914759
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/cards
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(12100694001582960786)
,p_row_template_name=>'Cards'
,p_internal_name=>'CARDS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #CARD_MODIFIERS#">',
'  <div class="t-Card">',
'    <a href="#CARD_LINK#" class="t-Card-wrap">',
'      <div class="t-Card-icon u-color #CARD_COLOR#"><span class="t-Icon fa #CARD_ICON#"><span class="t-Card-initials" role="presentation">#CARD_INITIALS#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#CARD_TITLE#</h3><h4 class="t-Card-subtitle">#CARD_SUBTITLE#</h4></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#CARD_TEXT#</div>',
'        <div class="t-Card-info">#CARD_SUBTEXT#</div>',
'      </div>',
'      <span class="t-Card-colorFill u-color #CARD_COLOR#"></span>',
'    </a>',
'  </div>',
'</li>'))
,p_row_template_condition1=>':CARD_LINK is not null'
,p_row_template2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #CARD_MODIFIERS#">',
'  <div class="t-Card">',
'    <div class="t-Card-wrap">',
'      <div class="t-Card-icon u-color #CARD_COLOR#"><span class="t-Icon fa #CARD_ICON#"><span class="t-Card-initials" role="presentation">#CARD_INITIALS#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#CARD_TITLE#</h3><h4 class="t-Card-subtitle">#CARD_SUBTITLE#</h4></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#CARD_TEXT#</div>',
'        <div class="t-Card-info">#CARD_SUBTEXT#</div>',
'      </div>',
'      <span class="t-Card-colorFill u-color #CARD_COLOR#"></span>',
'    </div>',
'  </div>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-Cards #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_cards" data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-Cards--animColorFill:t-Cards--3cols:t-Cards--basic'
,p_reference_id=>2973535649510699732
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/comments
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(12100699419252960790)
,p_row_template_name=>'Comments'
,p_internal_name=>'COMMENTS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Comments-item #COMMENT_MODIFIERS#">',
'    <div class="t-Comments-icon">',
'        <div class="t-Comments-userIcon #ICON_MODIFIER#" aria-hidden="true">#USER_ICON#</div>',
'    </div>',
'    <div class="t-Comments-body">',
'        <div class="t-Comments-info">',
'            #USER_NAME# <span class="t-Comments-date">#COMMENT_DATE#</span> <span class="t-Comments-actions">#ACTIONS#</span>',
'        </div>',
'        <div class="t-Comments-comment">',
'            #COMMENT_TEXT##ATTRIBUTE_1##ATTRIBUTE_2##ATTRIBUTE_3##ATTRIBUTE_4#',
'        </div>',
'    </div>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-Comments #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_report" data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>',
''))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-Comments--chat'
,p_reference_id=>2611722012730764232
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/content_row
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(12100700647906960791)
,p_row_template_name=>'Content Row'
,p_internal_name=>'CONTENT_ROW'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-ContentRow-item #ITEM_CLASSES#">',
'  <div class="t-ContentRow-wrap">',
'    <div class="t-ContentRow-selection">#SELECTION#</div>',
'    <div class="t-ContentRow-iconWrap">',
'      <span class="t-ContentRow-icon #ICON_CLASS#">#ICON_HTML#</span>',
'    </div>',
'    <div class="t-ContentRow-body">',
'      <div class="t-ContentRow-content">',
'        <h3 class="t-ContentRow-title">#TITLE#</h3>',
'        <div class="t-ContentRow-description">#DESCRIPTION#</div>',
'      </div>',
'      <div class="t-ContentRow-misc">#MISC#</div>',
'      <div class="t-ContentRow-actions">#ACTIONS#</div>',
'    </div>',
'  </div>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-ContentRow #COMPONENT_CSS_CLASSES#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'#PAGINATION#'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>4
,p_reference_id=>1797843454948280151
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/media_list
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(12100703828411960793)
,p_row_template_name=>'Media List'
,p_internal_name=>'MEDIA_LIST'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MediaList-item #LIST_CLASS#">',
'    <a href="#LINK#" class="t-MediaList-itemWrap #LINK_CLASS#" #LINK_ATTR#>',
'        <div class="t-MediaList-iconWrap">',
'            <span class="t-MediaList-icon u-color #ICON_COLOR_CLASS#"><span class="t-Icon #ICON_CLASS#"></span></span>',
'        </div>',
'        <div class="t-MediaList-body">',
'            <h3 class="t-MediaList-title">#LIST_TITLE#</h3>',
'            <p class="t-MediaList-desc">#LIST_TEXT#</p>',
'        </div>',
'        <div class="t-MediaList-badgeWrap">',
'            <span class="t-MediaList-badge">#LIST_BADGE#</span>',
'        </div>',
'    </a>',
'</li>'))
,p_row_template_condition1=>':LINK is not null'
,p_row_template2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MediaList-item #LIST_CLASS#">',
'    <div class="t-MediaList-itemWrap #LINK_CLASS#" #LINK_ATTR#>',
'        <div class="t-MediaList-iconWrap">',
'            <span class="t-MediaList-icon u-color #ICON_COLOR_CLASS#"><span class="t-Icon #ICON_CLASS#"></span></span>',
'        </div>',
'        <div class="t-MediaList-body">',
'            <h3 class="t-MediaList-title">#LIST_TITLE#</h3>',
'            <p class="t-MediaList-desc">#LIST_TEXT#</p>',
'        </div>',
'        <div class="t-MediaList-badgeWrap">',
'            <span class="t-MediaList-badge">#LIST_BADGE#</span>',
'        </div>',
'    </div>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-MediaList #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_report" data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>1
,p_default_template_options=>'t-MediaList--showDesc:t-MediaList--showIcons'
,p_preset_template_options=>'t-MediaList--stack'
,p_reference_id=>2092157460408299055
,p_translate_this_template=>'N'
,p_row_template_comment=>' (SELECT link_text, link_target, detail1, detail2, last_modified)'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/search_results
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(12100706880458960795)
,p_row_template_name=>'Search Results'
,p_internal_name=>'SEARCH_RESULTS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition1=>':LABEL_02 is null'
,p_row_template2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition2=>':LABEL_03 is null'
,p_row_template3=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'      <span class="t-SearchResults-misc">#LABEL_03#: #VALUE_03#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition3=>':LABEL_04 is null'
,p_row_template4=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'      <span class="t-SearchResults-misc">#LABEL_03#: #VALUE_03#</span>',
'      <span class="t-SearchResults-misc">#LABEL_04#: #VALUE_04#</span>',
'    </div>',
'  </li>'))
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-SearchResults #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_report" data-region-id="#REGION_STATIC_ID#">',
'<ul class="t-SearchResults-list">'))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>',
'</div>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'NOT_CONDITIONAL'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070913431524059316
,p_translate_this_template=>'N'
,p_row_template_comment=>' (SELECT link_text, link_target, detail1, detail2, last_modified)'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/standard
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(12100707062250960795)
,p_row_template_name=>'Standard'
,p_internal_name=>'STANDARD'
,p_row_template1=>'<td class="t-Report-cell" #ALIGNMENT# headers="#COLUMN_HEADER_NAME#">#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Report #COMPONENT_CSS_CLASSES#" id="report_#REGION_STATIC_ID#" #REPORT_ATTRIBUTES# data-region-id="#REGION_STATIC_ID#">',
'  <div class="t-Report-wrap">',
'    <table class="t-Report-pagination" role="presentation">#TOP_PAGINATION#</table>',
'    <div class="t-Report-tableWrap">',
'    <table class="t-Report-report" aria-label="#REGION_TITLE#">'))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'      </tbody>',
'    </table>',
'    </div>',
'    <div class="t-Report-links">#EXTERNAL_LINK##CSV_LINK#</div>',
'    <table class="t-Report-pagination t-Report-pagination--bottom" role="presentation">#PAGINATION#</table>',
'  </div>',
'</div>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_before_column_heading=>'<thead>'
,p_column_heading_template=>'<th class="t-Report-colHead" #ALIGNMENT# id="#COLUMN_HEADER_NAME#" #COLUMN_WIDTH#>#COLUMN_HEADER#</th>'
,p_after_column_heading=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</thead>',
'<tbody>'))
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>4
,p_preset_template_options=>'t-Report--altRowsDefault:t-Report--rowHighlight'
,p_reference_id=>2537207537838287671
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(12100707062250960795)
,p_row_template_before_first=>'<tr>'
,p_row_template_after_last=>'</tr>'
);
exception when others then null;
end;
end;
/
prompt --application/shared_components/user_interface/templates/report/timeline
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(12100709681714960797)
,p_row_template_name=>'Timeline'
,p_internal_name=>'TIMELINE'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Timeline-item #EVENT_MODIFIERS#" #EVENT_ATTRIBUTES#>',
'  <div class="t-Timeline-wrap">',
'    <div class="t-Timeline-user">',
'      <div class="t-Timeline-avatar #USER_COLOR#">',
'        #USER_AVATAR#',
'      </div>',
'      <div class="t-Timeline-userinfo">',
'        <span class="t-Timeline-username">#USER_NAME#</span>',
'        <span class="t-Timeline-date">#EVENT_DATE#</span>',
'      </div>',
'    </div>',
'    <div class="t-Timeline-content">',
'      <div class="t-Timeline-typeWrap">',
'        <div class="t-Timeline-type #EVENT_STATUS#">',
'          <span class="t-Icon #EVENT_ICON#"></span>',
'          <span class="t-Timeline-typename">#EVENT_TYPE#</span>',
'        </div>',
'      </div>',
'      <div class="t-Timeline-body">',
'        <h3 class="t-Timeline-title">#EVENT_TITLE#</h3>',
'        <p class="t-Timeline-desc">#EVENT_DESC#</p>',
'      </div>',
'    </div>',
'  </div>',
'</li>'))
,p_row_template_condition1=>':EVENT_LINK is null'
,p_row_template2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Timeline-item #EVENT_MODIFIERS#" #EVENT_ATTRIBUTES#>',
'  <a href="#EVENT_LINK#" class="t-Timeline-wrap">',
'    <div class="t-Timeline-user">',
'      <div class="t-Timeline-avatar #USER_COLOR#">',
'        #USER_AVATAR#',
'      </div>',
'      <div class="t-Timeline-userinfo">',
'        <span class="t-Timeline-username">#USER_NAME#</span>',
'        <span class="t-Timeline-date">#EVENT_DATE#</span>',
'      </div>',
'    </div>',
'    <div class="t-Timeline-content">',
'      <div class="t-Timeline-typeWrap">',
'        <div class="t-Timeline-type #EVENT_STATUS#">',
'          <span class="t-Icon #EVENT_ICON#"></span>',
'          <span class="t-Timeline-typename">#EVENT_TYPE#</span>',
'        </div>',
'      </div>',
'      <div class="t-Timeline-body">',
'        <h3 class="t-Timeline-title">#EVENT_TITLE#</h3>',
'        <p class="t-Timeline-desc">#EVENT_DESC#</p>',
'      </div>',
'    </div>',
'  </a>',
'</li>'))
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-Timeline #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_timeline" data-region-id="#REGION_STATIC_ID#">',
''))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_reference_id=>1513373588340069864
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/value_attribute_pairs_column
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(12100710018397960797)
,p_row_template_name=>'Value Attribute Pairs - Column'
,p_internal_name=>'VALUE_ATTRIBUTE_PAIRS_COLUMN'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<dt class="t-AVPList-label">',
'  #COLUMN_HEADER#',
'</dt>',
'<dd class="t-AVPList-value">',
'  #COLUMN_VALUE#',
'</dd>'))
,p_row_template_before_rows=>'<dl class="t-AVPList #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</dl>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>6
,p_preset_template_options=>'t-AVPList--leftAligned'
,p_reference_id=>2099068636272681754
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/value_attribute_pairs_row
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(12100712025198960799)
,p_row_template_name=>'Value Attribute Pairs - Row'
,p_internal_name=>'VALUE_ATTRIBUTE_PAIRS_ROW'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<dt class="t-AVPList-label">',
'  #1#',
'</dt>',
'<dd class="t-AVPList-value">',
'  #2#',
'</dd>'))
,p_row_template_before_rows=>'<dl class="t-AVPList #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#" data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</dl>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-AVPList--leftAligned'
,p_reference_id=>2099068321678681753
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/hidden
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(12100737414683960816)
,p_template_name=>'Hidden'
,p_internal_name=>'HIDDEN'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer t-Form-labelContainer--hiddenLabel col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label u-VisuallyHidden">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</label>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--hiddenLabel rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT##HELP_TEMPLATE#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>13
,p_reference_id=>2039339104148359505
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/optional
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(12100737532414960817)
,p_template_name=>'Optional'
,p_internal_name=>'OPTIONAL'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</label>',
'</div>',
''))
,p_before_item=>'<div class="t-Form-fieldContainer rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT##HELP_TEMPLATE#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>3
,p_reference_id=>2317154212072806530
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/optional_above
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(12100737618588960817)
,p_template_name=>'Optional - Above'
,p_internal_name=>'OPTIONAL_ABOVE'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</label>#HELP_TEMPLATE#',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--stacked #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>3
,p_reference_id=>3030114864004968404
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/optional_floating
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(12100737709570960817)
,p_template_name=>'Optional - Floating'
,p_internal_name=>'OPTIONAL_FLOATING'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</label>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--floatingLabel #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT##HELP_TEMPLATE#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>3
,p_reference_id=>1607675164727151865
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/required
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(12100737866579960817)
,p_template_name=>'Required'
,p_internal_name=>'REQUIRED'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'  <label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
' <span class="u-VisuallyHidden">(#VALUE_REQUIRED#)</span></label>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer is-required rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT##HELP_TEMPLATE#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>4
,p_reference_id=>2525313812251712801
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/required_above
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(12100737912390960817)
,p_template_name=>'Required - Above'
,p_internal_name=>'REQUIRED_ABOVE'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'  <label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
' <span class="u-VisuallyHidden">(#VALUE_REQUIRED#)</span></label> #HELP_TEMPLATE#',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--stacked is-required #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>4
,p_reference_id=>3030115129444970113
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/required_floating
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(12100738035942960817)
,p_template_name=>'Required - Floating'
,p_internal_name=>'REQUIRED_FLOATING'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'  <label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
' <span class="u-VisuallyHidden">(#VALUE_REQUIRED#)</span></label>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--floatingLabel is-required #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT##HELP_TEMPLATE#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>4
,p_reference_id=>1607675344320152883
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/breadcrumb/breadcrumb
begin
wwv_flow_api.create_menu_template(
 p_id=>wwv_flow_api.id(12100740366246960819)
,p_name=>'Breadcrumb'
,p_internal_name=>'BREADCRUMB'
,p_before_first=>'<ul class="t-Breadcrumb #COMPONENT_CSS_CLASSES#">'
,p_current_page_option=>'<li class="t-Breadcrumb-item is-active"><h1 class="t-Breadcrumb-label">#NAME#</h1></li>'
,p_non_current_page_option=>'<li class="t-Breadcrumb-item"><a href="#LINK#" class="t-Breadcrumb-label">#NAME#</a></li>'
,p_after_last=>'</ul>'
,p_max_levels=>6
,p_start_with_node=>'PARENT_TO_LEAF'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070916542570059325
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/popuplov
begin
wwv_flow_api.create_popup_lov_template(
 p_id=>wwv_flow_api.id(12100740570366960819)
,p_page_name=>'winlov'
,p_page_title=>'Search Dialog'
,p_page_html_head=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html lang="&BROWSER_LANGUAGE.">',
'<head>',
'<title>#TITLE#</title>',
'#APEX_CSS#',
'#THEME_CSS#',
'#THEME_STYLE_CSS#',
'#FAVICONS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'<meta name="viewport" content="width=device-width,initial-scale=1.0" />',
'</head>'))
,p_page_body_attr=>'onload="first_field()" class="t-Page t-Page--popupLOV"'
,p_before_field_text=>'<div class="t-PopupLOV-actions t-Form--large">'
,p_filter_width=>'20'
,p_filter_max_width=>'100'
,p_filter_text_attr=>'class="apex-item-text"'
,p_find_button_text=>'Search'
,p_find_button_attr=>'class="t-Button t-Button--hot t-Button--padLeft"'
,p_close_button_text=>'Close'
,p_close_button_attr=>'class="t-Button u-pullRight"'
,p_next_button_text=>'Next &gt;'
,p_next_button_attr=>'class="t-Button t-PopupLOV-button"'
,p_prev_button_text=>'&lt; Previous'
,p_prev_button_attr=>'class="t-Button t-PopupLOV-button"'
,p_after_field_text=>'</div>'
,p_scrollbars=>'1'
,p_resizable=>'1'
,p_width=>'380'
,p_result_row_x_of_y=>'<div class="t-PopupLOV-pagination">Row(s) #FIRST_ROW# - #LAST_ROW#</div>'
,p_result_rows_per_pg=>100
,p_before_result_set=>'<div class="t-PopupLOV-links">'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>2885398517835871876
,p_translate_this_template=>'N'
,p_after_result_set=>'</div>'
);
end;
/
prompt --application/shared_components/user_interface/templates/calendar/calendar
begin
wwv_flow_api.create_calendar_template(
 p_id=>wwv_flow_api.id(12100740452223960819)
,p_cal_template_name=>'Calendar'
,p_internal_name=>'CALENDAR'
,p_day_of_week_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<th id="#DY#" scope="col" class="t-ClassicCalendar-dayColumn">',
'  <span class="visible-md visible-lg">#IDAY#</span>',
'  <span class="hidden-md hidden-lg">#IDY#</span>',
'</th>'))
,p_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar">',
'<h1 class="t-ClassicCalendar-title">#IMONTH# #YYYY#</h1>'))
,p_month_open_format=>'<table class="t-ClassicCalendar-calendar" cellpadding="0" cellspacing="0" border="0" aria-label="#IMONTH# #YYYY#">'
,p_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>',
''))
,p_day_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_day_close_format=>'</td>'
,p_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_weekend_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_weekend_open_format=>'<td class="t-ClassicCalendar-day is-weekend" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_weekend_close_format=>'</td>'
,p_nonday_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_nonday_open_format=>'<td class="t-ClassicCalendar-day is-inactive" headers="#DY#">'
,p_nonday_close_format=>'</td>'
,p_week_open_format=>'<tr>'
,p_week_close_format=>'</tr> '
,p_daily_title_format=>'<table cellspacing="0" cellpadding="0" border="0" summary="" class="t1DayCalendarHolder"> <tr> <td class="t1MonthTitle">#IMONTH# #DD#, #YYYY#</td> </tr> <tr> <td>'
,p_daily_open_format=>'<tr>'
,p_daily_close_format=>'</tr>'
,p_weekly_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--weekly">',
'<h1 class="t-ClassicCalendar-title">#WTITLE#</h1>'))
,p_weekly_day_of_week_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<th scope="col" class="t-ClassicCalendar-dayColumn" id="#DY#">',
'  <span class="visible-md visible-lg">#DD# #IDAY#</span>',
'  <span class="hidden-md hidden-lg">#DD# #IDY#</span>',
'</th>'))
,p_weekly_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" aria-label="#CALENDAR_TITLE# #START_DL# - #END_DL#" class="t-ClassicCalendar-calendar">'
,p_weekly_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_weekly_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_day_close_format=>'</div></td>'
,p_weekly_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_weekend_open_format=>'<td class="t-ClassicCalendar-day is-weekend" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_weekend_close_format=>'</div></td>'
,p_weekly_time_open_format=>'<th scope="row" class="t-ClassicCalendar-day t-ClassicCalendar-timeCol">'
,p_weekly_time_close_format=>'</th>'
,p_weekly_time_title_format=>'#TIME#'
,p_weekly_hour_open_format=>'<tr>'
,p_weekly_hour_close_format=>'</tr>'
,p_daily_day_of_week_format=>'<th scope="col" id="#DY#" class="t-ClassicCalendar-dayColumn">#IDAY#</th>'
,p_daily_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--daily">',
'<h1 class="t-ClassicCalendar-title">#IMONTH# #DD#, #YYYY#</h1>'))
,p_daily_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" aria-label="#CALENDAR_TITLE# #START_DL#" class="t-ClassicCalendar-calendar">'
,p_daily_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_daily_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_daily_day_close_format=>'</div></td>'
,p_daily_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_daily_time_open_format=>'<th scope="row" class="t-ClassicCalendar-day t-ClassicCalendar-timeCol" id="#TIME#">'
,p_daily_time_close_format=>'</th>'
,p_daily_time_title_format=>'#TIME#'
,p_daily_hour_open_format=>'<tr>'
,p_daily_hour_close_format=>'</tr>'
,p_cust_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar">',
'<h1 class="t-ClassicCalendar-title">#IMONTH# #YYYY#</h1>'))
,p_cust_day_of_week_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<th id="#DY#" scope="col" class="t-ClassicCalendar-dayColumn">',
'  <span class="visible-md visible-lg">#IDAY#</span>',
'  <span class="hidden-md hidden-lg">#IDY#</span>',
'</th>'))
,p_cust_month_open_format=>'<table class="t-ClassicCalendar-calendar" cellpadding="0" cellspacing="0" border="0" aria-label="#IMONTH# #YYYY#">'
,p_cust_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_cust_week_open_format=>'<tr>'
,p_cust_week_close_format=>'</tr> '
,p_cust_day_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_cust_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#">'
,p_cust_day_close_format=>'</td>'
,p_cust_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#">'
,p_cust_nonday_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_cust_nonday_open_format=>'<td class="t-ClassicCalendar-day is-inactive" headers="#DY#">'
,p_cust_nonday_close_format=>'</td>'
,p_cust_weekend_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_cust_weekend_open_format=>'<td class="t-ClassicCalendar-day is-weekend" headers="#DY#">'
,p_cust_weekend_close_format=>'</td>'
,p_cust_hour_open_format=>'<tr>'
,p_cust_hour_close_format=>'</tr>'
,p_cust_time_title_format=>'#TIME#'
,p_cust_time_open_format=>'<th scope="row" class="t-ClassicCalendar-day t-ClassicCalendar-timeCol">'
,p_cust_time_close_format=>'</th>'
,p_cust_wk_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar">',
'<h1 class="t-ClassicCalendar-title">#WTITLE#</h1>'))
,p_cust_wk_day_of_week_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<th scope="col" class="t-ClassicCalendar-dayColumn" id="#DY#">',
'  <span class="visible-md visible-lg">#DD# #IDAY#</span>',
'  <span class="hidden-md hidden-lg">#DD# #IDY#</span>',
'</th>'))
,p_cust_wk_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL# - #END_DL#" class="t-ClassicCalendar-calendar">'
,p_cust_wk_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_cust_wk_week_open_format=>'<tr>'
,p_cust_wk_week_close_format=>'</tr> '
,p_cust_wk_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_cust_wk_day_close_format=>'</div></td>'
,p_cust_wk_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_cust_wk_weekend_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#">'
,p_cust_wk_weekend_close_format=>'</td>'
,p_agenda_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--list">',
'  <div class="t-ClassicCalendar-title">#IMONTH# #YYYY#</div>',
'  <ul class="t-ClassicCalendar-list">',
'    #DAYS#',
'  </ul>',
'</div>'))
,p_agenda_past_day_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-past">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_today_day_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-today">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_future_day_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-future">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_past_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-past">#DATA#</li>'
,p_agenda_today_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-today">#DATA#</li>'
,p_agenda_future_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-future">#DATA#</li>'
,p_month_data_format=>'#DAYS#'
,p_month_data_entry_format=>'<span class="t-ClassicCalendar-event">#DATA#</span>'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070916747979059326
);
end;
/
prompt --application/shared_components/user_interface/themes
begin
wwv_flow_api.create_theme(
 p_id=>wwv_flow_api.id(12100741730562960823)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_ui_type_name=>'DESKTOP'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4070917134413059350
,p_is_locked=>false
,p_default_page_template=>wwv_flow_api.id(12100643005416960753)
,p_default_dialog_template=>wwv_flow_api.id(12100638718555960750)
,p_error_template=>wwv_flow_api.id(12100630806966960745)
,p_printer_friendly_template=>wwv_flow_api.id(12100643005416960753)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_api.id(12100630806966960745)
,p_default_button_template=>wwv_flow_api.id(12100738882918960818)
,p_default_region_template=>wwv_flow_api.id(12100678190315960776)
,p_default_chart_template=>wwv_flow_api.id(12100678190315960776)
,p_default_form_template=>wwv_flow_api.id(12100678190315960776)
,p_default_reportr_template=>wwv_flow_api.id(12100678190315960776)
,p_default_tabform_template=>wwv_flow_api.id(12100678190315960776)
,p_default_wizard_template=>wwv_flow_api.id(12100678190315960776)
,p_default_menur_template=>wwv_flow_api.id(12100687582209960782)
,p_default_listr_template=>wwv_flow_api.id(12100678190315960776)
,p_default_irr_template=>wwv_flow_api.id(12100676227768960775)
,p_default_report_template=>wwv_flow_api.id(12100707062250960795)
,p_default_label_template=>wwv_flow_api.id(12100737709570960817)
,p_default_menu_template=>wwv_flow_api.id(12100740366246960819)
,p_default_calendar_template=>wwv_flow_api.id(12100740452223960819)
,p_default_list_template=>wwv_flow_api.id(12100723423560960807)
,p_default_nav_list_template=>wwv_flow_api.id(12100733214017960814)
,p_default_top_nav_list_temp=>wwv_flow_api.id(12100733214017960814)
,p_default_side_nav_list_temp=>wwv_flow_api.id(12100730091875960812)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_api.id(12100651778089960760)
,p_default_dialogr_template=>wwv_flow_api.id(12100650718659960759)
,p_default_option_label=>wwv_flow_api.id(12100737709570960817)
,p_default_required_label=>wwv_flow_api.id(12100738035942960817)
,p_default_page_transition=>'NONE'
,p_default_popup_transition=>'NONE'
,p_default_navbar_list_template=>wwv_flow_api.id(12100729638990960811)
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#IMAGE_PREFIX#themes/theme_42/1.4/')
,p_files_version=>64
,p_icon_library=>'FONTAPEX'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#THEME_IMAGES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_IMAGES#css/Core#MIN#.css?v=#APEX_VERSION#'
);
end;
/
prompt --application/shared_components/user_interface/theme_style
begin
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(12100740782593960820)
,p_theme_id=>42
,p_name=>'Vista'
,p_css_file_urls=>'#THEME_IMAGES#css/Vista#MIN#.css?v=#APEX_VERSION#'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_read_only=>true
,p_reference_id=>4007676303523989775
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(12100740957540960820)
,p_theme_id=>42
,p_name=>'Vita'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>true
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita.less'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>2719875314571594493
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(12100741155489960820)
,p_theme_id=>42
,p_name=>'Vita - Dark'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita-Dark.less'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita-Dark#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>3543348412015319650
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(12100741305698960820)
,p_theme_id=>42
,p_name=>'Vita - Red'
,p_is_current=>true
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita-Red.less'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita-Red#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>1938457712423918173
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(12100741530806960820)
,p_theme_id=>42
,p_name=>'Vita - Slate'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita-Slate.less'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita-Slate#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>3291983347983194966
);
end;
/
prompt --application/shared_components/user_interface/theme_files
begin
null;
end;
/
prompt --application/shared_components/user_interface/theme_display_points
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_opt_groups
begin
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12100632003205960746)
,p_theme_id=>42
,p_name=>'PAGE_BACKGROUND'
,p_display_name=>'Page Background'
,p_display_sequence=>20
,p_template_types=>'PAGE'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12100632811968960747)
,p_theme_id=>42
,p_name=>'PAGE_LAYOUT'
,p_display_name=>'Page Layout'
,p_display_sequence=>10
,p_template_types=>'PAGE'
,p_null_text=>'Floating (Default)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12100647616741960757)
,p_theme_id=>42
,p_name=>'ALERT_TITLE'
,p_display_name=>'Alert Title'
,p_display_sequence=>40
,p_template_types=>'REGION'
,p_help_text=>'Determines how the title of the alert is displayed.'
,p_null_text=>'Visible - Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12100648202628960758)
,p_theme_id=>42
,p_name=>'ALERT_ICONS'
,p_display_name=>'Alert Icons'
,p_display_sequence=>2
,p_template_types=>'REGION'
,p_help_text=>'Sets how icons are handled for the Alert Region.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12100648649597960758)
,p_theme_id=>42
,p_name=>'ALERT_TYPE'
,p_display_name=>'Alert Type'
,p_display_sequence=>3
,p_template_types=>'REGION'
,p_help_text=>'Sets the type of alert which can be used to determine the icon, icon color, and the background color.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12100649228315960758)
,p_theme_id=>42
,p_name=>'ALERT_DISPLAY'
,p_display_name=>'Alert Display'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the layout of the Alert Region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12100652660663960761)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>40
,p_template_types=>'REGION'
,p_help_text=>'Determines how the region is styled. Use the "Remove Borders" template option to remove the region''s borders and shadows.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12100653036086960761)
,p_theme_id=>42
,p_name=>'BODY_PADDING'
,p_display_name=>'Body Padding'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the Region Body padding for the region.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12100654817294960762)
,p_theme_id=>42
,p_name=>'BODY_HEIGHT'
,p_display_name=>'Body Height'
,p_display_sequence=>10
,p_template_types=>'REGION'
,p_help_text=>'Sets the Region Body height. You can also specify a custom height by modifying the Region''s CSS Classes and using the height helper classes "i-hXXX" where XXX is any increment of 10 from 100 to 800.'
,p_null_text=>'Auto - Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12100655854563960763)
,p_theme_id=>42
,p_name=>'TIMER'
,p_display_name=>'Timer'
,p_display_sequence=>2
,p_template_types=>'REGION'
,p_help_text=>'Sets the timer for when to automatically navigate to the next region within the Carousel Region.'
,p_null_text=>'No Timer'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12100657248421960763)
,p_theme_id=>42
,p_name=>'ACCENT'
,p_display_name=>'Accent'
,p_display_sequence=>30
,p_template_types=>'REGION'
,p_help_text=>'Set the Region''s accent. This accent corresponds to a Theme-Rollable color and sets the background of the Region''s Header.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12100658406262960764)
,p_theme_id=>42
,p_name=>'ANIMATION'
,p_display_name=>'Animation'
,p_display_sequence=>10
,p_template_types=>'REGION'
,p_help_text=>'Sets the animation when navigating within the Carousel Region.'
,p_null_text=>'Fade'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12100659037896960764)
,p_theme_id=>42
,p_name=>'BODY_OVERFLOW'
,p_display_name=>'Body Overflow'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Determines the scroll behavior when the region contents are larger than their container.'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12100659439326960764)
,p_theme_id=>42
,p_name=>'HEADER'
,p_display_name=>'Header'
,p_display_sequence=>20
,p_template_types=>'REGION'
,p_help_text=>'Determines the display of the Region Header which also contains the Region Title.'
,p_null_text=>'Visible - Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12100662886085960767)
,p_theme_id=>42
,p_name=>'DEFAULT_STATE'
,p_display_name=>'Default State'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the default state of the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12100664630767960768)
,p_theme_id=>42
,p_name=>'COLLAPSIBLE_ICON_POSITION'
,p_display_name=>'Collapsible Icon Position'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Determines the position of the expand and collapse toggle for the region.'
,p_null_text=>'Start'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12100665288895960768)
,p_theme_id=>42
,p_name=>'COLLAPSIBLE_BUTTON_ICONS'
,p_display_name=>'Collapsible Button Icons'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Determines which arrows to use to represent the icons for the collapse and expand button.'
,p_null_text=>'Arrows'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12100666851709960769)
,p_theme_id=>42
,p_name=>'REGION_TITLE'
,p_display_name=>'Region Title'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the source of the Title Bar region''s title.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12100667670194960770)
,p_theme_id=>42
,p_name=>'BODY_STYLE'
,p_display_name=>'Body Style'
,p_display_sequence=>20
,p_template_types=>'REGION'
,p_help_text=>'Controls the display of the region''s body container.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12100669582665960771)
,p_theme_id=>42
,p_name=>'DISPLAY_ICON'
,p_display_name=>'Display Icon'
,p_display_sequence=>50
,p_template_types=>'REGION'
,p_help_text=>'Display the Hero Region icon.'
,p_null_text=>'Yes (Default)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12100669905647960771)
,p_theme_id=>42
,p_name=>'ICON_SHAPE'
,p_display_name=>'Icon Shape'
,p_display_sequence=>60
,p_template_types=>'REGION'
,p_help_text=>'Determines the shape of the icon.'
,p_null_text=>'Rounded Corners'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12100671402454960772)
,p_theme_id=>42
,p_name=>'DIALOG_SIZE'
,p_display_name=>'Dialog Size'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12100674992928960774)
,p_theme_id=>42
,p_name=>'CALLOUT_POSITION'
,p_display_name=>'Callout Position'
,p_display_sequence=>10
,p_template_types=>'REGION'
,p_help_text=>'Determines where the callout for the popup will be positioned relative to its parent.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12100677494780960775)
,p_theme_id=>42
,p_name=>'LOGIN_HEADER'
,p_display_name=>'Login Header'
,p_display_sequence=>10
,p_template_types=>'REGION'
,p_help_text=>'Controls the display of the Login region header.'
,p_null_text=>'Icon and Title (Default)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12100686094368960781)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12100686448893960781)
,p_theme_id=>42
,p_name=>'TABS_SIZE'
,p_display_name=>'Tabs Size'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12100686896300960781)
,p_theme_id=>42
,p_name=>'TAB_STYLE'
,p_display_name=>'Tab Style'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12100689138715960783)
,p_theme_id=>42
,p_name=>'HIDE_STEPS_FOR'
,p_display_name=>'Hide Steps For'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12100690347594960784)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Determines the overall style for the component.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12100690709932960784)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>30
,p_template_types=>'REPORT'
,p_help_text=>'Determines the layout of Cards in the report.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12100692520236960785)
,p_theme_id=>42
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12100694916219960787)
,p_theme_id=>42
,p_name=>'ANIMATION'
,p_display_name=>'Animation'
,p_display_sequence=>70
,p_template_types=>'REPORT'
,p_help_text=>'Sets the hover and focus animation.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12100696121891960788)
,p_theme_id=>42
,p_name=>'BODY_TEXT'
,p_display_name=>'Body Text'
,p_display_sequence=>40
,p_template_types=>'REPORT'
,p_help_text=>'Determines the height of the card body.'
,p_null_text=>'Auto'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12100696976234960788)
,p_theme_id=>42
,p_name=>'ICONS'
,p_display_name=>'Icons'
,p_display_sequence=>20
,p_template_types=>'REPORT'
,p_help_text=>'Controls how to handle icons in the report.'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12100698546974960789)
,p_theme_id=>42
,p_name=>'ICON_SHAPE'
,p_display_name=>'Icon Shape'
,p_display_sequence=>60
,p_template_types=>'REPORT'
,p_help_text=>'Determines the shape of the icon.'
,p_null_text=>'Circle'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12100699715121960790)
,p_theme_id=>42
,p_name=>'COMMENTS_STYLE'
,p_display_name=>'Comments Style'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Determines the style in which comments are displayed.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12100700950069960791)
,p_theme_id=>42
,p_name=>'CONTENT_ALIGNMENT'
,p_display_name=>'Content Alignment'
,p_display_sequence=>90
,p_template_types=>'REPORT'
,p_null_text=>'Center (Default)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12100701366067960792)
,p_theme_id=>42
,p_name=>'COL_ACTIONS'
,p_display_name=>'Actions'
,p_display_sequence=>150
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12100701725802960792)
,p_theme_id=>42
,p_name=>'COL_CONTENT_DESCRIPTION'
,p_display_name=>'Description'
,p_display_sequence=>130
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12100702104567960792)
,p_theme_id=>42
,p_name=>'COL_ICON'
,p_display_name=>'Icon'
,p_display_sequence=>110
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12100702586307960792)
,p_theme_id=>42
,p_name=>'COL_MISC'
,p_display_name=>'Misc'
,p_display_sequence=>140
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12100702990574960793)
,p_theme_id=>42
,p_name=>'COL_SELECTION'
,p_display_name=>'Selection'
,p_display_sequence=>100
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12100703304441960793)
,p_theme_id=>42
,p_name=>'COL_CONTENT_TITLE'
,p_display_name=>'Title'
,p_display_sequence=>120
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12100705562319960794)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>35
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12100707314524960795)
,p_theme_id=>42
,p_name=>'ALTERNATING_ROWS'
,p_display_name=>'Alternating Rows'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Shades alternate rows in the report with slightly different background colors.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12100707715621960795)
,p_theme_id=>42
,p_name=>'REPORT_BORDER'
,p_display_name=>'Report Border'
,p_display_sequence=>30
,p_template_types=>'REPORT'
,p_help_text=>'Controls the display of the Report''s borders.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12100708511523960796)
,p_theme_id=>42
,p_name=>'ROW_HIGHLIGHTING'
,p_display_name=>'Row Highlighting'
,p_display_sequence=>20
,p_template_types=>'REPORT'
,p_help_text=>'Determines whether you want the row to be highlighted on hover.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12100710330768960797)
,p_theme_id=>42
,p_name=>'LABEL_WIDTH'
,p_display_name=>'Label Width'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12100714135628960802)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>10
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12100714544201960802)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>30
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12100716365394960803)
,p_theme_id=>42
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>70
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12100718733847960805)
,p_theme_id=>42
,p_name=>'ANIMATION'
,p_display_name=>'Animation'
,p_display_sequence=>80
,p_template_types=>'LIST'
,p_help_text=>'Sets the hover and focus animation.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12100719939745960805)
,p_theme_id=>42
,p_name=>'BODY_TEXT'
,p_display_name=>'Body Text'
,p_display_sequence=>40
,p_template_types=>'LIST'
,p_help_text=>'Determines the height of the card body.'
,p_null_text=>'Auto'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12100720719858960806)
,p_theme_id=>42
,p_name=>'ICONS'
,p_display_name=>'Icons'
,p_display_sequence=>20
,p_template_types=>'LIST'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12100722354508960807)
,p_theme_id=>42
,p_name=>'ICON_SHAPE'
,p_display_name=>'Icon Shape'
,p_display_sequence=>60
,p_template_types=>'LIST'
,p_help_text=>'Determines the shape of the icon.'
,p_null_text=>'Circle'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12100724506091960808)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>30
,p_template_types=>'LIST'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12100726714221960810)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>1
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12100730581064960812)
,p_theme_id=>42
,p_name=>'COLLAPSE_STYLE'
,p_display_name=>'Collapse Mode'
,p_display_sequence=>30
,p_template_types=>'LIST'
,p_null_text=>'Icon (Default)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12100734764895960814)
,p_theme_id=>42
,p_name=>'MOBILE'
,p_display_name=>'Mobile'
,p_display_sequence=>100
,p_template_types=>'LIST'
,p_help_text=>'Determines the display for a mobile-sized screen'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12100735134368960815)
,p_theme_id=>42
,p_name=>'DESKTOP'
,p_display_name=>'Desktop'
,p_display_sequence=>90
,p_template_types=>'LIST'
,p_help_text=>'Determines the display for a desktop-sized screen'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12100736540295960816)
,p_theme_id=>42
,p_name=>'LABEL_DISPLAY'
,p_display_name=>'Label Display'
,p_display_sequence=>50
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12100738375892960817)
,p_theme_id=>42
,p_name=>'ICON_HOVER_ANIMATION'
,p_display_name=>'Icon Hover Animation'
,p_display_sequence=>55
,p_template_types=>'BUTTON'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12100739603634960818)
,p_theme_id=>42
,p_name=>'ICON_POSITION'
,p_display_name=>'Icon Position'
,p_display_sequence=>50
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the position of the icon relative to the label.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12100741954616960823)
,p_theme_id=>42
,p_name=>'BOTTOM_MARGIN'
,p_display_name=>'Bottom Margin'
,p_display_sequence=>220
,p_template_types=>'FIELD'
,p_help_text=>'Set the bottom margin for this field.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12100742316458960824)
,p_theme_id=>42
,p_name=>'REGION_BOTTOM_MARGIN'
,p_display_name=>'Bottom Margin'
,p_display_sequence=>210
,p_template_types=>'REGION'
,p_help_text=>'Set the bottom margin for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12100743946073960825)
,p_theme_id=>42
,p_name=>'LEFT_MARGIN'
,p_display_name=>'Left Margin'
,p_display_sequence=>220
,p_template_types=>'FIELD'
,p_help_text=>'Set the left margin for this field.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12100744365933960825)
,p_theme_id=>42
,p_name=>'REGION_LEFT_MARGIN'
,p_display_name=>'Left Margin'
,p_display_sequence=>220
,p_template_types=>'REGION'
,p_help_text=>'Set the left margin for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12100745905452960826)
,p_theme_id=>42
,p_name=>'RIGHT_MARGIN'
,p_display_name=>'Right Margin'
,p_display_sequence=>230
,p_template_types=>'FIELD'
,p_help_text=>'Set the right margin for this field.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12100746345713960826)
,p_theme_id=>42
,p_name=>'REGION_RIGHT_MARGIN'
,p_display_name=>'Right Margin'
,p_display_sequence=>230
,p_template_types=>'REGION'
,p_help_text=>'Set the right margin for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12100747911324960827)
,p_theme_id=>42
,p_name=>'TOP_MARGIN'
,p_display_name=>'Top Margin'
,p_display_sequence=>200
,p_template_types=>'FIELD'
,p_help_text=>'Set the top margin for this field.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12100748314523960827)
,p_theme_id=>42
,p_name=>'REGION_TOP_MARGIN'
,p_display_name=>'Top Margin'
,p_display_sequence=>200
,p_template_types=>'REGION'
,p_help_text=>'Set the top margin for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12100749921793960828)
,p_theme_id=>42
,p_name=>'TYPE'
,p_display_name=>'Type'
,p_display_sequence=>20
,p_template_types=>'BUTTON'
,p_null_text=>'Normal'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12100750392914960828)
,p_theme_id=>42
,p_name=>'SPACING_BOTTOM'
,p_display_name=>'Spacing Bottom'
,p_display_sequence=>100
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the bottom of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12100750726065960828)
,p_theme_id=>42
,p_name=>'SPACING_LEFT'
,p_display_name=>'Spacing Left'
,p_display_sequence=>70
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the left of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12100751187048960829)
,p_theme_id=>42
,p_name=>'SPACING_RIGHT'
,p_display_name=>'Spacing Right'
,p_display_sequence=>80
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the right of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12100751557563960829)
,p_theme_id=>42
,p_name=>'SPACING_TOP'
,p_display_name=>'Spacing Top'
,p_display_sequence=>90
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the top of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12100751941561960829)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>10
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the size of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12100752379902960829)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>30
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the style of the button. Use the "Simple" option for secondary actions or sets of buttons. Use the "Remove UI Decoration" option to make the button appear as text.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12100753712041960830)
,p_theme_id=>42
,p_name=>'BUTTON_SET'
,p_display_name=>'Button Set'
,p_display_sequence=>40
,p_template_types=>'BUTTON'
,p_help_text=>'Enables you to group many buttons together into a pill. You can use this option to specify where the button is within this set. Set the option to Default if this button is not part of a button set.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12100755172168960831)
,p_theme_id=>42
,p_name=>'WIDTH'
,p_display_name=>'Width'
,p_display_sequence=>60
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the width of the button.'
,p_null_text=>'Auto - Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12100756138543960832)
,p_theme_id=>42
,p_name=>'LABEL_POSITION'
,p_display_name=>'Label Position'
,p_display_sequence=>140
,p_template_types=>'REGION'
,p_help_text=>'Sets the position of the label relative to the form item.'
,p_null_text=>'Inline - Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12100756567592960832)
,p_theme_id=>42
,p_name=>'ITEM_SIZE'
,p_display_name=>'Item Size'
,p_display_sequence=>110
,p_template_types=>'REGION'
,p_help_text=>'Sets the size of the form items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12100756960764960832)
,p_theme_id=>42
,p_name=>'LABEL_ALIGNMENT'
,p_display_name=>'Label Alignment'
,p_display_sequence=>130
,p_template_types=>'REGION'
,p_help_text=>'Set the label text alignment for items within this region.'
,p_null_text=>'Right'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12100757313606960832)
,p_theme_id=>42
,p_name=>'ITEM_PADDING'
,p_display_name=>'Item Padding'
,p_display_sequence=>100
,p_template_types=>'REGION'
,p_help_text=>'Sets the padding around items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12100757943370960833)
,p_theme_id=>42
,p_name=>'ITEM_WIDTH'
,p_display_name=>'Item Width'
,p_display_sequence=>120
,p_template_types=>'REGION'
,p_help_text=>'Sets the width of the form items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12100758506610960833)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>10
,p_template_types=>'FIELD'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12100758930140960833)
,p_theme_id=>42
,p_name=>'ITEM_POST_TEXT'
,p_display_name=>'Item Post Text'
,p_display_sequence=>30
,p_template_types=>'FIELD'
,p_help_text=>'Adjust the display of the Item Post Text'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12100759352161960834)
,p_theme_id=>42
,p_name=>'ITEM_PRE_TEXT'
,p_display_name=>'Item Pre Text'
,p_display_sequence=>20
,p_template_types=>'FIELD'
,p_help_text=>'Adjust the display of the Item Pre Text'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12100759744494960834)
,p_theme_id=>42
,p_name=>'RADIO_GROUP_DISPLAY'
,p_display_name=>'Item Group Display'
,p_display_sequence=>300
,p_template_types=>'FIELD'
,p_help_text=>'Determines the display style for radio and check box items.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12100760589109960834)
,p_theme_id=>42
,p_name=>'PAGINATION_DISPLAY'
,p_display_name=>'Pagination Display'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Controls the display of pagination for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
end;
/
prompt --application/shared_components/user_interface/template_options
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100627659759960743)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_api.id(12100624967130960739)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100630772067960745)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_api.id(12100627753791960744)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100632208541960746)
,p_theme_id=>42
,p_name=>'PAGE_BACKGROUND_1'
,p_display_name=>'Background 1'
,p_display_sequence=>1
,p_page_template_id=>wwv_flow_api.id(12100630806966960745)
,p_css_classes=>'t-LoginPage--bg1'
,p_group_id=>wwv_flow_api.id(12100632003205960746)
,p_template_types=>'PAGE'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100632476533960747)
,p_theme_id=>42
,p_name=>'PAGE_BACKGROUND_2'
,p_display_name=>'Background 2'
,p_display_sequence=>1
,p_page_template_id=>wwv_flow_api.id(12100630806966960745)
,p_css_classes=>'t-LoginPage--bg2'
,p_group_id=>wwv_flow_api.id(12100632003205960746)
,p_template_types=>'PAGE'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100632618233960747)
,p_theme_id=>42
,p_name=>'PAGE_BACKGROUND_3'
,p_display_name=>'Background 3'
,p_display_sequence=>1
,p_page_template_id=>wwv_flow_api.id(12100630806966960745)
,p_css_classes=>'t-LoginPage--bg3'
,p_group_id=>wwv_flow_api.id(12100632003205960746)
,p_template_types=>'PAGE'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100633039626960747)
,p_theme_id=>42
,p_name=>'PAGE_LAYOUT_SPLIT'
,p_display_name=>'Split'
,p_display_sequence=>1
,p_page_template_id=>wwv_flow_api.id(12100630806966960745)
,p_css_classes=>'t-LoginPage--split'
,p_group_id=>wwv_flow_api.id(12100632811968960747)
,p_template_types=>'PAGE'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100636114700960749)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_api.id(12100633152522960747)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100638648646960750)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_api.id(12100636244795960749)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100639903354960751)
,p_theme_id=>42
,p_name=>'REMOVE_BODY_PADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>20
,p_page_template_id=>wwv_flow_api.id(12100638718555960750)
,p_css_classes=>'t-Dialog--noPadding'
,p_template_types=>'PAGE'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100640192273960751)
,p_theme_id=>42
,p_name=>'STRETCH_TO_FIT_WINDOW'
,p_display_name=>'Stretch to Fit Window'
,p_display_sequence=>1
,p_page_template_id=>wwv_flow_api.id(12100638718555960750)
,p_css_classes=>'ui-dialog--stretch'
,p_template_types=>'PAGE'
,p_help_text=>'Stretch the dialog to fit the browser window.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100642955592960753)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_api.id(12100640206083960752)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100645454833960755)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_api.id(12100643005416960753)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100646786476960756)
,p_theme_id=>42
,p_name=>'REMOVE_BODY_PADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>20
,p_page_template_id=>wwv_flow_api.id(12100645516676960755)
,p_css_classes=>'t-Dialog--noPadding'
,p_template_types=>'PAGE'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100646989986960757)
,p_theme_id=>42
,p_name=>'STRETCH_TO_FIT_WINDOW'
,p_display_name=>'Stretch to Fit Window'
,p_display_sequence=>10
,p_page_template_id=>wwv_flow_api.id(12100645516676960755)
,p_css_classes=>'ui-dialog--stretch'
,p_template_types=>'PAGE'
,p_help_text=>'Stretch the dialog to fit the browser window.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100647820880960757)
,p_theme_id=>42
,p_name=>'HIDDENHEADER'
,p_display_name=>'Hidden but Accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(12100647074917960757)
,p_css_classes=>'t-Alert--accessibleHeading'
,p_group_id=>wwv_flow_api.id(12100647616741960757)
,p_template_types=>'REGION'
,p_help_text=>'Visually hides the alert title, but assistive technologies can still read it.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100648011049960758)
,p_theme_id=>42
,p_name=>'COLOREDBACKGROUND'
,p_display_name=>'Highlight Background'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(12100647074917960757)
,p_css_classes=>'t-Alert--colorBG'
,p_template_types=>'REGION'
,p_help_text=>'Set alert background color to that of the alert type (warning, success, etc.)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100648491797960758)
,p_theme_id=>42
,p_name=>'SHOW_CUSTOM_ICONS'
,p_display_name=>'Show Custom Icons'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(12100647074917960757)
,p_css_classes=>'t-Alert--customIcons'
,p_group_id=>wwv_flow_api.id(12100648202628960758)
,p_template_types=>'REGION'
,p_help_text=>'Set custom icons by modifying the Alert Region''s Icon CSS Classes property.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100648860789960758)
,p_theme_id=>42
,p_name=>'DANGER'
,p_display_name=>'Danger'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(12100647074917960757)
,p_css_classes=>'t-Alert--danger'
,p_group_id=>wwv_flow_api.id(12100648649597960758)
,p_template_types=>'REGION'
,p_help_text=>'Show an error or danger alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100649061386960758)
,p_theme_id=>42
,p_name=>'USEDEFAULTICONS'
,p_display_name=>'Show Default Icons'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(12100647074917960757)
,p_css_classes=>'t-Alert--defaultIcons'
,p_group_id=>wwv_flow_api.id(12100648202628960758)
,p_template_types=>'REGION'
,p_help_text=>'Uses default icons for alert types.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100649432921960758)
,p_theme_id=>42
,p_name=>'HORIZONTAL'
,p_display_name=>'Horizontal'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(12100647074917960757)
,p_css_classes=>'t-Alert--horizontal'
,p_group_id=>wwv_flow_api.id(12100649228315960758)
,p_template_types=>'REGION'
,p_help_text=>'Show horizontal alert with buttons to the right.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100649661338960759)
,p_theme_id=>42
,p_name=>'INFORMATION'
,p_display_name=>'Information'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(12100647074917960757)
,p_css_classes=>'t-Alert--info'
,p_group_id=>wwv_flow_api.id(12100648649597960758)
,p_template_types=>'REGION'
,p_help_text=>'Show informational alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100649887556960759)
,p_theme_id=>42
,p_name=>'HIDE_ICONS'
,p_display_name=>'Hide Icons'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(12100647074917960757)
,p_css_classes=>'t-Alert--noIcon'
,p_group_id=>wwv_flow_api.id(12100648202628960758)
,p_template_types=>'REGION'
,p_help_text=>'Hides alert icons'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100650054603960759)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(12100647074917960757)
,p_css_classes=>'t-Alert--removeHeading'
,p_group_id=>wwv_flow_api.id(12100647616741960757)
,p_template_types=>'REGION'
,p_help_text=>'Hides the Alert Title from being displayed.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100650228683960759)
,p_theme_id=>42
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(12100647074917960757)
,p_css_classes=>'t-Alert--success'
,p_group_id=>wwv_flow_api.id(12100648649597960758)
,p_template_types=>'REGION'
,p_help_text=>'Show success alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100650488630960759)
,p_theme_id=>42
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(12100647074917960757)
,p_css_classes=>'t-Alert--warning'
,p_group_id=>wwv_flow_api.id(12100648649597960758)
,p_template_types=>'REGION'
,p_help_text=>'Show a warning alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100650631864960759)
,p_theme_id=>42
,p_name=>'WIZARD'
,p_display_name=>'Wizard'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(12100647074917960757)
,p_css_classes=>'t-Alert--wizard'
,p_group_id=>wwv_flow_api.id(12100649228315960758)
,p_template_types=>'REGION'
,p_help_text=>'Show the alert in a wizard style region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100652875931960761)
,p_theme_id=>42
,p_name=>'BORDERLESS'
,p_display_name=>'Borderless'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(12100651778089960760)
,p_css_classes=>'t-ButtonRegion--noBorder'
,p_group_id=>wwv_flow_api.id(12100652660663960761)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100653294637960761)
,p_theme_id=>42
,p_name=>'NOPADDING'
,p_display_name=>'No Padding'
,p_display_sequence=>3
,p_region_template_id=>wwv_flow_api.id(12100651778089960760)
,p_css_classes=>'t-ButtonRegion--noPadding'
,p_group_id=>wwv_flow_api.id(12100653036086960761)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100653434745960761)
,p_theme_id=>42
,p_name=>'REMOVEUIDECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>4
,p_region_template_id=>wwv_flow_api.id(12100651778089960760)
,p_css_classes=>'t-ButtonRegion--noUI'
,p_group_id=>wwv_flow_api.id(12100652660663960761)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100653695859960761)
,p_theme_id=>42
,p_name=>'SLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>5
,p_region_template_id=>wwv_flow_api.id(12100651778089960760)
,p_css_classes=>'t-ButtonRegion--slimPadding'
,p_group_id=>wwv_flow_api.id(12100653036086960761)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100653866480960761)
,p_theme_id=>42
,p_name=>'STICK_TO_BOTTOM'
,p_display_name=>'Stick to Bottom for Mobile'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(12100651778089960760)
,p_css_classes=>'t-ButtonRegion--stickToBottom'
,p_template_types=>'REGION'
,p_help_text=>'This will position the button container region to the bottom of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100655098619960762)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(12100653984355960761)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(12100654817294960762)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100655271442960762)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(12100653984355960761)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(12100654817294960762)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100655415698960762)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(12100653984355960761)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(12100654817294960762)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100655633957960762)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(12100653984355960761)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(12100654817294960762)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100656042603960763)
,p_theme_id=>42
,p_name=>'10_SECONDS'
,p_display_name=>'10 Seconds'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(12100653984355960761)
,p_css_classes=>'js-cycle10s'
,p_group_id=>wwv_flow_api.id(12100655854563960763)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100656255511960763)
,p_theme_id=>42
,p_name=>'15_SECONDS'
,p_display_name=>'15 Seconds'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(12100653984355960761)
,p_css_classes=>'js-cycle15s'
,p_group_id=>wwv_flow_api.id(12100655854563960763)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100656499518960763)
,p_theme_id=>42
,p_name=>'20_SECONDS'
,p_display_name=>'20 Seconds'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(12100653984355960761)
,p_css_classes=>'js-cycle20s'
,p_group_id=>wwv_flow_api.id(12100655854563960763)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100656608876960763)
,p_theme_id=>42
,p_name=>'5_SECONDS'
,p_display_name=>'5 Seconds'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(12100653984355960761)
,p_css_classes=>'js-cycle5s'
,p_group_id=>wwv_flow_api.id(12100655854563960763)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100656811879960763)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(12100653984355960761)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Region Header to maximize the region. Clicking this button will toggle the maximize state and stretch the region to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100657007740960763)
,p_theme_id=>42
,p_name=>'REMEMBER_CAROUSEL_SLIDE'
,p_display_name=>'Remember Carousel Slide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(12100653984355960761)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100657440914960763)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(12100653984355960761)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(12100657248421960763)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100657636958960763)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(12100653984355960761)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(12100657248421960763)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100657868593960764)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(12100653984355960761)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(12100657248421960763)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100658037744960764)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(12100653984355960761)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(12100657248421960763)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100658286946960764)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(12100653984355960761)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(12100657248421960763)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100658602653960764)
,p_theme_id=>42
,p_name=>'SLIDE'
,p_display_name=>'Slide'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(12100653984355960761)
,p_css_classes=>'t-Region--carouselSlide'
,p_group_id=>wwv_flow_api.id(12100658406262960764)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100658865160960764)
,p_theme_id=>42
,p_name=>'SPIN'
,p_display_name=>'Spin'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(12100653984355960761)
,p_css_classes=>'t-Region--carouselSpin'
,p_group_id=>wwv_flow_api.id(12100658406262960764)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100659250848960764)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(12100653984355960761)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(12100659037896960764)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100659698447960765)
,p_theme_id=>42
,p_name=>'HIDEREGIONHEADER'
,p_display_name=>'Hidden but accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(12100653984355960761)
,p_css_classes=>'t-Region--hideHeader'
,p_group_id=>wwv_flow_api.id(12100659439326960764)
,p_template_types=>'REGION'
,p_help_text=>'This option will hide the region header.  Note that the region title will still be audible for Screen Readers. Buttons placed in the region header will be hidden and inaccessible.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100659872089960765)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(12100653984355960761)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(12100652660663960761)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100660085120960765)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(12100653984355960761)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100660251023960765)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(12100653984355960761)
,p_css_classes=>'t-Region--removeHeader'
,p_group_id=>wwv_flow_api.id(12100659439326960764)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100660459812960765)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(12100653984355960761)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(12100659037896960764)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100660694489960765)
,p_theme_id=>42
,p_name=>'SHOW_NEXT_AND_PREVIOUS_BUTTONS'
,p_display_name=>'Show Next and Previous Buttons'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(12100653984355960761)
,p_css_classes=>'t-Region--showCarouselControls'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100660882708960765)
,p_theme_id=>42
,p_name=>'SHOW_REGION_ICON'
,p_display_name=>'Show Region Icon'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(12100653984355960761)
,p_css_classes=>'t-Region--showIcon'
,p_template_types=>'REGION'
,p_help_text=>'Displays the region icon in the region header beside the region title'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100661057612960765)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(12100653984355960761)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(12100652660663960761)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100662004790960766)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(12100661125941960765)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(12100654817294960762)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100662216624960766)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(12100661125941960765)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(12100654817294960762)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100662415478960766)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(12100661125941960765)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(12100654817294960762)
,p_template_types=>'REGION'
,p_help_text=>'Sets body height to 480px.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100662683511960766)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(12100661125941960765)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(12100654817294960762)
,p_template_types=>'REGION'
,p_help_text=>'Sets body height to 640px.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100663081436960767)
,p_theme_id=>42
,p_name=>'COLLAPSED'
,p_display_name=>'Collapsed'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(12100661125941960765)
,p_css_classes=>'is-collapsed'
,p_group_id=>wwv_flow_api.id(12100662886085960767)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100663248614960767)
,p_theme_id=>42
,p_name=>'EXPANDED'
,p_display_name=>'Expanded'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(12100661125941960765)
,p_css_classes=>'is-expanded'
,p_group_id=>wwv_flow_api.id(12100662886085960767)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100663451371960767)
,p_theme_id=>42
,p_name=>'REMEMBER_COLLAPSIBLE_STATE'
,p_display_name=>'Remember Collapsible State'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(12100661125941960765)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
,p_help_text=>'This option saves the current state of the collapsible region for the duration of the session.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100663657552960767)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(12100661125941960765)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(12100657248421960763)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100663814786960767)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(12100661125941960765)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(12100657248421960763)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100664094438960768)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(12100661125941960765)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(12100657248421960763)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100664238956960768)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(12100661125941960765)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(12100657248421960763)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100664431806960768)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(12100661125941960765)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(12100657248421960763)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100664816913960768)
,p_theme_id=>42
,p_name=>'CONRTOLS_POSITION_END'
,p_display_name=>'End'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(12100661125941960765)
,p_css_classes=>'t-Region--controlsPosEnd'
,p_group_id=>wwv_flow_api.id(12100664630767960768)
,p_template_types=>'REGION'
,p_help_text=>'Position the expand / collapse button to the end of the region header.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100665010083960768)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(12100661125941960765)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(12100659037896960764)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100665455268960768)
,p_theme_id=>42
,p_name=>'ICONS_PLUS_OR_MINUS'
,p_display_name=>'Plus or Minus'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(12100661125941960765)
,p_css_classes=>'t-Region--hideShowIconsMath'
,p_group_id=>wwv_flow_api.id(12100665288895960768)
,p_template_types=>'REGION'
,p_help_text=>'Use the plus and minus icons for the expand and collapse button.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100665699621960768)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(12100661125941960765)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(12100652660663960761)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100665865077960769)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(12100661125941960765)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100666047840960769)
,p_theme_id=>42
,p_name=>'REMOVE_UI_DECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(12100661125941960765)
,p_css_classes=>'t-Region--noUI'
,p_group_id=>wwv_flow_api.id(12100652660663960761)
,p_template_types=>'REGION'
,p_help_text=>'Removes UI decoration (borders, backgrounds, shadows, etc) from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100666288688960769)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll - Default'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(12100661125941960765)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(12100659037896960764)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100666400571960769)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(12100661125941960765)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(12100652660663960761)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100667059789960769)
,p_theme_id=>42
,p_name=>'CONTENT_TITLE_H1'
,p_display_name=>'Heading Level 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(12100666568505960769)
,p_css_classes=>'t-ContentBlock--h1'
,p_group_id=>wwv_flow_api.id(12100666851709960769)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100667297997960769)
,p_theme_id=>42
,p_name=>'CONTENT_TITLE_H2'
,p_display_name=>'Heading Level 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(12100666568505960769)
,p_css_classes=>'t-ContentBlock--h2'
,p_group_id=>wwv_flow_api.id(12100666851709960769)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100667485050960770)
,p_theme_id=>42
,p_name=>'CONTENT_TITLE_H3'
,p_display_name=>'Heading Level 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(12100666568505960769)
,p_css_classes=>'t-ContentBlock--h3'
,p_group_id=>wwv_flow_api.id(12100666851709960769)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100667809124960770)
,p_theme_id=>42
,p_name=>'LIGHT_BACKGROUND'
,p_display_name=>'Light Background'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(12100666568505960769)
,p_css_classes=>'t-ContentBlock--lightBG'
,p_group_id=>wwv_flow_api.id(12100667670194960770)
,p_template_types=>'REGION'
,p_help_text=>'Gives the region body a slightly lighter background.'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100668015395960770)
,p_theme_id=>42
,p_name=>'ADD_BODY_PADDING'
,p_display_name=>'Add Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(12100666568505960769)
,p_css_classes=>'t-ContentBlock--padded'
,p_template_types=>'REGION'
,p_help_text=>'Adds padding to the region''s body container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100668215857960770)
,p_theme_id=>42
,p_name=>'SHADOW_BACKGROUND'
,p_display_name=>'Shadow Background'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(12100666568505960769)
,p_css_classes=>'t-ContentBlock--shadowBG'
,p_group_id=>wwv_flow_api.id(12100667670194960770)
,p_template_types=>'REGION'
,p_help_text=>'Gives the region body a slightly darker background.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100668456698960770)
,p_theme_id=>42
,p_name=>'SHOW_REGION_ICON'
,p_display_name=>'Show Region Icon'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(12100666568505960769)
,p_css_classes=>'t-ContentBlock--showIcon'
,p_template_types=>'REGION'
,p_help_text=>'Displays the region icon in the region header beside the region title'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100669108196960771)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(12100668594223960770)
,p_css_classes=>'t-HeroRegion--featured'
,p_group_id=>wwv_flow_api.id(12100652660663960761)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100669311483960771)
,p_theme_id=>42
,p_name=>'STACKED_FEATURED'
,p_display_name=>'Stacked Featured'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(12100668594223960770)
,p_css_classes=>'t-HeroRegion--featured t-HeroRegion--centered'
,p_group_id=>wwv_flow_api.id(12100652660663960761)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100669738258960771)
,p_theme_id=>42
,p_name=>'DISPLAY_ICON_NO'
,p_display_name=>'No'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(12100668594223960770)
,p_css_classes=>'t-HeroRegion--hideIcon'
,p_group_id=>wwv_flow_api.id(12100669582665960771)
,p_template_types=>'REGION'
,p_help_text=>'Hide the Hero Region icon.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100670114473960771)
,p_theme_id=>42
,p_name=>'ICONS_CIRCULAR'
,p_display_name=>'Circle'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(12100668594223960770)
,p_css_classes=>'t-HeroRegion--iconsCircle'
,p_group_id=>wwv_flow_api.id(12100669905647960771)
,p_template_types=>'REGION'
,p_help_text=>'The icons are displayed within a circle.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100670313598960771)
,p_theme_id=>42
,p_name=>'ICONS_SQUARE'
,p_display_name=>'Square'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(12100668594223960770)
,p_css_classes=>'t-HeroRegion--iconsSquare'
,p_group_id=>wwv_flow_api.id(12100669905647960771)
,p_template_types=>'REGION'
,p_help_text=>'The icons are displayed within a square.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100670533543960771)
,p_theme_id=>42
,p_name=>'REMOVE_BODY_PADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(12100668594223960770)
,p_css_classes=>'t-HeroRegion--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes the padding around the hero region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100671258426960772)
,p_theme_id=>42
,p_name=>'AUTO_HEIGHT_INLINE_DIALOG'
,p_display_name=>'Auto Height'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(12100670616113960771)
,p_css_classes=>'js-dialog-autoheight'
,p_template_types=>'REGION'
,p_help_text=>'This option will set the height of the dialog to fit its contents.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100671604958960772)
,p_theme_id=>42
,p_name=>'SMALL_480X320'
,p_display_name=>'Small (480x320)'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(12100670616113960771)
,p_css_classes=>'js-dialog-size480x320'
,p_group_id=>wwv_flow_api.id(12100671402454960772)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100671884776960772)
,p_theme_id=>42
,p_name=>'MEDIUM_600X400'
,p_display_name=>'Medium (600x400)'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(12100670616113960771)
,p_css_classes=>'js-dialog-size600x400'
,p_group_id=>wwv_flow_api.id(12100671402454960772)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100672039616960772)
,p_theme_id=>42
,p_name=>'LARGE_720X480'
,p_display_name=>'Large (720x480)'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(12100670616113960771)
,p_css_classes=>'js-dialog-size720x480'
,p_group_id=>wwv_flow_api.id(12100671402454960772)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100672209005960772)
,p_theme_id=>42
,p_name=>'DRAGGABLE'
,p_display_name=>'Draggable'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(12100670616113960771)
,p_css_classes=>'js-draggable'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100672433091960772)
,p_theme_id=>42
,p_name=>'MODAL'
,p_display_name=>'Modal'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(12100670616113960771)
,p_css_classes=>'js-modal'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100672675374960772)
,p_theme_id=>42
,p_name=>'RESIZABLE'
,p_display_name=>'Resizable'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(12100670616113960771)
,p_css_classes=>'js-resizable'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100672815427960773)
,p_theme_id=>42
,p_name=>'REMOVE_BODY_PADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>5
,p_region_template_id=>wwv_flow_api.id(12100670616113960771)
,p_css_classes=>'t-DialogRegion--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes the padding around the region body.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100673529967960773)
,p_theme_id=>42
,p_name=>'AUTO_HEIGHT_INLINE_DIALOG'
,p_display_name=>'Auto Height'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(12100672993852960773)
,p_css_classes=>'js-dialog-autoheight'
,p_template_types=>'REGION'
,p_help_text=>'This option will set the height of the dialog to fit its contents.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100673780189960773)
,p_theme_id=>42
,p_name=>'NONE'
,p_display_name=>'None'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(12100672993852960773)
,p_css_classes=>'js-dialog-nosize'
,p_group_id=>wwv_flow_api.id(12100671402454960772)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100673913895960773)
,p_theme_id=>42
,p_name=>'SMALL_480X320'
,p_display_name=>'Small (480x320)'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(12100672993852960773)
,p_css_classes=>'js-dialog-size480x320'
,p_group_id=>wwv_flow_api.id(12100671402454960772)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100674124635960773)
,p_theme_id=>42
,p_name=>'MEDIUM_600X400'
,p_display_name=>'Medium (600x400)'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(12100672993852960773)
,p_css_classes=>'js-dialog-size600x400'
,p_group_id=>wwv_flow_api.id(12100671402454960772)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100674331964960773)
,p_theme_id=>42
,p_name=>'LARGE_720X480'
,p_display_name=>'Large (720x480)'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(12100672993852960773)
,p_css_classes=>'js-dialog-size720x480'
,p_group_id=>wwv_flow_api.id(12100671402454960772)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100674561407960774)
,p_theme_id=>42
,p_name=>'DISPLAY_POPUP_CALLOUT'
,p_display_name=>'Display Popup Callout'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(12100672993852960773)
,p_css_classes=>'js-popup-callout'
,p_template_types=>'REGION'
,p_help_text=>'Use this option to add display a callout for the popup. Note that callout will only be displayed if the data-parent-element custom attribute is defined.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100674761564960774)
,p_theme_id=>42
,p_name=>'REMOVE_PAGE_OVERLAY'
,p_display_name=>'Remove Page Overlay'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(12100672993852960773)
,p_css_classes=>'js-popup-noOverlay'
,p_template_types=>'REGION'
,p_help_text=>'This option will display the inline dialog without an overlay on the background.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100675155964960774)
,p_theme_id=>42
,p_name=>'ABOVE'
,p_display_name=>'Above'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(12100672993852960773)
,p_css_classes=>'js-popup-pos-above'
,p_group_id=>wwv_flow_api.id(12100674992928960774)
,p_template_types=>'REGION'
,p_help_text=>'Positions the callout above or typically on top of the parent.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100675308075960774)
,p_theme_id=>42
,p_name=>'AFTER'
,p_display_name=>'After'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(12100672993852960773)
,p_css_classes=>'js-popup-pos-after'
,p_group_id=>wwv_flow_api.id(12100674992928960774)
,p_template_types=>'REGION'
,p_help_text=>'Positions the callout after or typically to the right of the parent.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100675560992960774)
,p_theme_id=>42
,p_name=>'BEFORE'
,p_display_name=>'Before'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(12100672993852960773)
,p_css_classes=>'js-popup-pos-before'
,p_group_id=>wwv_flow_api.id(12100674992928960774)
,p_template_types=>'REGION'
,p_help_text=>'Positions the callout before or typically to the left of the parent.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100675705359960774)
,p_theme_id=>42
,p_name=>'BELOW'
,p_display_name=>'Below'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(12100672993852960773)
,p_css_classes=>'js-popup-pos-below'
,p_group_id=>wwv_flow_api.id(12100674992928960774)
,p_template_types=>'REGION'
,p_help_text=>'Positions the callout below or typically to the bottom of the parent.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100675984554960774)
,p_theme_id=>42
,p_name=>'INSIDE'
,p_display_name=>'Inside'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(12100672993852960773)
,p_css_classes=>'js-popup-pos-inside'
,p_group_id=>wwv_flow_api.id(12100674992928960774)
,p_template_types=>'REGION'
,p_help_text=>'Positions the callout inside of the parent. This is useful when the parent is sufficiently large, such as a report or large region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100676113646960774)
,p_theme_id=>42
,p_name=>'REMOVE_BODY_PADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(12100672993852960773)
,p_css_classes=>'t-DialogRegion--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes the padding around the region body.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100676576791960775)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(12100676227768960775)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Interactive Reports toolbar to maximize the report. Clicking this button will toggle the maximize state and stretch the report to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100676760700960775)
,p_theme_id=>42
,p_name=>'REMOVEBORDERS'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(12100676227768960775)
,p_css_classes=>'t-IRR-region--noBorders'
,p_template_types=>'REGION'
,p_help_text=>'Removes borders around the Interactive Report'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100677684512960775)
,p_theme_id=>42
,p_name=>'LOGO_HEADER_HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(12100676844997960775)
,p_css_classes=>'t-Login-region--headerHidden'
,p_group_id=>wwv_flow_api.id(12100677494780960775)
,p_template_types=>'REGION'
,p_help_text=>'Hides both the Region Icon and Title from the Login region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100677870746960776)
,p_theme_id=>42
,p_name=>'LOGIN_HEADER_ICON'
,p_display_name=>'Icon'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(12100676844997960775)
,p_css_classes=>'t-Login-region--headerIcon'
,p_group_id=>wwv_flow_api.id(12100677494780960775)
,p_template_types=>'REGION'
,p_help_text=>'Displays only the Region Icon in the Login region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100678045573960776)
,p_theme_id=>42
,p_name=>'LOGIN_HEADER_TITLE'
,p_display_name=>'Title'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(12100676844997960775)
,p_css_classes=>'t-Login-region--headerTitle'
,p_group_id=>wwv_flow_api.id(12100677494780960775)
,p_template_types=>'REGION'
,p_help_text=>'Displays only the Region Title in the Login region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100679043505960776)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(12100678190315960776)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(12100654817294960762)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100679233231960776)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(12100678190315960776)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(12100654817294960762)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100679430560960777)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(12100678190315960776)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(12100654817294960762)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100679661412960777)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(12100678190315960776)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(12100654817294960762)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100679846872960777)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(12100678190315960776)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Region Header to maximize the region. Clicking this button will toggle the maximize state and stretch the region to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100680028536960777)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(12100678190315960776)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(12100657248421960763)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100680273065960777)
,p_theme_id=>42
,p_name=>'ACCENT_10'
,p_display_name=>'Accent 10'
,p_display_sequence=>100
,p_region_template_id=>wwv_flow_api.id(12100678190315960776)
,p_css_classes=>'t-Region--accent10'
,p_group_id=>wwv_flow_api.id(12100657248421960763)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100680424073960777)
,p_theme_id=>42
,p_name=>'ACCENT_11'
,p_display_name=>'Accent 11'
,p_display_sequence=>110
,p_region_template_id=>wwv_flow_api.id(12100678190315960776)
,p_css_classes=>'t-Region--accent11'
,p_group_id=>wwv_flow_api.id(12100657248421960763)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100680671196960777)
,p_theme_id=>42
,p_name=>'ACCENT_12'
,p_display_name=>'Accent 12'
,p_display_sequence=>120
,p_region_template_id=>wwv_flow_api.id(12100678190315960776)
,p_css_classes=>'t-Region--accent12'
,p_group_id=>wwv_flow_api.id(12100657248421960763)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100680875410960777)
,p_theme_id=>42
,p_name=>'ACCENT_13'
,p_display_name=>'Accent 13'
,p_display_sequence=>130
,p_region_template_id=>wwv_flow_api.id(12100678190315960776)
,p_css_classes=>'t-Region--accent13'
,p_group_id=>wwv_flow_api.id(12100657248421960763)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100681067809960778)
,p_theme_id=>42
,p_name=>'ACCENT_14'
,p_display_name=>'Accent 14'
,p_display_sequence=>140
,p_region_template_id=>wwv_flow_api.id(12100678190315960776)
,p_css_classes=>'t-Region--accent14'
,p_group_id=>wwv_flow_api.id(12100657248421960763)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100681279211960778)
,p_theme_id=>42
,p_name=>'ACCENT_15'
,p_display_name=>'Accent 15'
,p_display_sequence=>150
,p_region_template_id=>wwv_flow_api.id(12100678190315960776)
,p_css_classes=>'t-Region--accent15'
,p_group_id=>wwv_flow_api.id(12100657248421960763)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100681401970960778)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(12100678190315960776)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(12100657248421960763)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100681606653960778)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(12100678190315960776)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(12100657248421960763)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100681817530960778)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(12100678190315960776)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(12100657248421960763)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100682058298960778)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(12100678190315960776)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(12100657248421960763)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100682219106960778)
,p_theme_id=>42
,p_name=>'ACCENT_6'
,p_display_name=>'Accent 6'
,p_display_sequence=>60
,p_region_template_id=>wwv_flow_api.id(12100678190315960776)
,p_css_classes=>'t-Region--accent6'
,p_group_id=>wwv_flow_api.id(12100657248421960763)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100682447860960778)
,p_theme_id=>42
,p_name=>'ACCENT_7'
,p_display_name=>'Accent 7'
,p_display_sequence=>70
,p_region_template_id=>wwv_flow_api.id(12100678190315960776)
,p_css_classes=>'t-Region--accent7'
,p_group_id=>wwv_flow_api.id(12100657248421960763)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100682673803960779)
,p_theme_id=>42
,p_name=>'ACCENT_8'
,p_display_name=>'Accent 8'
,p_display_sequence=>80
,p_region_template_id=>wwv_flow_api.id(12100678190315960776)
,p_css_classes=>'t-Region--accent8'
,p_group_id=>wwv_flow_api.id(12100657248421960763)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100682802932960779)
,p_theme_id=>42
,p_name=>'ACCENT_9'
,p_display_name=>'Accent 9'
,p_display_sequence=>90
,p_region_template_id=>wwv_flow_api.id(12100678190315960776)
,p_css_classes=>'t-Region--accent9'
,p_group_id=>wwv_flow_api.id(12100657248421960763)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100683000638960779)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(12100678190315960776)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(12100659037896960764)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100683211139960779)
,p_theme_id=>42
,p_name=>'HIDEREGIONHEADER'
,p_display_name=>'Hidden but accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(12100678190315960776)
,p_css_classes=>'t-Region--hideHeader'
,p_group_id=>wwv_flow_api.id(12100659439326960764)
,p_template_types=>'REGION'
,p_help_text=>'This option will hide the region header.  Note that the region title will still be audible for Screen Readers. Buttons placed in the region header will be hidden and inaccessible.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100683438181960779)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(12100678190315960776)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(12100652660663960761)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100683660083960779)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(12100678190315960776)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100683852496960779)
,p_theme_id=>42
,p_name=>'REMOVE_UI_DECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(12100678190315960776)
,p_css_classes=>'t-Region--noUI'
,p_group_id=>wwv_flow_api.id(12100652660663960761)
,p_template_types=>'REGION'
,p_help_text=>'Removes UI decoration (borders, backgrounds, shadows, etc) from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100684065957960779)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(12100678190315960776)
,p_css_classes=>'t-Region--removeHeader'
,p_group_id=>wwv_flow_api.id(12100659439326960764)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100684224087960779)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll - Default'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(12100678190315960776)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(12100659037896960764)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100684493780960780)
,p_theme_id=>42
,p_name=>'SHOW_REGION_ICON'
,p_display_name=>'Show Region Icon'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(12100678190315960776)
,p_css_classes=>'t-Region--showIcon'
,p_template_types=>'REGION'
,p_help_text=>'Displays the region icon in the region header beside the region title'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100684693106960780)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(12100678190315960776)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(12100652660663960761)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100684804001960780)
,p_theme_id=>42
,p_name=>'TEXT_CONTENT'
,p_display_name=>'Text Content'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(12100678190315960776)
,p_css_classes=>'t-Region--textContent'
,p_group_id=>wwv_flow_api.id(12100652660663960761)
,p_template_types=>'REGION'
,p_help_text=>'Useful for displaying primarily text-based content, such as FAQs and more.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100685894767960780)
,p_theme_id=>42
,p_name=>'REMEMBER_ACTIVE_TAB'
,p_display_name=>'Remember Active Tab'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(12100684919027960780)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100686243745960781)
,p_theme_id=>42
,p_name=>'FILL_TAB_LABELS'
,p_display_name=>'Fill Tab Labels'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(12100684919027960780)
,p_css_classes=>'t-TabsRegion-mod--fillLabels'
,p_group_id=>wwv_flow_api.id(12100686094368960781)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100686628538960781)
,p_theme_id=>42
,p_name=>'TABSLARGE'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(12100684919027960780)
,p_css_classes=>'t-TabsRegion-mod--large'
,p_group_id=>wwv_flow_api.id(12100686448893960781)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100687027793960781)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Pill'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(12100684919027960780)
,p_css_classes=>'t-TabsRegion-mod--pill'
,p_group_id=>wwv_flow_api.id(12100686896300960781)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100687201214960781)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(12100684919027960780)
,p_css_classes=>'t-TabsRegion-mod--simple'
,p_group_id=>wwv_flow_api.id(12100686896300960781)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100687400208960782)
,p_theme_id=>42
,p_name=>'TABS_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(12100684919027960780)
,p_css_classes=>'t-TabsRegion-mod--small'
,p_group_id=>wwv_flow_api.id(12100686448893960781)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100687889362960782)
,p_theme_id=>42
,p_name=>'USE_COMPACT_STYLE'
,p_display_name=>'Use Compact Style'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(12100687582209960782)
,p_css_classes=>'t-BreadcrumbRegion--compactTitle'
,p_template_types=>'REGION'
,p_help_text=>'Uses a compact style for the breadcrumbs.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100688031807960782)
,p_theme_id=>42
,p_name=>'HIDE_BREADCRUMB'
,p_display_name=>'Show Breadcrumbs'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(12100687582209960782)
,p_css_classes=>'t-BreadcrumbRegion--showBreadcrumb'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100688277602960782)
,p_theme_id=>42
,p_name=>'GET_TITLE_FROM_BREADCRUMB'
,p_display_name=>'Use Current Breadcrumb Entry'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(12100687582209960782)
,p_css_classes=>'t-BreadcrumbRegion--useBreadcrumbTitle'
,p_group_id=>wwv_flow_api.id(12100666851709960769)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100688494416960782)
,p_theme_id=>42
,p_name=>'REGION_HEADER_VISIBLE'
,p_display_name=>'Use Region Title'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(12100687582209960782)
,p_css_classes=>'t-BreadcrumbRegion--useRegionTitle'
,p_group_id=>wwv_flow_api.id(12100666851709960769)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100689312931960783)
,p_theme_id=>42
,p_name=>'HIDESMALLSCREENS'
,p_display_name=>'Small Screens (Tablet)'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(12100688556657960782)
,p_css_classes=>'t-Wizard--hideStepsSmall'
,p_group_id=>wwv_flow_api.id(12100689138715960783)
,p_template_types=>'REGION'
,p_help_text=>'Hides the wizard progress steps for screens that are smaller than 768px wide.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100689555938960783)
,p_theme_id=>42
,p_name=>'HIDEXSMALLSCREENS'
,p_display_name=>'X Small Screens (Mobile)'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(12100688556657960782)
,p_css_classes=>'t-Wizard--hideStepsXSmall'
,p_group_id=>wwv_flow_api.id(12100689138715960783)
,p_template_types=>'REGION'
,p_help_text=>'Hides the wizard progress steps for screens that are smaller than 768px wide.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100689783860960783)
,p_theme_id=>42
,p_name=>'SHOW_TITLE'
,p_display_name=>'Show Title'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(12100688556657960782)
,p_css_classes=>'t-Wizard--showTitle'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100690586622960784)
,p_theme_id=>42
,p_name=>'CIRCULAR'
,p_display_name=>'Circular'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(12100690092029960784)
,p_css_classes=>'t-BadgeList--circular'
,p_group_id=>wwv_flow_api.id(12100690347594960784)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100690942206960784)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(12100690092029960784)
,p_css_classes=>'t-BadgeList--cols'
,p_group_id=>wwv_flow_api.id(12100690709932960784)
,p_template_types=>'REPORT'
,p_help_text=>'Arrange badges in a two column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100691185153960784)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(12100690092029960784)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--3cols'
,p_group_id=>wwv_flow_api.id(12100690709932960784)
,p_template_types=>'REPORT'
,p_help_text=>'Arrange badges in a 3 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100691322330960784)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(12100690092029960784)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--4cols'
,p_group_id=>wwv_flow_api.id(12100690709932960784)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100691570409960785)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(12100690092029960784)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--5cols'
,p_group_id=>wwv_flow_api.id(12100690709932960784)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100691726998960785)
,p_theme_id=>42
,p_name=>'GRID'
,p_display_name=>'Grid'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(12100690092029960784)
,p_css_classes=>'t-BadgeList--dash'
,p_group_id=>wwv_flow_api.id(12100690347594960784)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100691903189960785)
,p_theme_id=>42
,p_name=>'FIXED'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(12100690092029960784)
,p_css_classes=>'t-BadgeList--fixed'
,p_group_id=>wwv_flow_api.id(12100690709932960784)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100692177371960785)
,p_theme_id=>42
,p_name=>'FLEXIBLEBOX'
,p_display_name=>'Flexible Box'
,p_display_sequence=>80
,p_report_template_id=>wwv_flow_api.id(12100690092029960784)
,p_css_classes=>'t-BadgeList--flex'
,p_group_id=>wwv_flow_api.id(12100690709932960784)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100692349829960785)
,p_theme_id=>42
,p_name=>'FLOATITEMS'
,p_display_name=>'Float Items'
,p_display_sequence=>70
,p_report_template_id=>wwv_flow_api.id(12100690092029960784)
,p_css_classes=>'t-BadgeList--float'
,p_group_id=>wwv_flow_api.id(12100690709932960784)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100692750953960785)
,p_theme_id=>42
,p_name=>'64PX'
,p_display_name=>'64px'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(12100690092029960784)
,p_css_classes=>'t-BadgeList--large'
,p_group_id=>wwv_flow_api.id(12100692520236960785)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100692986989960785)
,p_theme_id=>42
,p_name=>'48PX'
,p_display_name=>'48px'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(12100690092029960784)
,p_css_classes=>'t-BadgeList--medium'
,p_group_id=>wwv_flow_api.id(12100692520236960785)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100693134097960786)
,p_theme_id=>42
,p_name=>'32PX'
,p_display_name=>'32px'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(12100690092029960784)
,p_css_classes=>'t-BadgeList--small'
,p_group_id=>wwv_flow_api.id(12100692520236960785)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100693387571960786)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(12100690092029960784)
,p_css_classes=>'t-BadgeList--stacked'
,p_group_id=>wwv_flow_api.id(12100690709932960784)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100693548969960786)
,p_theme_id=>42
,p_name=>'96PX'
,p_display_name=>'96px'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(12100690092029960784)
,p_css_classes=>'t-BadgeList--xlarge'
,p_group_id=>wwv_flow_api.id(12100692520236960785)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100693729687960786)
,p_theme_id=>42
,p_name=>'128PX'
,p_display_name=>'128px'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(12100690092029960784)
,p_css_classes=>'t-BadgeList--xxlarge'
,p_group_id=>wwv_flow_api.id(12100692520236960785)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100693967411960786)
,p_theme_id=>42
,p_name=>'APPLY_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(12100690092029960784)
,p_css_classes=>'u-colors'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100694385242960787)
,p_theme_id=>42
,p_name=>'3_COLUMNS'
,p_display_name=>'3 Columns'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(12100694001582960786)
,p_css_classes=>'t-Cards--3cols'
,p_group_id=>wwv_flow_api.id(12100690709932960784)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100694582423960787)
,p_theme_id=>42
,p_name=>'4_COLUMNS'
,p_display_name=>'4 Columns'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(12100694001582960786)
,p_css_classes=>'t-Cards--4cols'
,p_group_id=>wwv_flow_api.id(12100690709932960784)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100694717220960787)
,p_theme_id=>42
,p_name=>'5_COLUMNS'
,p_display_name=>'5 Columns'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(12100694001582960786)
,p_css_classes=>'t-Cards--5cols'
,p_group_id=>wwv_flow_api.id(12100690709932960784)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100695152641960787)
,p_theme_id=>42
,p_name=>'CARDS_COLOR_FILL'
,p_display_name=>'Color Fill'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(12100694001582960786)
,p_css_classes=>'t-Cards--animColorFill'
,p_group_id=>wwv_flow_api.id(12100694916219960787)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100695364656960787)
,p_theme_id=>42
,p_name=>'CARD_RAISE_CARD'
,p_display_name=>'Raise Card'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(12100694001582960786)
,p_css_classes=>'t-Cards--animRaiseCard'
,p_group_id=>wwv_flow_api.id(12100694916219960787)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100695505520960787)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(12100694001582960786)
,p_css_classes=>'t-Cards--basic'
,p_group_id=>wwv_flow_api.id(12100690347594960784)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100695796127960788)
,p_theme_id=>42
,p_name=>'2_COLUMNS'
,p_display_name=>'2 Columns'
,p_display_sequence=>15
,p_report_template_id=>wwv_flow_api.id(12100694001582960786)
,p_css_classes=>'t-Cards--cols'
,p_group_id=>wwv_flow_api.id(12100690709932960784)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100695943289960788)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(12100694001582960786)
,p_css_classes=>'t-Cards--compact'
,p_group_id=>wwv_flow_api.id(12100690347594960784)
,p_template_types=>'REPORT'
,p_help_text=>'Use this option when you want to show smaller cards.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100696354489960788)
,p_theme_id=>42
,p_name=>'2_LINES'
,p_display_name=>'2 Lines'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(12100694001582960786)
,p_css_classes=>'t-Cards--desc-2ln'
,p_group_id=>wwv_flow_api.id(12100696121891960788)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100696586663960788)
,p_theme_id=>42
,p_name=>'3_LINES'
,p_display_name=>'3 Lines'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(12100694001582960786)
,p_css_classes=>'t-Cards--desc-3ln'
,p_group_id=>wwv_flow_api.id(12100696121891960788)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100696752079960788)
,p_theme_id=>42
,p_name=>'4_LINES'
,p_display_name=>'4 Lines'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(12100694001582960786)
,p_css_classes=>'t-Cards--desc-4ln'
,p_group_id=>wwv_flow_api.id(12100696121891960788)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100697189924960788)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(12100694001582960786)
,p_css_classes=>'t-Cards--displayIcons'
,p_group_id=>wwv_flow_api.id(12100696976234960788)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100697386071960788)
,p_theme_id=>42
,p_name=>'DISPLAY_INITIALS'
,p_display_name=>'Display Initials'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(12100694001582960786)
,p_css_classes=>'t-Cards--displayInitials'
,p_group_id=>wwv_flow_api.id(12100696976234960788)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100697599548960788)
,p_theme_id=>42
,p_name=>'DISPLAY_SUBTITLE'
,p_display_name=>'Display Subtitle'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(12100694001582960786)
,p_css_classes=>'t-Cards--displaySubtitle'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100697719554960789)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(12100694001582960786)
,p_css_classes=>'t-Cards--featured force-fa-lg'
,p_group_id=>wwv_flow_api.id(12100690347594960784)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100697968694960789)
,p_theme_id=>42
,p_name=>'BLOCK'
,p_display_name=>'Block'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(12100694001582960786)
,p_css_classes=>'t-Cards--featured t-Cards--block force-fa-lg'
,p_group_id=>wwv_flow_api.id(12100690347594960784)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100698186450960789)
,p_theme_id=>42
,p_name=>'FLOAT'
,p_display_name=>'Float'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(12100694001582960786)
,p_css_classes=>'t-Cards--float'
,p_group_id=>wwv_flow_api.id(12100690709932960784)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100698335049960789)
,p_theme_id=>42
,p_name=>'HIDDEN_BODY_TEXT'
,p_display_name=>'Hidden'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(12100694001582960786)
,p_css_classes=>'t-Cards--hideBody'
,p_group_id=>wwv_flow_api.id(12100696121891960788)
,p_template_types=>'REPORT'
,p_help_text=>'This option hides the card body which contains description and subtext.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100698751599960789)
,p_theme_id=>42
,p_name=>'ICONS_ROUNDED'
,p_display_name=>'Rounded Corners'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(12100694001582960786)
,p_css_classes=>'t-Cards--iconsRounded'
,p_group_id=>wwv_flow_api.id(12100698546974960789)
,p_template_types=>'REPORT'
,p_help_text=>'The icons are displayed within a square with rounded corners.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100698907974960789)
,p_theme_id=>42
,p_name=>'ICONS_SQUARE'
,p_display_name=>'Square'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(12100694001582960786)
,p_css_classes=>'t-Cards--iconsSquare'
,p_group_id=>wwv_flow_api.id(12100698546974960789)
,p_template_types=>'REPORT'
,p_help_text=>'The icons are displayed within a square shape.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100699180053960790)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTALLY'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>70
,p_report_template_id=>wwv_flow_api.id(12100694001582960786)
,p_css_classes=>'t-Cards--spanHorizontally'
,p_group_id=>wwv_flow_api.id(12100690709932960784)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100699320037960790)
,p_theme_id=>42
,p_name=>'USE_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(12100694001582960786)
,p_css_classes=>'u-colors'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100699962473960790)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(12100699419252960790)
,p_css_classes=>'t-Comments--basic'
,p_group_id=>wwv_flow_api.id(12100699715121960790)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100700183133960791)
,p_theme_id=>42
,p_name=>'SPEECH_BUBBLES'
,p_display_name=>'Speech Bubbles'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(12100699419252960790)
,p_css_classes=>'t-Comments--chat'
,p_group_id=>wwv_flow_api.id(12100699715121960790)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100700345308960791)
,p_theme_id=>42
,p_name=>'ICONS_ROUNDED'
,p_display_name=>'Rounded Corners'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(12100699419252960790)
,p_css_classes=>'t-Comments--iconsRounded'
,p_group_id=>wwv_flow_api.id(12100698546974960789)
,p_template_types=>'REPORT'
,p_help_text=>'The icons are displayed within a square with rounded corners.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100700583721960791)
,p_theme_id=>42
,p_name=>'ICONS_SQUARE'
,p_display_name=>'Square'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(12100699419252960790)
,p_css_classes=>'t-Comments--iconsSquare'
,p_group_id=>wwv_flow_api.id(12100698546974960789)
,p_template_types=>'REPORT'
,p_help_text=>'The icons are displayed within a square shape.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100701162213960791)
,p_theme_id=>42
,p_name=>'ALIGNMENT_TOP'
,p_display_name=>'Top'
,p_display_sequence=>100
,p_report_template_id=>wwv_flow_api.id(12100700647906960791)
,p_css_classes=>'t-ContentRow--alignTop'
,p_group_id=>wwv_flow_api.id(12100700950069960791)
,p_template_types=>'REPORT'
,p_help_text=>'Aligns the content to the top of the row. This is useful when you expect that yours rows will vary in height (e.g. some rows will have longer descriptions than others).'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100701564578960792)
,p_theme_id=>42
,p_name=>'ACTIONS_HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(12100700647906960791)
,p_css_classes=>'t-ContentRow--hideActions'
,p_group_id=>wwv_flow_api.id(12100701366067960792)
,p_template_types=>'REPORT'
,p_help_text=>'Hides the Actions column from being rendered on the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100701958172960792)
,p_theme_id=>42
,p_name=>'DESCRIPTION_HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(12100700647906960791)
,p_css_classes=>'t-ContentRow--hideDescription'
,p_group_id=>wwv_flow_api.id(12100701725802960792)
,p_template_types=>'REPORT'
,p_help_text=>'Hides the Description from being rendered on the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100702332019960792)
,p_theme_id=>42
,p_name=>'ICON_HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(12100700647906960791)
,p_css_classes=>'t-ContentRow--hideIcon'
,p_group_id=>wwv_flow_api.id(12100702104567960792)
,p_template_types=>'REPORT'
,p_help_text=>'Hides the Icon from being rendered on the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100702790476960792)
,p_theme_id=>42
,p_name=>'MISC_HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(12100700647906960791)
,p_css_classes=>'t-ContentRow--hideMisc'
,p_group_id=>wwv_flow_api.id(12100702586307960792)
,p_template_types=>'REPORT'
,p_help_text=>'Hides the Misc column from being rendered on the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100703170067960793)
,p_theme_id=>42
,p_name=>'SELECTION_HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(12100700647906960791)
,p_css_classes=>'t-ContentRow--hideSelection'
,p_group_id=>wwv_flow_api.id(12100702990574960793)
,p_template_types=>'REPORT'
,p_help_text=>'Hides the Selection column from being rendered on the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100703512373960793)
,p_theme_id=>42
,p_name=>'TITLE_HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(12100700647906960791)
,p_css_classes=>'t-ContentRow--hideTitle'
,p_group_id=>wwv_flow_api.id(12100703304441960793)
,p_template_types=>'REPORT'
,p_help_text=>'Hides the Title from being rendered on the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100703729079960793)
,p_theme_id=>42
,p_name=>'STYLE_COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_api.id(12100700647906960791)
,p_css_classes=>'t-ContentRow--styleCompact'
,p_group_id=>wwv_flow_api.id(12100690347594960784)
,p_template_types=>'REPORT'
,p_help_text=>'This option reduces the padding and font sizes to present a compact display of the same information.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100704124132960793)
,p_theme_id=>42
,p_name=>'2_COLUMN_GRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(12100703828411960793)
,p_css_classes=>'t-MediaList--cols t-MediaList--2cols'
,p_group_id=>wwv_flow_api.id(12100690709932960784)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100704346904960793)
,p_theme_id=>42
,p_name=>'3_COLUMN_GRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(12100703828411960793)
,p_css_classes=>'t-MediaList--cols t-MediaList--3cols'
,p_group_id=>wwv_flow_api.id(12100690709932960784)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100704593058960793)
,p_theme_id=>42
,p_name=>'4_COLUMN_GRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(12100703828411960793)
,p_css_classes=>'t-MediaList--cols t-MediaList--4cols'
,p_group_id=>wwv_flow_api.id(12100690709932960784)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100704767999960794)
,p_theme_id=>42
,p_name=>'5_COLUMN_GRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(12100703828411960793)
,p_css_classes=>'t-MediaList--cols t-MediaList--5cols'
,p_group_id=>wwv_flow_api.id(12100690709932960784)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100704901707960794)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTAL'
,p_display_name=>'Span Horizontal'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(12100703828411960793)
,p_css_classes=>'t-MediaList--horizontal'
,p_group_id=>wwv_flow_api.id(12100690709932960784)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100705106539960794)
,p_theme_id=>42
,p_name=>'ICONS_ROUNDED'
,p_display_name=>'Rounded Corners'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(12100703828411960793)
,p_css_classes=>'t-MediaList--iconsRounded'
,p_group_id=>wwv_flow_api.id(12100698546974960789)
,p_template_types=>'REPORT'
,p_help_text=>'The icons are displayed within a square with rounded corners.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100705390115960794)
,p_theme_id=>42
,p_name=>'ICONS_SQUARE'
,p_display_name=>'Square'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(12100703828411960793)
,p_css_classes=>'t-MediaList--iconsSquare'
,p_group_id=>wwv_flow_api.id(12100698546974960789)
,p_template_types=>'REPORT'
,p_help_text=>'The icons are displayed within a square shape.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100705786364960794)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(12100703828411960793)
,p_css_classes=>'t-MediaList--large force-fa-lg'
,p_group_id=>wwv_flow_api.id(12100705562319960794)
,p_template_types=>'REPORT'
,p_help_text=>'Increases the size of the text and icons in the list.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100705966950960794)
,p_theme_id=>42
,p_name=>'SHOW_BADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(12100703828411960793)
,p_css_classes=>'t-MediaList--showBadges'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100706121092960794)
,p_theme_id=>42
,p_name=>'SHOW_DESCRIPTION'
,p_display_name=>'Show Description'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(12100703828411960793)
,p_css_classes=>'t-MediaList--showDesc'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100706350820960794)
,p_theme_id=>42
,p_name=>'SHOW_ICONS'
,p_display_name=>'Show Icons'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(12100703828411960793)
,p_css_classes=>'t-MediaList--showIcons'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100706518564960795)
,p_theme_id=>42
,p_name=>'STACK'
,p_display_name=>'Stack'
,p_display_sequence=>5
,p_report_template_id=>wwv_flow_api.id(12100703828411960793)
,p_css_classes=>'t-MediaList--stack'
,p_group_id=>wwv_flow_api.id(12100690709932960784)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100706741525960795)
,p_theme_id=>42
,p_name=>'APPLY_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(12100703828411960793)
,p_css_classes=>'u-colors'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100707592525960795)
,p_theme_id=>42
,p_name=>'ALTROWCOLORSENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(12100707062250960795)
,p_css_classes=>'t-Report--altRowsDefault'
,p_group_id=>wwv_flow_api.id(12100707314524960795)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100707955544960795)
,p_theme_id=>42
,p_name=>'HORIZONTALBORDERS'
,p_display_name=>'Horizontal Only'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(12100707062250960795)
,p_css_classes=>'t-Report--horizontalBorders'
,p_group_id=>wwv_flow_api.id(12100707715621960795)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100708107464960796)
,p_theme_id=>42
,p_name=>'REMOVEOUTERBORDERS'
,p_display_name=>'No Outer Borders'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(12100707062250960795)
,p_css_classes=>'t-Report--inline'
,p_group_id=>wwv_flow_api.id(12100707715621960795)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100708360045960796)
,p_theme_id=>42
,p_name=>'REMOVEALLBORDERS'
,p_display_name=>'No Borders'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(12100707062250960795)
,p_css_classes=>'t-Report--noBorders'
,p_group_id=>wwv_flow_api.id(12100707715621960795)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100708744497960796)
,p_theme_id=>42
,p_name=>'ENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(12100707062250960795)
,p_css_classes=>'t-Report--rowHighlight'
,p_group_id=>wwv_flow_api.id(12100708511523960796)
,p_template_types=>'REPORT'
,p_help_text=>'Enable row highlighting on mouse over'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100708968754960796)
,p_theme_id=>42
,p_name=>'ROWHIGHLIGHTDISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(12100707062250960795)
,p_css_classes=>'t-Report--rowHighlightOff'
,p_group_id=>wwv_flow_api.id(12100708511523960796)
,p_template_types=>'REPORT'
,p_help_text=>'Disable row highlighting on mouse over'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100709113148960796)
,p_theme_id=>42
,p_name=>'ALTROWCOLORSDISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(12100707062250960795)
,p_css_classes=>'t-Report--staticRowColors'
,p_group_id=>wwv_flow_api.id(12100707314524960795)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100709389227960797)
,p_theme_id=>42
,p_name=>'STRETCHREPORT'
,p_display_name=>'Stretch Report'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(12100707062250960795)
,p_css_classes=>'t-Report--stretch'
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100709557445960797)
,p_theme_id=>42
,p_name=>'VERTICALBORDERS'
,p_display_name=>'Vertical Only'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(12100707062250960795)
,p_css_classes=>'t-Report--verticalBorders'
,p_group_id=>wwv_flow_api.id(12100707715621960795)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100709945895960797)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_api.id(12100709681714960797)
,p_css_classes=>'t-Timeline--compact'
,p_group_id=>wwv_flow_api.id(12100690347594960784)
,p_template_types=>'REPORT'
,p_help_text=>'Displays a compact version of timeline with smaller text and fewer columns.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100710552138960798)
,p_theme_id=>42
,p_name=>'FIXED_LARGE'
,p_display_name=>'Fixed - Large'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(12100710018397960797)
,p_css_classes=>'t-AVPList--fixedLabelLarge'
,p_group_id=>wwv_flow_api.id(12100710330768960797)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100710795137960798)
,p_theme_id=>42
,p_name=>'FIXED_MEDIUM'
,p_display_name=>'Fixed - Medium'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(12100710018397960797)
,p_css_classes=>'t-AVPList--fixedLabelMedium'
,p_group_id=>wwv_flow_api.id(12100710330768960797)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100710902567960798)
,p_theme_id=>42
,p_name=>'FIXED_SMALL'
,p_display_name=>'Fixed - Small'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(12100710018397960797)
,p_css_classes=>'t-AVPList--fixedLabelSmall'
,p_group_id=>wwv_flow_api.id(12100710330768960797)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100711172163960798)
,p_theme_id=>42
,p_name=>'LEFT_ALIGNED_DETAILS'
,p_display_name=>'Left Aligned Details'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(12100710018397960797)
,p_css_classes=>'t-AVPList--leftAligned'
,p_group_id=>wwv_flow_api.id(12100690709932960784)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100711321776960798)
,p_theme_id=>42
,p_name=>'RIGHT_ALIGNED_DETAILS'
,p_display_name=>'Right Aligned Details'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(12100710018397960797)
,p_css_classes=>'t-AVPList--rightAligned'
,p_group_id=>wwv_flow_api.id(12100690709932960784)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100711543266960798)
,p_theme_id=>42
,p_name=>'VARIABLE_LARGE'
,p_display_name=>'Variable - Large'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(12100710018397960797)
,p_css_classes=>'t-AVPList--variableLabelLarge'
,p_group_id=>wwv_flow_api.id(12100710330768960797)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100711769473960798)
,p_theme_id=>42
,p_name=>'VARIABLE_MEDIUM'
,p_display_name=>'Variable - Medium'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(12100710018397960797)
,p_css_classes=>'t-AVPList--variableLabelMedium'
,p_group_id=>wwv_flow_api.id(12100710330768960797)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100711950445960798)
,p_theme_id=>42
,p_name=>'VARIABLE_SMALL'
,p_display_name=>'Variable - Small'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(12100710018397960797)
,p_css_classes=>'t-AVPList--variableLabelSmall'
,p_group_id=>wwv_flow_api.id(12100710330768960797)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100712390735960799)
,p_theme_id=>42
,p_name=>'FIXED_LARGE'
,p_display_name=>'Fixed - Large'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(12100712025198960799)
,p_css_classes=>'t-AVPList--fixedLabelLarge'
,p_group_id=>wwv_flow_api.id(12100710330768960797)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100712556094960799)
,p_theme_id=>42
,p_name=>'FIXED_MEDIUM'
,p_display_name=>'Fixed - Medium'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(12100712025198960799)
,p_css_classes=>'t-AVPList--fixedLabelMedium'
,p_group_id=>wwv_flow_api.id(12100710330768960797)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100712783740960799)
,p_theme_id=>42
,p_name=>'FIXED_SMALL'
,p_display_name=>'Fixed - Small'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(12100712025198960799)
,p_css_classes=>'t-AVPList--fixedLabelSmall'
,p_group_id=>wwv_flow_api.id(12100710330768960797)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100712954879960799)
,p_theme_id=>42
,p_name=>'LEFT_ALIGNED_DETAILS'
,p_display_name=>'Left Aligned Details'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(12100712025198960799)
,p_css_classes=>'t-AVPList--leftAligned'
,p_group_id=>wwv_flow_api.id(12100690709932960784)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100713186044960799)
,p_theme_id=>42
,p_name=>'RIGHT_ALIGNED_DETAILS'
,p_display_name=>'Right Aligned Details'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(12100712025198960799)
,p_css_classes=>'t-AVPList--rightAligned'
,p_group_id=>wwv_flow_api.id(12100690709932960784)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100713367879960799)
,p_theme_id=>42
,p_name=>'VARIABLE_LARGE'
,p_display_name=>'Variable - Large'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(12100712025198960799)
,p_css_classes=>'t-AVPList--variableLabelLarge'
,p_group_id=>wwv_flow_api.id(12100710330768960797)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100713593797960800)
,p_theme_id=>42
,p_name=>'VARIABLE_MEDIUM'
,p_display_name=>'Variable - Medium'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(12100712025198960799)
,p_css_classes=>'t-AVPList--variableLabelMedium'
,p_group_id=>wwv_flow_api.id(12100710330768960797)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100713752578960800)
,p_theme_id=>42
,p_name=>'VARIABLE_SMALL'
,p_display_name=>'Variable - Small'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(12100712025198960799)
,p_css_classes=>'t-AVPList--variableLabelSmall'
,p_group_id=>wwv_flow_api.id(12100710330768960797)
,p_template_types=>'REPORT'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100714307190960802)
,p_theme_id=>42
,p_name=>'CIRCULAR'
,p_display_name=>'Circular'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(12100713857286960800)
,p_css_classes=>'t-BadgeList--circular'
,p_group_id=>wwv_flow_api.id(12100714135628960802)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100714753137960802)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(12100713857286960800)
,p_css_classes=>'t-BadgeList--cols'
,p_group_id=>wwv_flow_api.id(12100714544201960802)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a two column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100714972930960802)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(12100713857286960800)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--3cols'
,p_group_id=>wwv_flow_api.id(12100714544201960802)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a 3 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100715138328960802)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(12100713857286960800)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--4cols'
,p_group_id=>wwv_flow_api.id(12100714544201960802)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in 4 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100715387012960803)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(12100713857286960800)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--5cols'
,p_group_id=>wwv_flow_api.id(12100714544201960802)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a 5 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100715500666960803)
,p_theme_id=>42
,p_name=>'GRID'
,p_display_name=>'Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(12100713857286960800)
,p_css_classes=>'t-BadgeList--dash'
,p_group_id=>wwv_flow_api.id(12100714135628960802)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100715704352960803)
,p_theme_id=>42
,p_name=>'FIXED'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_api.id(12100713857286960800)
,p_css_classes=>'t-BadgeList--fixed'
,p_group_id=>wwv_flow_api.id(12100714544201960802)
,p_template_types=>'LIST'
,p_help_text=>'Span badges horizontally'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100715939397960803)
,p_theme_id=>42
,p_name=>'FLEXIBLEBOX'
,p_display_name=>'Flexible Box'
,p_display_sequence=>80
,p_list_template_id=>wwv_flow_api.id(12100713857286960800)
,p_css_classes=>'t-BadgeList--flex'
,p_group_id=>wwv_flow_api.id(12100714544201960802)
,p_template_types=>'LIST'
,p_help_text=>'Use flexbox to arrange items'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100716123554960803)
,p_theme_id=>42
,p_name=>'FLOATITEMS'
,p_display_name=>'Float Items'
,p_display_sequence=>70
,p_list_template_id=>wwv_flow_api.id(12100713857286960800)
,p_css_classes=>'t-BadgeList--float'
,p_group_id=>wwv_flow_api.id(12100714544201960802)
,p_template_types=>'LIST'
,p_help_text=>'Float badges to left'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100716528795960803)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'64px'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(12100713857286960800)
,p_css_classes=>'t-BadgeList--large'
,p_group_id=>wwv_flow_api.id(12100716365394960803)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100716715341960803)
,p_theme_id=>42
,p_name=>'MEDIUM'
,p_display_name=>'48px'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(12100713857286960800)
,p_css_classes=>'t-BadgeList--medium'
,p_group_id=>wwv_flow_api.id(12100716365394960803)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100716932485960803)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'32px'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(12100713857286960800)
,p_css_classes=>'t-BadgeList--small'
,p_group_id=>wwv_flow_api.id(12100716365394960803)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100717172632960804)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(12100713857286960800)
,p_css_classes=>'t-BadgeList--stacked'
,p_group_id=>wwv_flow_api.id(12100714544201960802)
,p_template_types=>'LIST'
,p_help_text=>'Stack badges on top of each other'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100717313489960804)
,p_theme_id=>42
,p_name=>'XLARGE'
,p_display_name=>'96px'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(12100713857286960800)
,p_css_classes=>'t-BadgeList--xlarge'
,p_group_id=>wwv_flow_api.id(12100716365394960803)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100717591221960804)
,p_theme_id=>42
,p_name=>'XXLARGE'
,p_display_name=>'128px'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(12100713857286960800)
,p_css_classes=>'t-BadgeList--xxlarge'
,p_group_id=>wwv_flow_api.id(12100716365394960803)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100717764246960804)
,p_theme_id=>42
,p_name=>'APPLY_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(12100713857286960800)
,p_css_classes=>'u-colors'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100718112548960804)
,p_theme_id=>42
,p_name=>'3_COLUMNS'
,p_display_name=>'3 Columns'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(12100717889787960804)
,p_css_classes=>'t-Cards--3cols'
,p_group_id=>wwv_flow_api.id(12100714544201960802)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100718342107960804)
,p_theme_id=>42
,p_name=>'4_COLUMNS'
,p_display_name=>'4 Columns'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(12100717889787960804)
,p_css_classes=>'t-Cards--4cols'
,p_group_id=>wwv_flow_api.id(12100714544201960802)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100718555840960804)
,p_theme_id=>42
,p_name=>'5_COLUMNS'
,p_display_name=>'5 Columns'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(12100717889787960804)
,p_css_classes=>'t-Cards--5cols'
,p_group_id=>wwv_flow_api.id(12100714544201960802)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100718974719960805)
,p_theme_id=>42
,p_name=>'COLOR_FILL'
,p_display_name=>'Color Fill'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(12100717889787960804)
,p_css_classes=>'t-Cards--animColorFill'
,p_group_id=>wwv_flow_api.id(12100718733847960805)
,p_template_types=>'LIST'
,p_help_text=>'Fills the card background with the color of the icon or default link style.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100719112804960805)
,p_theme_id=>42
,p_name=>'RAISE_CARD'
,p_display_name=>'Raise Card'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(12100717889787960804)
,p_css_classes=>'t-Cards--animRaiseCard'
,p_group_id=>wwv_flow_api.id(12100718733847960805)
,p_template_types=>'LIST'
,p_help_text=>'Raises the card so it pops up.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100719371203960805)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(12100717889787960804)
,p_css_classes=>'t-Cards--basic'
,p_group_id=>wwv_flow_api.id(12100714135628960802)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100719530405960805)
,p_theme_id=>42
,p_name=>'2_COLUMNS'
,p_display_name=>'2 Columns'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(12100717889787960804)
,p_css_classes=>'t-Cards--cols'
,p_group_id=>wwv_flow_api.id(12100714544201960802)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100719737853960805)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(12100717889787960804)
,p_css_classes=>'t-Cards--compact'
,p_group_id=>wwv_flow_api.id(12100714135628960802)
,p_template_types=>'LIST'
,p_help_text=>'Use this option when you want to show smaller cards.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100720135381960805)
,p_theme_id=>42
,p_name=>'2_LINES'
,p_display_name=>'2 Lines'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(12100717889787960804)
,p_css_classes=>'t-Cards--desc-2ln'
,p_group_id=>wwv_flow_api.id(12100719939745960805)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100720387654960806)
,p_theme_id=>42
,p_name=>'3_LINES'
,p_display_name=>'3 Lines'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(12100717889787960804)
,p_css_classes=>'t-Cards--desc-3ln'
,p_group_id=>wwv_flow_api.id(12100719939745960805)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100720551043960806)
,p_theme_id=>42
,p_name=>'4_LINES'
,p_display_name=>'4 Lines'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(12100717889787960804)
,p_css_classes=>'t-Cards--desc-4ln'
,p_group_id=>wwv_flow_api.id(12100719939745960805)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100720908666960806)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(12100717889787960804)
,p_css_classes=>'t-Cards--displayIcons'
,p_group_id=>wwv_flow_api.id(12100720719858960806)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100721119905960806)
,p_theme_id=>42
,p_name=>'DISPLAY_INITIALS'
,p_display_name=>'Display Initials'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(12100717889787960804)
,p_css_classes=>'t-Cards--displayInitials'
,p_group_id=>wwv_flow_api.id(12100720719858960806)
,p_template_types=>'LIST'
,p_help_text=>'Initials come from List Attribute 3'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100721335220960806)
,p_theme_id=>42
,p_name=>'DISPLAY_SUBTITLE'
,p_display_name=>'Display Subtitle'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(12100717889787960804)
,p_css_classes=>'t-Cards--displaySubtitle'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100721529365960806)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(12100717889787960804)
,p_css_classes=>'t-Cards--featured force-fa-lg'
,p_group_id=>wwv_flow_api.id(12100714135628960802)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100721700118960806)
,p_theme_id=>42
,p_name=>'BLOCK'
,p_display_name=>'Block'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(12100717889787960804)
,p_css_classes=>'t-Cards--featured t-Cards--block force-fa-lg'
,p_group_id=>wwv_flow_api.id(12100714135628960802)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100721978440960807)
,p_theme_id=>42
,p_name=>'FLOAT'
,p_display_name=>'Float'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_api.id(12100717889787960804)
,p_css_classes=>'t-Cards--float'
,p_group_id=>wwv_flow_api.id(12100714544201960802)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100722195848960807)
,p_theme_id=>42
,p_name=>'HIDDEN_BODY_TEXT'
,p_display_name=>'Hidden'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(12100717889787960804)
,p_css_classes=>'t-Cards--hideBody'
,p_group_id=>wwv_flow_api.id(12100719939745960805)
,p_template_types=>'LIST'
,p_help_text=>'This option hides the card body which contains description and subtext.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100722572110960807)
,p_theme_id=>42
,p_name=>'ICONS_ROUNDED'
,p_display_name=>'Rounded Corners'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(12100717889787960804)
,p_css_classes=>'t-Cards--iconsRounded'
,p_group_id=>wwv_flow_api.id(12100722354508960807)
,p_template_types=>'LIST'
,p_help_text=>'The icons are displayed within a square with rounded corners.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100722777046960807)
,p_theme_id=>42
,p_name=>'ICONS_SQUARE'
,p_display_name=>'Square'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(12100717889787960804)
,p_css_classes=>'t-Cards--iconsSquare'
,p_group_id=>wwv_flow_api.id(12100722354508960807)
,p_template_types=>'LIST'
,p_help_text=>'The icons are displayed within a square shape.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100722954187960807)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTALLY'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>70
,p_list_template_id=>wwv_flow_api.id(12100717889787960804)
,p_css_classes=>'t-Cards--spanHorizontally'
,p_group_id=>wwv_flow_api.id(12100714544201960802)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100723130316960807)
,p_theme_id=>42
,p_name=>'CARDS_STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>5
,p_list_template_id=>wwv_flow_api.id(12100717889787960804)
,p_css_classes=>'t-Cards--stacked'
,p_group_id=>wwv_flow_api.id(12100714544201960802)
,p_template_types=>'LIST'
,p_help_text=>'Stacks the cards on top of each other.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100723305785960807)
,p_theme_id=>42
,p_name=>'USE_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(12100717889787960804)
,p_css_classes=>'u-colors'
,p_template_types=>'LIST'
,p_help_text=>'Applies the colors from the theme''s color palette to the icons or initials within cards.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100723765771960808)
,p_theme_id=>42
,p_name=>'ACTIONS'
,p_display_name=>'Actions'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(12100723423560960807)
,p_css_classes=>'t-LinksList--actions'
,p_group_id=>wwv_flow_api.id(12100714135628960802)
,p_template_types=>'LIST'
,p_help_text=>'Render as actions to be placed on the right side column.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100723922198960808)
,p_theme_id=>42
,p_name=>'DISABLETEXTWRAPPING'
,p_display_name=>'Disable Text Wrapping'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(12100723423560960807)
,p_css_classes=>'t-LinksList--nowrap'
,p_template_types=>'LIST'
,p_help_text=>'Do not allow link text to wrap to new lines. Truncate with ellipsis.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100724176257960808)
,p_theme_id=>42
,p_name=>'SHOWGOTOARROW'
,p_display_name=>'Show Right Arrow'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(12100723423560960807)
,p_css_classes=>'t-LinksList--showArrow'
,p_template_types=>'LIST'
,p_help_text=>'Show arrow to the right of link'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100724386879960808)
,p_theme_id=>42
,p_name=>'SHOWBADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(12100723423560960807)
,p_css_classes=>'t-LinksList--showBadge'
,p_template_types=>'LIST'
,p_help_text=>'Show badge to right of link (requires Attribute 1 to be populated)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100724766922960808)
,p_theme_id=>42
,p_name=>'SHOWICONS'
,p_display_name=>'For All Items'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(12100723423560960807)
,p_css_classes=>'t-LinksList--showIcons'
,p_group_id=>wwv_flow_api.id(12100724506091960808)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100724912361960808)
,p_theme_id=>42
,p_name=>'SHOWTOPICONS'
,p_display_name=>'For Top Level Items Only'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(12100723423560960807)
,p_css_classes=>'t-LinksList--showTopIcons'
,p_group_id=>wwv_flow_api.id(12100724506091960808)
,p_template_types=>'LIST'
,p_help_text=>'This will show icons for top level items of the list only. It will not show icons for sub lists.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100725378457960809)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(12100725081101960809)
,p_css_classes=>'t-MediaList--cols t-MediaList--2cols'
,p_group_id=>wwv_flow_api.id(12100714544201960802)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100725526788960809)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(12100725081101960809)
,p_css_classes=>'t-MediaList--cols t-MediaList--3cols'
,p_group_id=>wwv_flow_api.id(12100714544201960802)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100725742037960809)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(12100725081101960809)
,p_css_classes=>'t-MediaList--cols t-MediaList--4cols'
,p_group_id=>wwv_flow_api.id(12100714544201960802)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100725988203960809)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(12100725081101960809)
,p_css_classes=>'t-MediaList--cols t-MediaList--5cols'
,p_group_id=>wwv_flow_api.id(12100714544201960802)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100726143257960809)
,p_theme_id=>42
,p_name=>'SPANHORIZONTAL'
,p_display_name=>'Span Horizontal'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(12100725081101960809)
,p_css_classes=>'t-MediaList--horizontal'
,p_group_id=>wwv_flow_api.id(12100714544201960802)
,p_template_types=>'LIST'
,p_help_text=>'Show all list items in one horizontal row.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100726329783960809)
,p_theme_id=>42
,p_name=>'ICONS_ROUNDED'
,p_display_name=>'Rounded Corners'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(12100725081101960809)
,p_css_classes=>'t-MediaList--iconsRounded'
,p_group_id=>wwv_flow_api.id(12100722354508960807)
,p_template_types=>'LIST'
,p_help_text=>'The icons are displayed within a square with rounded corners.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100726581392960810)
,p_theme_id=>42
,p_name=>'ICONS_SQUARE'
,p_display_name=>'Square'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(12100725081101960809)
,p_css_classes=>'t-MediaList--iconsSquare'
,p_group_id=>wwv_flow_api.id(12100722354508960807)
,p_template_types=>'LIST'
,p_help_text=>'The icons are displayed within a square shape.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100726904711960810)
,p_theme_id=>42
,p_name=>'LIST_SIZE_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(12100725081101960809)
,p_css_classes=>'t-MediaList--large force-fa-lg'
,p_group_id=>wwv_flow_api.id(12100726714221960810)
,p_template_types=>'LIST'
,p_help_text=>'Increases the size of the text and icons in the list.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100727183457960810)
,p_theme_id=>42
,p_name=>'SHOW_BADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(12100725081101960809)
,p_css_classes=>'t-MediaList--showBadges'
,p_template_types=>'LIST'
,p_help_text=>'Show a badge (Attribute 2) to the right of the list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100727382610960810)
,p_theme_id=>42
,p_name=>'SHOW_DESCRIPTION'
,p_display_name=>'Show Description'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(12100725081101960809)
,p_css_classes=>'t-MediaList--showDesc'
,p_template_types=>'LIST'
,p_help_text=>'Shows the description (Attribute 1) for each list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100727525668960810)
,p_theme_id=>42
,p_name=>'SHOW_ICONS'
,p_display_name=>'Show Icons'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(12100725081101960809)
,p_css_classes=>'t-MediaList--showIcons'
,p_template_types=>'LIST'
,p_help_text=>'Display an icon next to the list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100727757409960810)
,p_theme_id=>42
,p_name=>'APPLY_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(12100725081101960809)
,p_css_classes=>'u-colors'
,p_template_types=>'LIST'
,p_help_text=>'Applies colors from the Theme''s color palette to icons in the list.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100728165585960810)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(12100727810142960810)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add shortcuts for menu items. Note that actions.js must be included on your page to support this functionality.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100728347544960811)
,p_theme_id=>42
,p_name=>'DISPLAY_MENU_CALLOUT'
,p_display_name=>'Display Menu Callout'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(12100727810142960810)
,p_css_classes=>'js-menu-callout'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add display a callout for the menu.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100728599941960811)
,p_theme_id=>42
,p_name=>'SHOW_SUB_MENU_ICONS'
,p_display_name=>'Show Sub Menu Icons'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(12100727810142960810)
,p_css_classes=>'js-showSubMenuIcons'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100728762849960811)
,p_theme_id=>42
,p_name=>'ENABLE_SLIDE_ANIMATION'
,p_display_name=>'Enable Slide Animation'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(12100727810142960810)
,p_css_classes=>'js-slide'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100728951219960811)
,p_theme_id=>42
,p_name=>'BEHAVE_LIKE_TABS'
,p_display_name=>'Behave Like Tabs'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(12100727810142960810)
,p_css_classes=>'js-tabLike'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100729376272960811)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(12100729044234960811)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Enables you to define a keyboard shortcut to activate the menu item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100729587757960811)
,p_theme_id=>42
,p_name=>'DISPLAY_MENU_CALLOUT'
,p_display_name=>'Display Menu Callout'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(12100729044234960811)
,p_css_classes=>'js-menu-callout'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add display a callout for the menu. Note that callout will only be displayed if the data-parent-element custom attribute is defined.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100729910685960812)
,p_theme_id=>42
,p_name=>'DISPLAY_MENU_CALLOUT'
,p_display_name=>'Display Menu Callout'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(12100729638990960811)
,p_css_classes=>'js-menu-callout'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add display a callout for the menu.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100730367392960812)
,p_theme_id=>42
,p_name=>'COLLAPSED_DEFAULT'
,p_display_name=>'Collapsed by Default'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(12100730091875960812)
,p_css_classes=>'js-defaultCollapsed'
,p_template_types=>'LIST'
,p_help_text=>'This option will load the side navigation menu in a collapsed state by default.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100730726736960812)
,p_theme_id=>42
,p_name=>'ICON_DEFAULT'
,p_display_name=>'Icon (Default)'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(12100730091875960812)
,p_css_classes=>'js-navCollapsed--default'
,p_group_id=>wwv_flow_api.id(12100730581064960812)
,p_template_types=>'LIST'
,p_help_text=>'Display icons when the navigation menu is collapsed for large screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100730907890960812)
,p_theme_id=>42
,p_name=>'COLLAPSE_STYLE_HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(12100730091875960812)
,p_css_classes=>'js-navCollapsed--hidden'
,p_group_id=>wwv_flow_api.id(12100730581064960812)
,p_template_types=>'LIST'
,p_help_text=>'Completely hide the navigation menu when it is collapsed.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100731129916960812)
,p_theme_id=>42
,p_name=>'STYLE_C'
,p_display_name=>'Classic'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(12100730091875960812)
,p_css_classes=>'t-TreeNav--classic'
,p_group_id=>wwv_flow_api.id(12100714135628960802)
,p_template_types=>'LIST'
,p_help_text=>'Classic Style'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100731392338960812)
,p_theme_id=>42
,p_name=>'STYLE_A'
,p_display_name=>'Style A'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(12100730091875960812)
,p_css_classes=>'t-TreeNav--styleA'
,p_group_id=>wwv_flow_api.id(12100714135628960802)
,p_template_types=>'LIST'
,p_help_text=>'Style Variation A'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100731581604960813)
,p_theme_id=>42
,p_name=>'STYLE_B'
,p_display_name=>'Style B'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(12100730091875960812)
,p_css_classes=>'t-TreeNav--styleB'
,p_group_id=>wwv_flow_api.id(12100714135628960802)
,p_template_types=>'LIST'
,p_help_text=>'Style Variation B'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100731982169960813)
,p_theme_id=>42
,p_name=>'FILL_LABELS'
,p_display_name=>'Fill Labels'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(12100731620329960813)
,p_css_classes=>'t-Tabs--fillLabels'
,p_group_id=>wwv_flow_api.id(12100714544201960802)
,p_template_types=>'LIST'
,p_help_text=>'Stretch tabs to fill to the width of the tabs container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100732110223960813)
,p_theme_id=>42
,p_name=>'ABOVE_LABEL'
,p_display_name=>'Above Label'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(12100731620329960813)
,p_css_classes=>'t-Tabs--iconsAbove'
,p_group_id=>wwv_flow_api.id(12100720719858960806)
,p_template_types=>'LIST'
,p_help_text=>'Places icons above tab label.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100732391076960813)
,p_theme_id=>42
,p_name=>'INLINE_WITH_LABEL'
,p_display_name=>'Inline with Label'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(12100731620329960813)
,p_css_classes=>'t-Tabs--inlineIcons'
,p_group_id=>wwv_flow_api.id(12100720719858960806)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100732519910960813)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(12100731620329960813)
,p_css_classes=>'t-Tabs--large'
,p_group_id=>wwv_flow_api.id(12100726714221960810)
,p_template_types=>'LIST'
,p_help_text=>'Increases font size and white space around tab items.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100732788580960813)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Pill'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(12100731620329960813)
,p_css_classes=>'t-Tabs--pill'
,p_group_id=>wwv_flow_api.id(12100714135628960802)
,p_template_types=>'LIST'
,p_help_text=>'Displays tabs in a pill container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100732900544960813)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(12100731620329960813)
,p_css_classes=>'t-Tabs--simple'
,p_group_id=>wwv_flow_api.id(12100714135628960802)
,p_template_types=>'LIST'
,p_help_text=>'A very simplistic tab UI.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100733151939960813)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>5
,p_list_template_id=>wwv_flow_api.id(12100731620329960813)
,p_css_classes=>'t-Tabs--small'
,p_group_id=>wwv_flow_api.id(12100726714221960810)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100733527918960814)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(12100733214017960814)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add shortcuts for menu items. Note that actions.js must be included on your page to support this functionality.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100733752928960814)
,p_theme_id=>42
,p_name=>'DISPLAY_MENU_CALLOUT'
,p_display_name=>'Display Menu Callout'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(12100733214017960814)
,p_css_classes=>'js-menu-callout'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add display a callout for the menu.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100733940017960814)
,p_theme_id=>42
,p_name=>'SHOW_SUB_MENU_ICONS'
,p_display_name=>'Show Sub Menu Icons'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(12100733214017960814)
,p_css_classes=>'js-showSubMenuIcons'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100734164211960814)
,p_theme_id=>42
,p_name=>'ENABLE_SLIDE_ANIMATION'
,p_display_name=>'Enable Slide Animation'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(12100733214017960814)
,p_css_classes=>'js-slide'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100734318220960814)
,p_theme_id=>42
,p_name=>'BEHAVE_LIKE_TABS'
,p_display_name=>'Behave Like Tabs'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(12100733214017960814)
,p_css_classes=>'js-tabLike'
,p_template_types=>'LIST'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100734973295960815)
,p_theme_id=>42
,p_name=>'DISPLAY_LABELS_SM'
,p_display_name=>'Display labels'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(12100734475296960814)
,p_css_classes=>'t-NavTabs--displayLabels-sm'
,p_group_id=>wwv_flow_api.id(12100734764895960814)
,p_template_types=>'LIST'
,p_help_text=>'Displays the label for the list items below the icon'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100735382767960815)
,p_theme_id=>42
,p_name=>'NO_LABEL_LG'
,p_display_name=>'Do not display labels'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(12100734475296960814)
,p_css_classes=>'t-NavTabs--hiddenLabels-lg'
,p_group_id=>wwv_flow_api.id(12100735134368960815)
,p_template_types=>'LIST'
,p_help_text=>'Hides the label for the list item'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100735554757960815)
,p_theme_id=>42
,p_name=>'HIDE_LABELS_SM'
,p_display_name=>'Do not display labels'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(12100734475296960814)
,p_css_classes=>'t-NavTabs--hiddenLabels-sm'
,p_group_id=>wwv_flow_api.id(12100734764895960814)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100735744971960815)
,p_theme_id=>42
,p_name=>'LABEL_INLINE_LG'
,p_display_name=>'Display labels inline'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(12100734475296960814)
,p_css_classes=>'t-NavTabs--inlineLabels-lg'
,p_group_id=>wwv_flow_api.id(12100735134368960815)
,p_template_types=>'LIST'
,p_help_text=>'Display the label inline with the icon and badge'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100735987459960815)
,p_theme_id=>42
,p_name=>'LABEL_ABOVE_LG'
,p_display_name=>'Display labels above'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(12100734475296960814)
,p_css_classes=>'t-NavTabs--stacked'
,p_group_id=>wwv_flow_api.id(12100735134368960815)
,p_template_types=>'LIST'
,p_help_text=>'Display the label stacked above the icon and badge'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100736378827960816)
,p_theme_id=>42
,p_name=>'WIZARD_PROGRESS_LINKS'
,p_display_name=>'Make Wizard Steps Clickable'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(12100736029988960815)
,p_css_classes=>'js-wizardProgressLinks'
,p_template_types=>'LIST'
,p_help_text=>'This option will make the wizard steps clickable links.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100736763671960816)
,p_theme_id=>42
,p_name=>'CURRENTSTEPONLY'
,p_display_name=>'Current Step Only'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(12100736029988960815)
,p_css_classes=>'t-WizardSteps--displayCurrentLabelOnly'
,p_group_id=>wwv_flow_api.id(12100736540295960816)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100736959414960816)
,p_theme_id=>42
,p_name=>'ALLSTEPS'
,p_display_name=>'All Steps'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(12100736029988960815)
,p_css_classes=>'t-WizardSteps--displayLabels'
,p_group_id=>wwv_flow_api.id(12100736540295960816)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100737180940960816)
,p_theme_id=>42
,p_name=>'HIDELABELS'
,p_display_name=>'Hide Labels'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(12100736029988960815)
,p_css_classes=>'t-WizardSteps--hideLabels'
,p_group_id=>wwv_flow_api.id(12100736540295960816)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100737305422960816)
,p_theme_id=>42
,p_name=>'VERTICAL_LIST'
,p_display_name=>'Vertical Orientation'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(12100736029988960815)
,p_css_classes=>'t-WizardSteps--vertical'
,p_template_types=>'LIST'
,p_help_text=>'Displays the wizard progress list in a vertical orientation and is suitable for displaying within a side column of a page.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100738501505960817)
,p_theme_id=>42
,p_name=>'PUSH'
,p_display_name=>'Push'
,p_display_sequence=>20
,p_button_template_id=>wwv_flow_api.id(12100738113074960817)
,p_css_classes=>'t-Button--hoverIconPush'
,p_group_id=>wwv_flow_api.id(12100738375892960817)
,p_template_types=>'BUTTON'
,p_help_text=>'The icon will animate to the right or left on button hover or focus.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100738766653960818)
,p_theme_id=>42
,p_name=>'SPIN'
,p_display_name=>'Spin'
,p_display_sequence=>10
,p_button_template_id=>wwv_flow_api.id(12100738113074960817)
,p_css_classes=>'t-Button--hoverIconSpin'
,p_group_id=>wwv_flow_api.id(12100738375892960817)
,p_template_types=>'BUTTON'
,p_help_text=>'The icon will spin on button hover or focus.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100739106290960818)
,p_theme_id=>42
,p_name=>'PUSH'
,p_display_name=>'Push'
,p_display_sequence=>20
,p_button_template_id=>wwv_flow_api.id(12100738926227960818)
,p_css_classes=>'t-Button--hoverIconPush'
,p_group_id=>wwv_flow_api.id(12100738375892960817)
,p_template_types=>'BUTTON'
,p_help_text=>'The icon will animate to the right or left on button hover or focus.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100739321051960818)
,p_theme_id=>42
,p_name=>'SPIN'
,p_display_name=>'Spin'
,p_display_sequence=>10
,p_button_template_id=>wwv_flow_api.id(12100738926227960818)
,p_css_classes=>'t-Button--hoverIconSpin'
,p_group_id=>wwv_flow_api.id(12100738375892960817)
,p_template_types=>'BUTTON'
,p_help_text=>'The icon will spin on button hover or focus.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100739802152960818)
,p_theme_id=>42
,p_name=>'LEFTICON'
,p_display_name=>'Left'
,p_display_sequence=>10
,p_button_template_id=>wwv_flow_api.id(12100738926227960818)
,p_css_classes=>'t-Button--iconLeft'
,p_group_id=>wwv_flow_api.id(12100739603634960818)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100740078453960818)
,p_theme_id=>42
,p_name=>'RIGHTICON'
,p_display_name=>'Right'
,p_display_sequence=>20
,p_button_template_id=>wwv_flow_api.id(12100738926227960818)
,p_css_classes=>'t-Button--iconRight'
,p_group_id=>wwv_flow_api.id(12100739603634960818)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100740248960960819)
,p_theme_id=>42
,p_name=>'HIDE_LABEL_ON_MOBILE'
,p_display_name=>'Hide Label on Mobile'
,p_display_sequence=>10
,p_button_template_id=>wwv_flow_api.id(12100738926227960818)
,p_css_classes=>'t-Button--mobileHideLabel'
,p_template_types=>'BUTTON'
,p_help_text=>'This template options hides the button label on small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100742149632960824)
,p_theme_id=>42
,p_name=>'FBM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-bottom-lg'
,p_group_id=>wwv_flow_api.id(12100741954616960823)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a large bottom margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100742587237960824)
,p_theme_id=>42
,p_name=>'RBM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-bottom-lg'
,p_group_id=>wwv_flow_api.id(12100742316458960824)
,p_template_types=>'REGION'
,p_help_text=>'Adds a large bottom margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100742736973960824)
,p_theme_id=>42
,p_name=>'FBM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-bottom-md'
,p_group_id=>wwv_flow_api.id(12100741954616960823)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a medium bottom margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100742971110960824)
,p_theme_id=>42
,p_name=>'RBM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-bottom-md'
,p_group_id=>wwv_flow_api.id(12100742316458960824)
,p_template_types=>'REGION'
,p_help_text=>'Adds a medium bottom margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100743171850960824)
,p_theme_id=>42
,p_name=>'FBM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-bottom-none'
,p_group_id=>wwv_flow_api.id(12100741954616960823)
,p_template_types=>'FIELD'
,p_help_text=>'Removes the bottom margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100743365206960824)
,p_theme_id=>42
,p_name=>'RBM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-bottom-none'
,p_group_id=>wwv_flow_api.id(12100742316458960824)
,p_template_types=>'REGION'
,p_help_text=>'Removes the bottom margin for this region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100743502556960824)
,p_theme_id=>42
,p_name=>'FBM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-bottom-sm'
,p_group_id=>wwv_flow_api.id(12100741954616960823)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a small bottom margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100743708653960825)
,p_theme_id=>42
,p_name=>'RBM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-bottom-sm'
,p_group_id=>wwv_flow_api.id(12100742316458960824)
,p_template_types=>'REGION'
,p_help_text=>'Adds a small bottom margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100744173706960825)
,p_theme_id=>42
,p_name=>'FLM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-left-lg'
,p_group_id=>wwv_flow_api.id(12100743946073960825)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a large left margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100744561168960825)
,p_theme_id=>42
,p_name=>'RLM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-left-lg'
,p_group_id=>wwv_flow_api.id(12100744365933960825)
,p_template_types=>'REGION'
,p_help_text=>'Adds a large right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100744719040960825)
,p_theme_id=>42
,p_name=>'FLM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-left-md'
,p_group_id=>wwv_flow_api.id(12100743946073960825)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a medium left margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100744986454960825)
,p_theme_id=>42
,p_name=>'RLM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-left-md'
,p_group_id=>wwv_flow_api.id(12100744365933960825)
,p_template_types=>'REGION'
,p_help_text=>'Adds a medium right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100745120857960825)
,p_theme_id=>42
,p_name=>'FLM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-left-none'
,p_group_id=>wwv_flow_api.id(12100743946073960825)
,p_template_types=>'FIELD'
,p_help_text=>'Removes the left margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100745314271960825)
,p_theme_id=>42
,p_name=>'RLM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-left-none'
,p_group_id=>wwv_flow_api.id(12100744365933960825)
,p_template_types=>'REGION'
,p_help_text=>'Removes the left margin from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100745596985960826)
,p_theme_id=>42
,p_name=>'FLM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-left-sm'
,p_group_id=>wwv_flow_api.id(12100743946073960825)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a small left margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100745795203960826)
,p_theme_id=>42
,p_name=>'RLM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-left-sm'
,p_group_id=>wwv_flow_api.id(12100744365933960825)
,p_template_types=>'REGION'
,p_help_text=>'Adds a small left margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100746173881960826)
,p_theme_id=>42
,p_name=>'FRM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-right-lg'
,p_group_id=>wwv_flow_api.id(12100745905452960826)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a large right margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100746595438960826)
,p_theme_id=>42
,p_name=>'RRM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-right-lg'
,p_group_id=>wwv_flow_api.id(12100746345713960826)
,p_template_types=>'REGION'
,p_help_text=>'Adds a large right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100746719726960826)
,p_theme_id=>42
,p_name=>'FRM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-right-md'
,p_group_id=>wwv_flow_api.id(12100745905452960826)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a medium right margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100746984839960826)
,p_theme_id=>42
,p_name=>'RRM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-right-md'
,p_group_id=>wwv_flow_api.id(12100746345713960826)
,p_template_types=>'REGION'
,p_help_text=>'Adds a medium right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100747186026960826)
,p_theme_id=>42
,p_name=>'FRM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-right-none'
,p_group_id=>wwv_flow_api.id(12100745905452960826)
,p_template_types=>'FIELD'
,p_help_text=>'Removes the right margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100747372265960827)
,p_theme_id=>42
,p_name=>'RRM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-right-none'
,p_group_id=>wwv_flow_api.id(12100746345713960826)
,p_template_types=>'REGION'
,p_help_text=>'Removes the right margin from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100747530036960827)
,p_theme_id=>42
,p_name=>'FRM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-right-sm'
,p_group_id=>wwv_flow_api.id(12100745905452960826)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a small right margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100747723079960827)
,p_theme_id=>42
,p_name=>'RRM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-right-sm'
,p_group_id=>wwv_flow_api.id(12100746345713960826)
,p_template_types=>'REGION'
,p_help_text=>'Adds a small right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100748119440960827)
,p_theme_id=>42
,p_name=>'FTM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-top-lg'
,p_group_id=>wwv_flow_api.id(12100747911324960827)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a large top margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100748537488960827)
,p_theme_id=>42
,p_name=>'RTM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-top-lg'
,p_group_id=>wwv_flow_api.id(12100748314523960827)
,p_template_types=>'REGION'
,p_help_text=>'Adds a large top margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100748717288960827)
,p_theme_id=>42
,p_name=>'FTM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-top-md'
,p_group_id=>wwv_flow_api.id(12100747911324960827)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a medium top margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100748945159960827)
,p_theme_id=>42
,p_name=>'RTM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-top-md'
,p_group_id=>wwv_flow_api.id(12100748314523960827)
,p_template_types=>'REGION'
,p_help_text=>'Adds a medium top margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100749127868960828)
,p_theme_id=>42
,p_name=>'FTM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-top-none'
,p_group_id=>wwv_flow_api.id(12100747911324960827)
,p_template_types=>'FIELD'
,p_help_text=>'Removes the top margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100749338789960828)
,p_theme_id=>42
,p_name=>'RTM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-top-none'
,p_group_id=>wwv_flow_api.id(12100748314523960827)
,p_template_types=>'REGION'
,p_help_text=>'Removes the top margin for this region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100749543645960828)
,p_theme_id=>42
,p_name=>'FTM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-top-sm'
,p_group_id=>wwv_flow_api.id(12100747911324960827)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a small top margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100749798460960828)
,p_theme_id=>42
,p_name=>'RTM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-top-sm'
,p_group_id=>wwv_flow_api.id(12100748314523960827)
,p_template_types=>'REGION'
,p_help_text=>'Adds a small top margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100750124483960828)
,p_theme_id=>42
,p_name=>'DANGER'
,p_display_name=>'Danger'
,p_display_sequence=>30
,p_css_classes=>'t-Button--danger'
,p_group_id=>wwv_flow_api.id(12100749921793960828)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100750595857960828)
,p_theme_id=>42
,p_name=>'LARGEBOTTOMMARGIN'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapBottom'
,p_group_id=>wwv_flow_api.id(12100750392914960828)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100750969423960829)
,p_theme_id=>42
,p_name=>'LARGELEFTMARGIN'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapLeft'
,p_group_id=>wwv_flow_api.id(12100750726065960828)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100751377878960829)
,p_theme_id=>42
,p_name=>'LARGERIGHTMARGIN'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapRight'
,p_group_id=>wwv_flow_api.id(12100751187048960829)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100751739999960829)
,p_theme_id=>42
,p_name=>'LARGETOPMARGIN'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapTop'
,p_group_id=>wwv_flow_api.id(12100751557563960829)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100752123414960829)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>30
,p_css_classes=>'t-Button--large'
,p_group_id=>wwv_flow_api.id(12100751941561960829)
,p_template_types=>'BUTTON'
,p_help_text=>'A large button.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100752593935960829)
,p_theme_id=>42
,p_name=>'DISPLAY_AS_LINK'
,p_display_name=>'Display as Link'
,p_display_sequence=>30
,p_css_classes=>'t-Button--link'
,p_group_id=>wwv_flow_api.id(12100752379902960829)
,p_template_types=>'BUTTON'
,p_help_text=>'This option makes the button appear as a text link.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100752715575960830)
,p_theme_id=>42
,p_name=>'NOUI'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>20
,p_css_classes=>'t-Button--noUI'
,p_group_id=>wwv_flow_api.id(12100752379902960829)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100752957758960830)
,p_theme_id=>42
,p_name=>'SMALLBOTTOMMARGIN'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padBottom'
,p_group_id=>wwv_flow_api.id(12100750392914960828)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100753139299960830)
,p_theme_id=>42
,p_name=>'SMALLLEFTMARGIN'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padLeft'
,p_group_id=>wwv_flow_api.id(12100750726065960828)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100753353879960830)
,p_theme_id=>42
,p_name=>'SMALLRIGHTMARGIN'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padRight'
,p_group_id=>wwv_flow_api.id(12100751187048960829)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100753547986960830)
,p_theme_id=>42
,p_name=>'SMALLTOPMARGIN'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padTop'
,p_group_id=>wwv_flow_api.id(12100751557563960829)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100753973447960830)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Inner Button'
,p_display_sequence=>20
,p_css_classes=>'t-Button--pill'
,p_group_id=>wwv_flow_api.id(12100753712041960830)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100754100937960830)
,p_theme_id=>42
,p_name=>'PILLEND'
,p_display_name=>'Last Button'
,p_display_sequence=>30
,p_css_classes=>'t-Button--pillEnd'
,p_group_id=>wwv_flow_api.id(12100753712041960830)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100754391266960831)
,p_theme_id=>42
,p_name=>'PILLSTART'
,p_display_name=>'First Button'
,p_display_sequence=>10
,p_css_classes=>'t-Button--pillStart'
,p_group_id=>wwv_flow_api.id(12100753712041960830)
,p_template_types=>'BUTTON'
,p_help_text=>'Use this for the start of a pill button.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100754530929960831)
,p_theme_id=>42
,p_name=>'PRIMARY'
,p_display_name=>'Primary'
,p_display_sequence=>10
,p_css_classes=>'t-Button--primary'
,p_group_id=>wwv_flow_api.id(12100749921793960828)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100754719489960831)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_css_classes=>'t-Button--simple'
,p_group_id=>wwv_flow_api.id(12100752379902960829)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100754992659960831)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'t-Button--small'
,p_group_id=>wwv_flow_api.id(12100751941561960829)
,p_template_types=>'BUTTON'
,p_help_text=>'A small button.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100755395821960831)
,p_theme_id=>42
,p_name=>'STRETCH'
,p_display_name=>'Stretch'
,p_display_sequence=>10
,p_css_classes=>'t-Button--stretch'
,p_group_id=>wwv_flow_api.id(12100755172168960831)
,p_template_types=>'BUTTON'
,p_help_text=>'Stretches button to fill container'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100755592669960831)
,p_theme_id=>42
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>40
,p_css_classes=>'t-Button--success'
,p_group_id=>wwv_flow_api.id(12100749921793960828)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100755762430960831)
,p_theme_id=>42
,p_name=>'TINY'
,p_display_name=>'Tiny'
,p_display_sequence=>10
,p_css_classes=>'t-Button--tiny'
,p_group_id=>wwv_flow_api.id(12100751941561960829)
,p_template_types=>'BUTTON'
,p_help_text=>'A very small button.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100755905569960832)
,p_theme_id=>42
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>20
,p_css_classes=>'t-Button--warning'
,p_group_id=>wwv_flow_api.id(12100749921793960828)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100756326225960832)
,p_theme_id=>42
,p_name=>'SHOWFORMLABELSABOVE'
,p_display_name=>'Show Form Labels Above'
,p_display_sequence=>10
,p_css_classes=>'t-Form--labelsAbove'
,p_group_id=>wwv_flow_api.id(12100756138543960832)
,p_template_types=>'REGION'
,p_help_text=>'Show form labels above input fields.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100756715460960832)
,p_theme_id=>42
,p_name=>'FORMSIZELARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_css_classes=>'t-Form--large'
,p_group_id=>wwv_flow_api.id(12100756567592960832)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100757122174960832)
,p_theme_id=>42
,p_name=>'FORMLEFTLABELS'
,p_display_name=>'Left'
,p_display_sequence=>20
,p_css_classes=>'t-Form--leftLabels'
,p_group_id=>wwv_flow_api.id(12100756960764960832)
,p_template_types=>'REGION'
,p_help_text=>'Align form labels to left.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100757571265960832)
,p_theme_id=>42
,p_name=>'FORMREMOVEPADDING'
,p_display_name=>'Remove Padding'
,p_display_sequence=>20
,p_css_classes=>'t-Form--noPadding'
,p_group_id=>wwv_flow_api.id(12100757313606960832)
,p_template_types=>'REGION'
,p_help_text=>'Removes padding between items.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100757738356960832)
,p_theme_id=>42
,p_name=>'FORMSLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>10
,p_css_classes=>'t-Form--slimPadding'
,p_group_id=>wwv_flow_api.id(12100757313606960832)
,p_template_types=>'REGION'
,p_help_text=>'Reduces form item padding to 4px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100758152319960833)
,p_theme_id=>42
,p_name=>'STRETCH_FORM_FIELDS'
,p_display_name=>'Stretch Form Fields'
,p_display_sequence=>10
,p_css_classes=>'t-Form--stretchInputs'
,p_group_id=>wwv_flow_api.id(12100757943370960833)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100758331395960833)
,p_theme_id=>42
,p_name=>'FORMSIZEXLARGE'
,p_display_name=>'X Large'
,p_display_sequence=>20
,p_css_classes=>'t-Form--xlarge'
,p_group_id=>wwv_flow_api.id(12100756567592960832)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100758711420960833)
,p_theme_id=>42
,p_name=>'LARGE_FIELD'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--large'
,p_group_id=>wwv_flow_api.id(12100758506610960833)
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100759191285960834)
,p_theme_id=>42
,p_name=>'POST_TEXT_BLOCK'
,p_display_name=>'Display as Block'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--postTextBlock'
,p_group_id=>wwv_flow_api.id(12100758930140960833)
,p_template_types=>'FIELD'
,p_help_text=>'Displays the Item Post Text in a block style immediately after the item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100759514558960834)
,p_theme_id=>42
,p_name=>'PRE_TEXT_BLOCK'
,p_display_name=>'Display as Block'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--preTextBlock'
,p_group_id=>wwv_flow_api.id(12100759352161960834)
,p_template_types=>'FIELD'
,p_help_text=>'Displays the Item Pre Text in a block style immediately before the item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100759934014960834)
,p_theme_id=>42
,p_name=>'DISPLAY_AS_PILL_BUTTON'
,p_display_name=>'Display as Pill Button'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--radioButtonGroup'
,p_group_id=>wwv_flow_api.id(12100759744494960834)
,p_template_types=>'FIELD'
,p_help_text=>'Displays the radio buttons to look like a button set / pill button.  Note that the the radio buttons must all be in the same row for this option to work.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100760146231960834)
,p_theme_id=>42
,p_name=>'STRETCH_FORM_ITEM'
,p_display_name=>'Stretch Form Item'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--stretchInputs'
,p_template_types=>'FIELD'
,p_help_text=>'Stretches the form item to fill its container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100760306152960834)
,p_theme_id=>42
,p_name=>'X_LARGE_SIZE'
,p_display_name=>'X Large'
,p_display_sequence=>20
,p_css_classes=>'t-Form-fieldContainer--xlarge'
,p_group_id=>wwv_flow_api.id(12100758506610960833)
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12100760746945960835)
,p_theme_id=>42
,p_name=>'HIDE_WHEN_ALL_ROWS_DISPLAYED'
,p_display_name=>'Hide when all rows displayed'
,p_display_sequence=>10
,p_css_classes=>'t-Report--hideNoPagination'
,p_group_id=>wwv_flow_api.id(12100760589109960834)
,p_template_types=>'REPORT'
,p_help_text=>'This option will hide the pagination when all rows are displayed.'
);
end;
/
prompt --application/shared_components/globalization/language
begin
null;
end;
/
prompt --application/shared_components/globalization/translations
begin
null;
end;
/
prompt --application/shared_components/logic/build_options
begin
wwv_flow_api.create_build_option(
 p_id=>wwv_flow_api.id(12100762962395960844)
,p_build_option_name=>'Feature: Access Control'
,p_build_option_status=>'INCLUDE'
,p_feature_identifier=>'APPLICATION_ACCESS_CONTROL'
,p_build_option_comment=>'Incorporate role based user authentication within your application and manage username mappings to application roles.'
);
wwv_flow_api.create_build_option(
 p_id=>wwv_flow_api.id(12100763056153960844)
,p_build_option_name=>'Feature: Activity Reporting'
,p_build_option_status=>'INCLUDE'
,p_feature_identifier=>'APPLICATION_ACTIVITY_REPORTING'
,p_build_option_comment=>'Include numerous reports and charts on end user activity.'
);
wwv_flow_api.create_build_option(
 p_id=>wwv_flow_api.id(12100763141023960844)
,p_build_option_name=>'Feature: Feedback'
,p_build_option_status=>'INCLUDE'
,p_feature_identifier=>'APPLICATION_FEEDBACK'
,p_build_option_comment=>'Provide a mechanism for end users to post general comments back to the application administrators and developers.'
);
wwv_flow_api.create_build_option(
 p_id=>wwv_flow_api.id(12100763320234960844)
,p_build_option_name=>'Feature: Configuration Options'
,p_build_option_status=>'INCLUDE'
,p_feature_identifier=>'APPLICATION_CONFIGURATION'
,p_build_option_comment=>'Allow application administrators to enable or disable specific functionality, associated with an Application Express build option, from within the application.'
);
wwv_flow_api.create_build_option(
 p_id=>wwv_flow_api.id(12100763669348960844)
,p_build_option_name=>'Feature: About Page'
,p_build_option_status=>'INCLUDE'
,p_feature_identifier=>'APPLICATION_ABOUT_PAGE'
,p_build_option_comment=>'About this application page.'
);
wwv_flow_api.create_build_option(
 p_id=>wwv_flow_api.id(12100763799335960844)
,p_build_option_name=>'Feature: Theme Style Selection'
,p_build_option_status=>'INCLUDE'
,p_feature_identifier=>'APPLICATION_THEME_STYLE_SELECTION'
,p_build_option_comment=>'Allow administrators to select a default color scheme (theme style) for the application. Administrators can also choose to allow end users to choose their own theme style. '
);
end;
/
prompt --application/shared_components/globalization/messages
begin
null;
end;
/
prompt --application/shared_components/globalization/dyntranslations
begin
null;
end;
/
prompt --application/shared_components/user_interface/shortcuts/delete_confirm_msg
begin
wwv_flow_api.create_shortcut(
 p_id=>wwv_flow_api.id(12100766682291960848)
,p_shortcut_name=>'DELETE_CONFIRM_MSG'
,p_shortcut_type=>'TEXT_ESCAPE_JS'
,p_shortcut=>'Would you like to perform this delete action?'
);
end;
/
prompt --application/shared_components/security/authentications/application_express_authentication
begin
wwv_flow_api.create_authentication(
 p_id=>wwv_flow_api.id(12100623808562960738)
,p_name=>'Application Express Authentication'
,p_scheme_type=>'NATIVE_APEX_ACCOUNTS'
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
);
end;
/
prompt --application/shared_components/plugins/region_type/com_oracle_apex_badge_list
begin
wwv_flow_api.create_plugin(
 p_id=>wwv_flow_api.id(18892633961972526973)
,p_plugin_type=>'REGION TYPE'
,p_name=>'COM.ORACLE.APEX.BADGE_LIST'
,p_display_name=>'Badge List'
,p_supported_ui_types=>'DESKTOP:JQM_SMARTPHONE'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('REGION TYPE','COM.ORACLE.APEX.BADGE_LIST'),'#IMAGE_PREFIX#plugins/com.oracle.apex.badgelist/2.0/')
,p_javascript_file_urls=>'#PLUGIN_FILES#com_oracle_apex_badgelist.js'
,p_plsql_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function render (',
'    p_region              in apex_plugin.t_region,',
'    p_plugin              in apex_plugin.t_plugin,',
'    p_is_printer_friendly in boolean )',
'    return apex_plugin.t_region_render_result is',
'begin',
'    apex_javascript.add_onload_code (',
'        p_code => ''com_oracle_apex_badgelist(''||',
'            apex_javascript.add_value(p_region.static_id)||',
'            ''{''||',
'                -- why is this attribute needed if is not used?',
'                apex_javascript.add_attribute(',
'                    ''pageItems'', ',
'                    apex_plugin_util.page_item_names_to_jquery(p_region.ajax_items_to_submit)',
'                )||',
'                apex_javascript.add_attribute(',
'                    ''ajaxIdentifier'', ',
'                    apex_plugin.get_ajax_identifier, ',
'                    false, ',
'                    false',
'                )||',
'            ''}''||',
'        '');''',
'    );',
'--    CSS for Big Value List',
'--    apex_css.add_file (',
'--        p_name      => ''com_oracle_apex_badge_list'',',
'--        p_directory => p_plugin.file_prefix );',
'    -- Start the list',
'',
'',
'    -- It''s time to emit the selected rows',
'',
'',
'    return null;',
'',
'end render;',
'',
'function ajax (',
'    p_region in apex_plugin.t_region,',
'    p_plugin in apex_plugin.t_plugin',
') return apex_plugin.t_region_ajax_result ',
'is',
'    -- It''s better to have named variables instead of using the generic ones,',
'    -- makes the code more readable. We are using the same defaults for the',
'    -- required attributes as in the plug-in attribute configuration, because',
'    -- they can still be null. Keep them in sync!',
'    c_top_label_column    constant varchar2(255) := p_region.attribute_09;',
'    c_value_column        constant varchar2(255) := p_region.attribute_02;',
'    c_bottom_label_column constant varchar2(255) := p_region.attribute_01;',
'    c_percent_column      constant varchar2(255) := p_region.attribute_03;',
'    c_link_target         constant varchar2(255) := p_region.attribute_04;',
'    ',
'    c_layout            constant varchar2(1)   := p_region.attribute_05;',
'    c_chart_size        constant varchar2(3)   := p_region.attribute_06;',
'    c_chart_type        constant varchar2(3)   := p_region.attribute_07;',
'    c_colored           constant varchar2(1)   := p_region.attribute_08;',
'',
'    l_bottom_label_column_no pls_integer;',
'    l_top_label_column_no    pls_integer;',
'    l_value_column_no        pls_integer;',
'    l_percent_column_no      pls_integer;',
'    l_column_value_list      apex_plugin_util.t_column_value_list2;',
'    ',
'    l_top_label      varchar2(4000);',
'    l_value             varchar2(4000);',
'    l_bottom_label      varchar2(4000);',
'    l_percent           number;',
'    l_url               varchar2(4000);',
'    l_class             varchar2(255);',
'',
'begin',
'    apex_json.initialize_output (',
'        p_http_cache => false );',
'        -- Read the data based on the region source query',
'    l_column_value_list := apex_plugin_util.get_data2 (',
'                               p_sql_statement  => p_region.source,',
'                               p_min_columns    => 2,',
'                               p_max_columns    => null,',
'                               p_component_name => p_region.name );',
'',
'    -- Get the actual column# for faster access and also verify that the data type',
'    -- of the column matches with what we are looking for',
'    l_top_label_column_no := apex_plugin_util.get_column_no (',
'      p_attribute_label   => ''Top Label'',',
'      p_column_alias      => c_top_label_column,',
'      p_column_value_list => l_column_value_list,',
'      p_is_required       => false,',
'      p_data_type         => apex_plugin_util.c_data_type_varchar2',
'    );',
'',
'    l_value_column_no   := apex_plugin_util.get_column_no (',
'                               p_attribute_label   => ''Value'',',
'                               p_column_alias      => c_value_column,',
'                               p_column_value_list => l_column_value_list,',
'                               p_is_required       => true,',
'                               p_data_type         => apex_plugin_util.c_data_type_varchar2 );',
'',
'    -- Get the actual column# for faster access and also verify that the data type',
'    -- of the column matches with what we are looking for',
'    l_bottom_label_column_no := apex_plugin_util.get_column_no (',
'      p_attribute_label   => ''Bottom Label'',',
'      p_column_alias      => c_bottom_label_column,',
'      p_column_value_list => l_column_value_list,',
'      p_is_required       => false,',
'      p_data_type         => apex_plugin_util.c_data_type_varchar2',
'    );',
'                                      ',
'    l_percent_column_no := apex_plugin_util.get_column_no (',
'                             p_attribute_label   => ''Percent'',',
'                             p_column_alias      => c_percent_column,',
'                             p_column_value_list => l_column_value_list,',
'                             p_is_required       => false,',
'                             p_data_type         => apex_plugin_util.c_data_type_number );',
'    ',
'    -- begin output as json',
'    owa_util.mime_header(''application/json'', false);',
'    htp.p(''cache-control: no-cache'');',
'    htp.p(''pragma: no-cache'');',
'    owa_util.http_header_close;',
' --   l_message_when_no_data_found := apex_escape.html_whitelist(',
'  --      apex_plugin_util.replace_substitutions (',
'   --             p_value  => c_message_when_no_data_found,',
'   --             p_escape => false',
'    --        )',
'    --    );',
'    apex_json.open_object();',
'    apex_json.write(''layout'', c_layout); ',
'    apex_json.write(''chart_size'', c_chart_size); ',
'    apex_json.write(''chart_type'', c_chart_type); ',
'    apex_json.write(''colored'', c_colored); ',
'    apex_json.open_array(''data'');',
'    for l_row_num in 1 .. l_column_value_list(1).value_list.count loop',
'        begin',
'            apex_json.open_object(); ',
'            -- Set the column values of our current row so that apex_plugin_util.replace_substitutions',
'            -- can do substitutions for columns contained in the region source query.',
'            apex_plugin_util.set_component_values (',
'                p_column_value_list => l_column_value_list,',
'                p_row_num           => l_row_num );',
'',
'            if l_top_label_column_no is not null',
'            then',
'              -- get the top label',
'              l_top_label := ',
'                 apex_plugin_util.get_value_as_varchar2 (',
'                     p_data_type => l_column_value_list(l_top_label_column_no).data_type,',
'                     p_value     => l_column_value_list(l_top_label_column_no).value_list(l_row_num) );',
'',
'              apex_json.write(''topLabel'', l_top_label); ',
'            end if;',
'            ',
'            -- get the value',
'            l_value := apex_plugin_util.get_value_as_varchar2 (',
'                               p_data_type => l_column_value_list(l_value_column_no).data_type,',
'                               p_value     => l_column_value_list(l_value_column_no).value_list(l_row_num) );',
'',
'            apex_json.write(''value'', l_value); ',
'',
'            if l_bottom_label_column_no is not null',
'            then',
'              -- get the bottom label',
'              l_bottom_label := ',
'                 apex_plugin_util.get_value_as_varchar2 (',
'                     p_data_type => l_column_value_list(l_bottom_label_column_no).data_type,',
'                     p_value     => l_column_value_list(l_bottom_label_column_no).value_list(l_row_num) );',
'',
'              apex_json.write(''bottomLabel'', l_bottom_label); ',
'            end if;',
'',
'            -- get percent',
'            if l_percent_column_no is not null then',
'                l_percent := l_column_value_list(l_percent_column_no).value_list(l_row_num).number_value;',
'                apex_json.    write(''percent'', l_percent); ',
'            end if;',
'',
'            -- get the link target if it does exist',
'            if c_link_target is not null then',
'                l_url := apex_util.prepare_url (',
'                             apex_plugin_util.replace_substitutions (',
'                                 p_value  => c_link_target,',
'                                 p_escape => false ));',
'                apex_json.    write(''url'', l_url);                ',
'            end if;',
'            ',
'            apex_json.close_object();        ',
'',
'',
'            apex_plugin_util.clear_component_values;',
'        exception when others then',
'            apex_plugin_util.clear_component_values;',
'            raise;',
'        end;',
'    end loop;',
'    apex_json.close_all();',
'    ',
'    return null;',
'exception when others then',
'    htp.p(''error: ''||apex_escape.html(sqlerrm));',
'    return null;',
'end ajax;',
'',
'',
''))
,p_api_version=>1
,p_render_function=>'render'
,p_ajax_function=>'ajax'
,p_standard_attributes=>'SOURCE_SQL:AJAX_ITEMS_TO_SUBMIT:ESCAPE_OUTPUT'
,p_substitute_attributes=>false
,p_reference_id=>21004726829130873585
,p_subscribe_plugin_settings=>true
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Badge lists are useful for displaying a region with a small number of counts for important statistics. For example, in Bug Tracker, this plug-in is used to show the total bugs, open bugs, open high priority bugs, and open critical severity bugs.</'
||'p>',
'<p>This plug-in is suitable for adding to the Home page to show important summary information.</p>'))
,p_version_identifier=>'5.0.2'
,p_about_url=>'http://apex.oracle.com/plugins'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(18892634154303526978)
,p_plugin_id=>wwv_flow_api.id(18892633961972526973)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>25
,p_prompt=>'Bottom Label'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>false
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_help_text=>'Select the column from the region SQL Query that holds the labels for the badges.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(18892634531940526979)
,p_plugin_id=>wwv_flow_api.id(18892633961972526973)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_prompt=>'Value'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>true
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_help_text=>'Select the column from the region SQL Query that holds the values for the badges.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(18892634904321526980)
,p_plugin_id=>wwv_flow_api.id(18892633961972526973)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_prompt=>'Percent'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>false
,p_column_data_types=>'NUMBER'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(18892642815291526986)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'PERCENT'
,p_help_text=>'Select the column from the region SQL Query that holds the percentage values for the badges. Percentages will be displayed together with the value within the badge.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(18892635380602526981)
,p_plugin_id=>wwv_flow_api.id(18892633961972526973)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>4
,p_display_sequence=>40
,p_prompt=>'Link Target'
,p_attribute_type=>'LINK'
,p_is_required=>false
,p_is_translatable=>false
,p_examples=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Example 1: URL to navigate to page 10 and set P10_EMPNO to the EMPNO value of the clicked entry.',
'<pre>f?p=&amp;APP_ID.:10:&amp;APP_SESSION.::&amp;DEBUG.:RP,10:P10_EMPNO:&amp;EMPNO.</pre>',
'</p>',
'<p>Example 2: Display the EMPNO value of the clicked entry in a JavaScript alert',
'<pre>javascript:alert(''current empno: &amp;EMPNO.'');</pre>',
'</p>'))
,p_help_text=>'<p>Enter a target page to be called when the user clicks a badge entry.</p>'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(18892635728692526981)
,p_plugin_id=>wwv_flow_api.id(18892633961972526973)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>5
,p_display_sequence=>50
,p_prompt=>'Layout'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_is_common=>false
,p_default_value=>'0'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>'<p>Select the layout to determine how the badge list is displayed.</p>'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(18892636123373526981)
,p_plugin_attribute_id=>wwv_flow_api.id(18892635728692526981)
,p_display_sequence=>5
,p_display_value=>'Fit to Page'
,p_return_value=>'0'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Sizes the badges to stretch across the page. The width of each badge will be determined by the number of badges and the display width.</p>',
'<p>Note: Badges will not wrap when displayed on smaller devices.</p>'))
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(18892636674824526982)
,p_plugin_attribute_id=>wwv_flow_api.id(18892635728692526981)
,p_display_sequence=>7
,p_display_value=>'Float to Left'
,p_return_value=>'F'
,p_help_text=>'<p>Sizes the badges based on the width of the label for each badge. All badges will be displayed to the left of the region.</p>'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(18892637146154526982)
,p_plugin_attribute_id=>wwv_flow_api.id(18892635728692526981)
,p_display_sequence=>10
,p_display_value=>'1 column'
,p_return_value=>'1'
,p_help_text=>'Displays only one badge per row. Therefore, if there are three badges they are displayed on three rows.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(18892637644579526982)
,p_plugin_attribute_id=>wwv_flow_api.id(18892635728692526981)
,p_display_sequence=>20
,p_display_value=>'2 columns'
,p_return_value=>'2'
,p_help_text=>'Displays only two badges per row. Therefore, if there are three badges they are displayed on two rows.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(18892638136759526983)
,p_plugin_attribute_id=>wwv_flow_api.id(18892635728692526981)
,p_display_sequence=>30
,p_display_value=>'3 columns'
,p_return_value=>'3'
,p_help_text=>'<p>Displays a maximum of three badges per row. Therefore, if there are four badges they are displayed on two rows.</p>'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(18892638607773526983)
,p_plugin_attribute_id=>wwv_flow_api.id(18892635728692526981)
,p_display_sequence=>40
,p_display_value=>'4 columns'
,p_return_value=>'4'
,p_help_text=>'<p>Displays a maximum of four badges per row. Therefore, if there are six badges they are displayed on two rows.</p>'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(18892639170889526983)
,p_plugin_attribute_id=>wwv_flow_api.id(18892635728692526981)
,p_display_sequence=>50
,p_display_value=>'5 columns'
,p_return_value=>'5'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Displays a maximum of fix badges per row. Therefore, if there are seven badges they are displayed on two rows.</p>',
'<p>Note: on smaller displays where the badges cannot be displayed appropriately, the responsive region will revert to less column and additional rows. For example, seven badges may be displayed as three columns on three rows, instead of five columns '
||'on two rows.</p>'))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(18892639768725526984)
,p_plugin_id=>wwv_flow_api.id(18892633961972526973)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>6
,p_display_sequence=>70
,p_prompt=>'Badge Size'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_is_common=>false
,p_default_value=>'L'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(18892642815291526986)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'NOT_EQUALS'
,p_depending_on_expression=>'BOX'
,p_lov_type=>'STATIC'
,p_help_text=>'Select the size of badge to display.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(18892640276028526984)
,p_plugin_attribute_id=>wwv_flow_api.id(18892639768725526984)
,p_display_sequence=>0
,p_display_value=>'Small'
,p_return_value=>'S'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(18892640828232526984)
,p_plugin_attribute_id=>wwv_flow_api.id(18892639768725526984)
,p_display_sequence=>10
,p_display_value=>'Medium'
,p_return_value=>'M'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(18892641329483526985)
,p_plugin_attribute_id=>wwv_flow_api.id(18892639768725526984)
,p_display_sequence=>20
,p_display_value=>'Large'
,p_return_value=>'L'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(18892641800120526985)
,p_plugin_attribute_id=>wwv_flow_api.id(18892639768725526984)
,p_display_sequence=>30
,p_display_value=>'Extra Large'
,p_return_value=>'B'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(18892642314471526985)
,p_plugin_attribute_id=>wwv_flow_api.id(18892639768725526984)
,p_display_sequence=>40
,p_display_value=>'Extra Extra Large'
,p_return_value=>'XXL'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(18892642815291526986)
,p_plugin_id=>wwv_flow_api.id(18892633961972526973)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>7
,p_display_sequence=>1
,p_prompt=>'Badge Style'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'BOX'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>'Select the shape of the badges to display.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(18892643275918526986)
,p_plugin_attribute_id=>wwv_flow_api.id(18892642815291526986)
,p_display_sequence=>10
,p_display_value=>'Default'
,p_return_value=>'BOX'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(18892643746039526986)
,p_plugin_attribute_id=>wwv_flow_api.id(18892642815291526986)
,p_display_sequence=>15
,p_display_value=>'Default with Percent'
,p_return_value=>'PERCENT'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(18892644297908526986)
,p_plugin_attribute_id=>wwv_flow_api.id(18892642815291526986)
,p_display_sequence=>20
,p_display_value=>'Circular'
,p_return_value=>'DOT'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(18892644785786526987)
,p_plugin_id=>wwv_flow_api.id(18892633961972526973)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>8
,p_display_sequence=>80
,p_prompt=>'Color'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'N'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>'Select if the badges should be displayed in different colors, or without colors.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(18892645162491526987)
,p_plugin_attribute_id=>wwv_flow_api.id(18892644785786526987)
,p_display_sequence=>10
,p_display_value=>'Yes'
,p_return_value=>'Y'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(18892645647816526987)
,p_plugin_attribute_id=>wwv_flow_api.id(18892644785786526987)
,p_display_sequence=>20
,p_display_value=>'No'
,p_return_value=>'N'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(18892646146406526987)
,p_plugin_id=>wwv_flow_api.id(18892633961972526973)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>9
,p_display_sequence=>10
,p_prompt=>'Top Label'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>false
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
);
wwv_flow_api.create_plugin_std_attribute(
 p_id=>wwv_flow_api.id(18892647145206526993)
,p_plugin_id=>wwv_flow_api.id(18892633961972526973)
,p_name=>'SOURCE_SQL'
,p_sql_min_column_count=>2
,p_examples=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<pre>',
'select ''Open''               as label,',
'       to_char(320,''9G990'') as value,',
'       13                   as percent',
'  from dual',
' union all',
'select ''Closed''             as label,',
'       to_char(87,''9G990'')  as value,',
'       70                   as percent',
'  from dual',
'</pre>'))
);
end;
/
prompt --application/user_interfaces
begin
wwv_flow_api.create_user_interface(
 p_id=>wwv_flow_api.id(12100761473880960836)
,p_ui_type_name=>'DESKTOP'
,p_display_name=>'Desktop'
,p_display_seq=>10
,p_use_auto_detect=>false
,p_is_default=>true
,p_theme_id=>42
,p_home_url=>'f?p=&APP_ID.:1:&SESSION.'
,p_login_url=>'f?p=&APP_ID.:LOGIN_DESKTOP:&SESSION.'
,p_theme_style_by_user_pref=>false
,p_global_page_id=>0
,p_navigation_list_id=>wwv_flow_api.id(12100624629447960739)
,p_navigation_list_position=>'SIDE'
,p_navigation_list_template_id=>wwv_flow_api.id(12100730091875960812)
,p_nav_list_template_options=>'#DEFAULT#:t-TreeNav--styleA:js-navCollapsed--hidden'
,p_css_file_urls=>'#APP_IMAGES#app-icon.css?version=#APP_VERSION#'
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_api.id(12100761187929960835)
,p_nav_bar_list_template_id=>wwv_flow_api.id(12100729638990960811)
,p_nav_bar_template_options=>'#DEFAULT#'
);
end;
/
prompt --application/user_interfaces/combined_files
begin
null;
end;
/
prompt --application/pages/page_00000
begin
wwv_flow_api.create_page(
 p_id=>0
,p_user_interface_id=>wwv_flow_api.id(12100761473880960836)
,p_name=>'Global Page - Desktop'
,p_step_title=>'Global Page - Desktop'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'D'
,p_last_updated_by=>'LOWCODE'
,p_last_upd_yyyymmddhh24miss=>'20191211111833'
);
end;
/
prompt --application/pages/page_00001
begin
wwv_flow_api.create_page(
 p_id=>1
,p_user_interface_id=>wwv_flow_api.id(12100761473880960836)
,p_name=>'Home'
,p_alias=>'HOME'
,p_step_title=>'Demo Projects'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'LOWCODE'
,p_last_upd_yyyymmddhh24miss=>'20200113120521'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(12100784315169960894)
,p_plug_name=>'Demo Projects'
,p_icon_css_classes=>'app-icon'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(12100668594223960770)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_source=>'Maintain project details'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(12100981274582961710)
,p_plug_name=>'Page Navigation'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:u-colors:t-Cards--featured t-Cards--block force-fa-lg:t-Cards--displayIcons:t-Cards--3cols:t-Cards--hideBody:t-Cards--animColorFill'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(12100650718659960759)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(12100979357282961709)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(12100717889787960804)
,p_plug_query_num_rows=>15
);
end;
/
prompt --application/pages/page_00002
begin
wwv_flow_api.create_page(
 p_id=>2
,p_user_interface_id=>wwv_flow_api.id(12100761473880960836)
,p_name=>'DEMO_PROJ_TEAM_MEMBERS'
,p_step_title=>'DEMO_PROJ_TEAM_MEMBERS'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>To find data enter a search term into the search dialog, or click on the column headings to limit the records returned.</p>',
'',
'<p>You can perform numerous functions by clicking the <strong>Actions</strong> button. This includes selecting the columns that are displayed / hidden and their display sequence, plus numerous data and format functions.  You can also define additiona'
||'l views of the data using the chart, group by, and pivot options.</p>',
'',
'<p>If you want to save your customizations select report, or click download to unload the data. Enter you email address and time frame under subscription to be sent the data on a regular basis.<p>',
'',
'<p>For additional information click Help at the bottom of the Actions menu.</p> ',
'',
'<p>Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_last_updated_by=>'LOWCODE'
,p_last_upd_yyyymmddhh24miss=>'20200110174219'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(12100786003801960898)
,p_name=>'Team Members'
,p_template=>wwv_flow_api.id(12100676227768960775)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Cards--basic:t-Cards--displayInitials:t-Cards--4cols:t-Cards--desc-3ln:t-Cards--animColorFill'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select id',
', full_name card_title',
', profile card_text',
', nvl(email,'' '') card_subtext',
', dbms_lob.getlength(''PHOTO_BLOB'') card_initials',
', apex_util.prepare_url(''f?p=''||:APP_ID||'':3:''||:APP_SESSION||''::::P3_ID:''||id) card_link',
', photo_filename',
', photo_mimetype',
', photo_charset',
', photo_last_updated',
'from demo_proj_team_members',
'order by created',
''))
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(12100694001582960786)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(12183119321609502625)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_column_heading=>'Id'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(12183120770617502639)
,p_query_column_id=>2
,p_column_alias=>'CARD_TITLE'
,p_column_display_sequence=>6
,p_column_heading=>'Card Title'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(12183120818635502640)
,p_query_column_id=>3
,p_column_alias=>'CARD_TEXT'
,p_column_display_sequence=>7
,p_column_heading=>'Card Text'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(12183120998866502641)
,p_query_column_id=>4
,p_column_alias=>'CARD_SUBTEXT'
,p_column_display_sequence=>8
,p_column_heading=>'Card Subtext'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(12183121002065502642)
,p_query_column_id=>5
,p_column_alias=>'CARD_INITIALS'
,p_column_display_sequence=>9
,p_column_heading=>'Card Initials'
,p_use_as_row_header=>'N'
,p_column_format=>'IMAGE:DEMO_PROJ_TEAM_MEMBERS:PHOTO_BLOB:ID::PHOTO_MIMETYPE:PHOTO_FILENAME:PHOTO_LAST_UPDATED::::'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(12183121133964502643)
,p_query_column_id=>6
,p_column_alias=>'CARD_LINK'
,p_column_display_sequence=>10
,p_column_heading=>'Card Link'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(12183119883068502630)
,p_query_column_id=>7
,p_column_alias=>'PHOTO_FILENAME'
,p_column_display_sequence=>2
,p_column_heading=>'Photo Filename'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(12183120041811502632)
,p_query_column_id=>8
,p_column_alias=>'PHOTO_MIMETYPE'
,p_column_display_sequence=>3
,p_column_heading=>'Photo Mimetype'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(12183120123115502633)
,p_query_column_id=>9
,p_column_alias=>'PHOTO_CHARSET'
,p_column_display_sequence=>4
,p_column_heading=>'Photo Charset'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(12183120206863502634)
,p_query_column_id=>10
,p_column_alias=>'PHOTO_LAST_UPDATED'
,p_column_display_sequence=>5
,p_column_heading=>'Photo Last Updated'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(12100793730361960912)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(12100687582209960782)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(12100624126947960738)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(12100740366246960819)
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(12100795593935960914)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(12100793730361960912)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(12100738882918960818)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Team Member'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:3'
,p_security_scheme=>wwv_flow_api.id(12100765826134960847)
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(12100792933203960910)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(12100786003801960898)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(12100738926227960818)
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:RIR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(12100794629588960913)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(12100786003801960898)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(12100795143973960914)
,p_event_id=>wwv_flow_api.id(12100794629588960913)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(12100786003801960898)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(12100795950851960915)
,p_name=>'Create Button - Dialog Closed'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(12100795593935960914)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(12100796493514960915)
,p_event_id=>wwv_flow_api.id(12100795950851960915)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(12100786003801960898)
);
end;
/
prompt --application/pages/page_00003
begin
wwv_flow_api.create_page(
 p_id=>3
,p_user_interface_id=>wwv_flow_api.id(12100761473880960836)
,p_name=>'Maintain Team Member '
,p_page_mode=>'MODAL'
,p_step_title=>'Maintain Team Member '
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(12100765826134960847)
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_last_updated_by=>'LOWCODE'
,p_last_upd_yyyymmddhh24miss=>'20200106122801'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(12100797372310961248)
,p_plug_name=>'Proj Team Member'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_api.id(12100650718659960759)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'TABLE'
,p_query_table=>'DEMO_PROJ_TEAM_MEMBERS'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(12183117990954502617)
,p_plug_name=>'Audit Details'
,p_parent_plug_id=>wwv_flow_api.id(12100797372310961248)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(12100661125941960765)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P3_ID'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(12100808241736961260)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(12100651778089960760)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(12100808667113961260)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(12100808241736961260)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(12100738882918960818)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(12100810234324961262)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(12100808241736961260)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>wwv_flow_api.id(12100738882918960818)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P3_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(12100810605244961262)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(12100808241736961260)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(12100738882918960818)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_condition=>'P3_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(12100811091524961262)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(12100808241736961260)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(12100738882918960818)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_condition=>'P3_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12100797651022961248)
,p_name=>'P3_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(12100797372310961248)
,p_item_source_plug_id=>wwv_flow_api.id(12100797372310961248)
,p_use_cache_before_default=>'NO'
,p_prompt=>'ID'
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(12100738035942960817)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12100798018795961250)
,p_name=>'P3_USERNAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(12100797372310961248)
,p_item_source_plug_id=>wwv_flow_api.id(12100797372310961248)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Username'
,p_source=>'USERNAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(12100738035942960817)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12100798452039961250)
,p_name=>'P3_FULL_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(12100797372310961248)
,p_item_source_plug_id=>wwv_flow_api.id(12100797372310961248)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Full Name'
,p_source=>'FULL_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(12100738035942960817)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12100798826153961251)
,p_name=>'P3_EMAIL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(12100797372310961248)
,p_item_source_plug_id=>wwv_flow_api.id(12100797372310961248)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Email'
,p_source=>'EMAIL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(12100737709570960817)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12100799201130961251)
,p_name=>'P3_PROFILE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(12100797372310961248)
,p_item_source_plug_id=>wwv_flow_api.id(12100797372310961248)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Profile'
,p_source=>'PROFILE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>5
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(12100737709570960817)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12100799600880961251)
,p_name=>'P3_PHOTO_FILENAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(12100797372310961248)
,p_item_source_plug_id=>wwv_flow_api.id(12100797372310961248)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Photo Filename'
,p_source=>'PHOTO_FILENAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>60
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(12100737709570960817)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12100800042703961252)
,p_name=>'P3_PHOTO_BLOB'
,p_source_data_type=>'BLOB'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(12100797372310961248)
,p_item_source_plug_id=>wwv_flow_api.id(12100797372310961248)
,p_prompt=>'Photo'
,p_source=>'PHOTO_BLOB'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>60
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(12100737709570960817)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'DB_COLUMN'
,p_attribute_06=>'Y'
,p_attribute_08=>'attachment'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12100800496167961252)
,p_name=>'P3_PHOTO_MIMETYPE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(12100797372310961248)
,p_item_source_plug_id=>wwv_flow_api.id(12100797372310961248)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Photo Mimetype'
,p_source=>'PHOTO_MIMETYPE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>60
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(12100737709570960817)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12100800836069961253)
,p_name=>'P3_PHOTO_CHARSET'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(12100797372310961248)
,p_item_source_plug_id=>wwv_flow_api.id(12100797372310961248)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Photo Charset'
,p_source=>'PHOTO_CHARSET'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>60
,p_cMaxlength=>128
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(12100737709570960817)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12100801202513961253)
,p_name=>'P3_PHOTO_LAST_UPDATED'
,p_source_data_type=>'DATE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(12100797372310961248)
,p_item_source_plug_id=>wwv_flow_api.id(12100797372310961248)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Photo Last Updated'
,p_source=>'PHOTO_LAST_UPDATED'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(12100737709570960817)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12100801623226961254)
,p_name=>'P3_CREATED'
,p_source_data_type=>'TIMESTAMP_LTZ'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(12183117990954502617)
,p_item_source_plug_id=>wwv_flow_api.id(12100797372310961248)
,p_prompt=>'New'
,p_source=>'CREATED'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(12100737709570960817)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12100802481527961254)
,p_name=>'P3_CREATED_BY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(12183117990954502617)
,p_item_source_plug_id=>wwv_flow_api.id(12100797372310961248)
,p_prompt=>'New'
,p_source=>'CREATED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(12100737709570960817)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12100802877242961255)
,p_name=>'P3_UPDATED'
,p_source_data_type=>'TIMESTAMP_LTZ'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(12183117990954502617)
,p_item_source_plug_id=>wwv_flow_api.id(12100797372310961248)
,p_prompt=>'New'
,p_source=>'UPDATED'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(12100737709570960817)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12100803660328961256)
,p_name=>'P3_UPDATED_BY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(12183117990954502617)
,p_item_source_plug_id=>wwv_flow_api.id(12100797372310961248)
,p_prompt=>'New'
,p_source=>'UPDATED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(12100737709570960817)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(12100802159723961254)
,p_validation_name=>'P3_CREATED must be timestamp'
,p_validation_sequence=>100
,p_validation=>'P3_CREATED'
,p_validation_type=>'ITEM_IS_TIMESTAMP'
,p_error_message=>'#LABEL# must be a valid timestamp.'
,p_associated_item=>wwv_flow_api.id(12100801623226961254)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(12100803328109961255)
,p_validation_name=>'P3_UPDATED must be timestamp'
,p_validation_sequence=>120
,p_validation=>'P3_UPDATED'
,p_validation_type=>'ITEM_IS_TIMESTAMP'
,p_error_message=>'#LABEL# must be a valid timestamp.'
,p_associated_item=>wwv_flow_api.id(12100802877242961255)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(12100808749263961260)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(12100808667113961260)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(12100809500766961261)
,p_event_id=>wwv_flow_api.id(12100808749263961260)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(12100811818815961263)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(12100797372310961248)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Proj Team Member'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(12100812213538961263)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(12100811456911961262)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_api.id(12100797372310961248)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Proj Team Member'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00004
begin
wwv_flow_api.create_page(
 p_id=>4
,p_user_interface_id=>wwv_flow_api.id(12100761473880960836)
,p_name=>'Projects'
,p_step_title=>'Projects'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>To find data enter a search term into the search dialog, or click on the column headings to limit the records returned.</p>',
'',
'<p>You can perform numerous functions by clicking the <strong>Actions</strong> button. This includes selecting the columns that are displayed / hidden and their display sequence, plus numerous data and format functions.  You can also define additiona'
||'l views of the data using the chart, group by, and pivot options.</p>',
'',
'<p>If you want to save your customizations select report, or click download to unload the data. Enter you email address and time frame under subscription to be sent the data on a regular basis.<p>',
'',
'<p>For additional information click Help at the bottom of the Actions menu.</p> ',
'',
'<p>Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_last_updated_by=>'LOWCODE'
,p_last_upd_yyyymmddhh24miss=>'20200110111555'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(12100813913248961268)
,p_plug_name=>'Projects'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(12100676227768960775)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'"ID" ,',
'"NAME",',
'"DESCRIPTION",',
'"PROJECT_LEAD",',
'"COMPLETED_DATE",',
'"STATUS_CD",',
'"CREATED",',
'"CREATED_BY",',
'"UPDATED",',
'"UPDATED_BY",',
'(select count(''x'')',
' from demo_proj_milestones m',
' where m.project_id = p.id',
') milestones,',
'(select count(''x'')',
' from demo_proj_tasks t',
' where t.project_id = p.id',
') tasks',
'from "DEMO_PROJECTS" p',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(12100814002877961268)
,p_name=>'DEMO_PROJECTS'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'LOWCODE'
,p_internal_uid=>12100814002877961268
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12100814492747961269)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12100814896648961269)
,p_db_column_name=>'PROJECT_LEAD'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Project Lead'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_api.id(17422105771482015927)
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12100815297953961270)
,p_db_column_name=>'NAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Name'
,p_column_link=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:RP,5:P5_ID:#ID#'
,p_column_linktext=>'#NAME#'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12100815625353961270)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Description'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12100816012258961270)
,p_db_column_name=>'STATUS_CD'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_api.id(12100818466441961273)
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12100816445831961271)
,p_db_column_name=>'COMPLETED_DATE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Completed Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12100816871290961271)
,p_db_column_name=>'CREATED'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Created'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12100817274973961271)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12100817622437961272)
,p_db_column_name=>'UPDATED'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Updated'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12100818041436961272)
,p_db_column_name=>'UPDATED_BY'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12183116971104502608)
,p_db_column_name=>'MILESTONES'
,p_display_order=>20
,p_column_identifier=>'K'
,p_column_label=>'Milestones'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12183117007505502609)
,p_db_column_name=>'TASKS'
,p_display_order=>30
,p_column_identifier=>'L'
,p_column_label=>'Tasks'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(12100915217230961647)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'121009153'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'NAME:PROJECT_LEAD:STATUS_CD:COMPLETED_DATE:MILESTONES:TASKS:'
,p_sort_column_1=>'PROJECT_LEAD'
,p_sort_direction_1=>'ASC'
,p_sum_columns_on_break=>'MILESTONES:TASKS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(12100820471769961275)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(12100687582209960782)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(12100624126947960738)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(12100740366246960819)
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(12100822273070961277)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(12100820471769961275)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(12100738882918960818)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create Project'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:5'
,p_security_scheme=>wwv_flow_api.id(12100765826134960847)
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(12100819679876961274)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(12100813913248961268)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(12100738926227960818)
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.:RIR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(12100821393046961276)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(12100813913248961268)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(12100821806790961277)
,p_event_id=>wwv_flow_api.id(12100821393046961276)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(12100813913248961268)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(12100822618616961277)
,p_name=>'Create Button - Dialog Closed'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(12100822273070961277)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(12100823197737961278)
,p_event_id=>wwv_flow_api.id(12100822618616961277)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(12100813913248961268)
);
end;
/
prompt --application/pages/page_00005
begin
wwv_flow_api.create_page(
 p_id=>5
,p_user_interface_id=>wwv_flow_api.id(12100761473880960836)
,p_name=>'Maintain Project'
,p_page_mode=>'MODAL'
,p_step_title=>'Maintain Project'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(12100765826134960847)
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_last_updated_by=>'LOWCODE'
,p_last_upd_yyyymmddhh24miss=>'20200113084609'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(12100824252315961377)
,p_plug_name=>'Project'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(12100650718659960759)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'TABLE'
,p_query_table=>'DEMO_PROJECTS'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(29644585168533200090)
,p_plug_name=>'Audit Details'
,p_parent_plug_id=>wwv_flow_api.id(12100824252315961377)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(12100661125941960765)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P5_ID'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(12100832393531961385)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(12100651778089960760)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(12100834328677961387)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(12100832393531961385)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>wwv_flow_api.id(12100738882918960818)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P5_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(12100834701010961387)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(12100832393531961385)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(12100738882918960818)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_condition=>'P5_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(12100835188633961387)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(12100832393531961385)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(12100738882918960818)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_condition=>'P5_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(12100832703789961385)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(12100832393531961385)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(12100738882918960818)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_PREVIOUS'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12100824526485961377)
,p_name=>'P5_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(12100824252315961377)
,p_item_source_plug_id=>wwv_flow_api.id(12100824252315961377)
,p_use_cache_before_default=>'NO'
,p_prompt=>'ID'
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(12100738035942960817)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12100824970618961377)
,p_name=>'P5_PROJECT_LEAD'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(12100824252315961377)
,p_item_source_plug_id=>wwv_flow_api.id(12100824252315961377)
,p_prompt=>'Project Lead'
,p_source=>'PROJECT_LEAD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'TEAM MEMBERS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select full_name as display,',
'id as return',
'from demo_proj_team_members   ',
'order by 1  ',
''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-Select Team Member-'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(12100737709570960817)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12100825348942961378)
,p_name=>'P5_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(12100824252315961377)
,p_item_source_plug_id=>wwv_flow_api.id(12100824252315961377)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Name'
,p_source=>'NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(12100738035942960817)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12100825728185961379)
,p_name=>'P5_DESCRIPTION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(12100824252315961377)
,p_item_source_plug_id=>wwv_flow_api.id(12100824252315961377)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Description'
,p_source=>'DESCRIPTION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>5
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(12100737709570960817)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12100826180640961379)
,p_name=>'P5_STATUS_CD'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(12100824252315961377)
,p_item_source_plug_id=>wwv_flow_api.id(12100824252315961377)
,p_prompt=>'Status Cd'
,p_source=>'STATUS_CD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'STATUSES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select description as display,',
'cd as return',
'from demo_proj_status',
'order by 1',
''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-Select Status-'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(12100738035942960817)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12100826531307961380)
,p_name=>'P5_COMPLETED_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(12100824252315961377)
,p_item_source_plug_id=>wwv_flow_api.id(12100824252315961377)
,p_prompt=>'Completed Date'
,p_source=>'COMPLETED_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(12100738035942960817)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17461467407101697488)
,p_name=>'P5_CREATED'
,p_source_data_type=>'TIMESTAMP_LTZ'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(29644585168533200090)
,p_item_source_plug_id=>wwv_flow_api.id(12100824252315961377)
,p_prompt=>'Created'
,p_source=>'CREATED'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(12100737709570960817)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17461467831261697489)
,p_name=>'P5_CREATED_BY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(29644585168533200090)
,p_item_source_plug_id=>wwv_flow_api.id(12100824252315961377)
,p_prompt=>'Created By'
,p_source=>'CREATED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(12100737709570960817)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17461468290757697490)
,p_name=>'P5_UPDATED'
,p_source_data_type=>'TIMESTAMP_LTZ'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(29644585168533200090)
,p_item_source_plug_id=>wwv_flow_api.id(12100824252315961377)
,p_prompt=>'Updated'
,p_source=>'UPDATED'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(12100737709570960817)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17461468679809697490)
,p_name=>'P5_UPDATED_BY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(29644585168533200090)
,p_item_source_plug_id=>wwv_flow_api.id(12100824252315961377)
,p_prompt=>'Updated By'
,p_source=>'UPDATED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(12100737709570960817)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(12183118791977502619)
,p_validation_name=>'Completed Date is Not Null'
,p_validation_sequence=>10
,p_validation=>'P5_COMPLETED_DATE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_validation_condition=>'P5_STATUS_CD'
,p_validation_condition2=>'COMPLETED'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(12183118890742502620)
,p_validation_name=>'Completed Date is not Forward Dated'
,p_validation_sequence=>20
,p_validation=>':P5_COMPLETED_DATE <= sysdate'
,p_validation_type=>'PLSQL_EXPRESSION'
,p_error_message=>'#LABEL# cannot be forward dated'
,p_validation_condition=>'P5_COMPLETED_DATE'
,p_validation_condition_type=>'ITEM_IS_NOT_NULL'
,p_associated_item=>wwv_flow_api.id(12100826531307961380)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(12100832819439961385)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(12100832703789961385)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(12100833663315961386)
,p_event_id=>wwv_flow_api.id(12100832819439961385)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(18865243391935628305)
,p_name=>'Show Completed Date'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P5_STATUS_CD'
,p_condition_element=>'P5_STATUS_CD'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'COMPLETED'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(18865243494450628306)
,p_event_id=>wwv_flow_api.id(18865243391935628305)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P5_COMPLETED_DATE'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(18865243569261628307)
,p_event_id=>wwv_flow_api.id(18865243391935628305)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P5_COMPLETED_DATE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(12100835927450961388)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(12100824252315961377)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Project'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(12100836392257961388)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(12100835544097961387)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_api.id(12100824252315961377)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Project'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00006
begin
wwv_flow_api.create_page(
 p_id=>6
,p_user_interface_id=>wwv_flow_api.id(12100761473880960836)
,p_name=>'Milestones'
,p_step_title=>'Milestones'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>To find data enter a search term into the search dialog, or click on the column headings to limit the records returned.</p>',
'',
'<p>You can perform numerous functions by clicking the <strong>Actions</strong> button. This includes selecting the columns that are displayed / hidden and their display sequence, plus numerous data and format functions.  You can also define additiona'
||'l views of the data using the chart, group by, and pivot options.</p>',
'',
'<p>If you want to save your customizations select report, or click download to unload the data. Enter you email address and time frame under subscription to be sent the data on a regular basis.<p>',
'',
'<p>For additional information click Help at the bottom of the Actions menu.</p> ',
'',
'<p>Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_last_updated_by=>'LOWCODE'
,p_last_upd_yyyymmddhh24miss=>'20200110111619'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(12100838060586961392)
,p_plug_name=>'Proj Milestones'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(12100676227768960775)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'"ID" ,',
'"PROJECT_ID",',
'"NAME",',
'"DESCRIPTION",',
'"DUE_DATE",',
'"CREATED",',
'"CREATED_BY",',
'"UPDATED",',
'"UPDATED_BY",',
'(select count(''x'')',
' from demo_proj_tasks t',
' where t.milestone_id = m.id',
') tasks',
'from "DEMO_PROJ_MILESTONES" m',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(12100838196917961393)
,p_name=>'DEMO_PROJ_MILESTONES'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:7:&APP_SESSION.:::7:P7_ID:\#ID#\'
,p_detail_link_text=>'<span class="fa fa-edit" aria-hidden="true"></span>'
,p_detail_link_auth_scheme=>wwv_flow_api.id(12100765826134960847)
,p_owner=>'LOWCODE'
,p_internal_uid=>12100838196917961393
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12100838552425961393)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12100838989663961394)
,p_db_column_name=>'PROJECT_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Project'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_api.id(17476080343291496862)
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12100839349604961394)
,p_db_column_name=>'NAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Milestone'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12100839731826961394)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Description'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12100840156745961395)
,p_db_column_name=>'DUE_DATE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Due Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12100840528709961395)
,p_db_column_name=>'CREATED'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Created'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12100840999349961395)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12100841368144961396)
,p_db_column_name=>'UPDATED'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Updated'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12100841744393961396)
,p_db_column_name=>'UPDATED_BY'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12183117109403502610)
,p_db_column_name=>'TASKS'
,p_display_order=>19
,p_column_identifier=>'J'
,p_column_label=>'Tasks'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(12100935799122961666)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'121009358'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PROJECT_ID:NAME:DUE_DATE:TASKS:'
,p_sort_column_1=>'DUE_DATE'
,p_sort_direction_1=>'ASC'
,p_sort_column_2=>'PROJECT_ID'
,p_sort_direction_2=>'ASC'
,p_sum_columns_on_break=>'TASKS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(12100843506036961398)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(12100687582209960782)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(12100624126947960738)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(12100740366246960819)
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(12100845303435961400)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(12100843506036961398)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(12100738882918960818)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create Milestone'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.:7'
,p_security_scheme=>wwv_flow_api.id(12100765826134960847)
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(12100842742258961397)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(12100838060586961392)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(12100738926227960818)
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.:RIR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(12100844469603961399)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(12100838060586961392)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(12100844996474961400)
,p_event_id=>wwv_flow_api.id(12100844469603961399)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(12100838060586961392)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(12100845723726961401)
,p_name=>'Create Button - Dialog Closed'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(12100845303435961400)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(12100846276042961401)
,p_event_id=>wwv_flow_api.id(12100845723726961401)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(12100838060586961392)
);
end;
/
prompt --application/pages/page_00007
begin
wwv_flow_api.create_page(
 p_id=>7
,p_user_interface_id=>wwv_flow_api.id(12100761473880960836)
,p_name=>'Maintain Milestone'
,p_page_mode=>'MODAL'
,p_step_title=>'Maintain Milestone'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(12100765826134960847)
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_last_updated_by=>'LOWCODE'
,p_last_upd_yyyymmddhh24miss=>'20200108120907'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(12100846999638961485)
,p_plug_name=>'Proj Milestone'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(12100650718659960759)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'TABLE'
,p_query_table=>'DEMO_PROJ_MILESTONES'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(29663700410805662786)
,p_plug_name=>'Audit Details'
,p_parent_plug_id=>wwv_flow_api.id(12100846999638961485)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(12100661125941960765)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P7_ID'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(12100854424834961492)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(12100651778089960760)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(12100856439823961494)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(12100854424834961492)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>wwv_flow_api.id(12100738882918960818)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P7_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(12100856844781961494)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(12100854424834961492)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(12100738882918960818)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_condition=>'P7_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(12100857201490961495)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(12100854424834961492)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(12100738882918960818)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_condition=>'P7_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(12100854822292961493)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(12100854424834961492)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(12100738882918960818)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_PREVIOUS'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12100847320105961485)
,p_name=>'P7_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(12100846999638961485)
,p_item_source_plug_id=>wwv_flow_api.id(12100846999638961485)
,p_use_cache_before_default=>'NO'
,p_prompt=>'ID'
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(12100738035942960817)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12100847717591961486)
,p_name=>'P7_PROJECT_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(12100846999638961485)
,p_item_source_plug_id=>wwv_flow_api.id(12100846999638961485)
,p_prompt=>'Project'
,p_source=>'PROJECT_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'PROJECTS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select name as display,',
' id as return',
' from demo_projects',
'      order by 1',
''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-Select Project-'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(12100738035942960817)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12100848181421961486)
,p_name=>'P7_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(12100846999638961485)
,p_item_source_plug_id=>wwv_flow_api.id(12100846999638961485)
,p_prompt=>'Milestone'
,p_source=>'NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(12100738035942960817)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12100848550855961487)
,p_name=>'P7_DESCRIPTION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(12100846999638961485)
,p_item_source_plug_id=>wwv_flow_api.id(12100846999638961485)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Description'
,p_source=>'DESCRIPTION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>5
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(12100737709570960817)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12100848933316961487)
,p_name=>'P7_DUE_DATE'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(12100846999638961485)
,p_item_source_plug_id=>wwv_flow_api.id(12100846999638961485)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Due Date'
,p_source=>'DUE_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(12100738035942960817)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17480582748941160170)
,p_name=>'P7_CREATED'
,p_source_data_type=>'TIMESTAMP_LTZ'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(29663700410805662786)
,p_item_source_plug_id=>wwv_flow_api.id(12100846999638961485)
,p_prompt=>'Created'
,p_source=>'CREATED'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(12100737709570960817)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17480583165169160171)
,p_name=>'P7_CREATED_BY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(29663700410805662786)
,p_item_source_plug_id=>wwv_flow_api.id(12100846999638961485)
,p_prompt=>'Created By'
,p_source=>'CREATED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(12100737709570960817)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17480583590940160172)
,p_name=>'P7_UPDATED'
,p_source_data_type=>'TIMESTAMP_LTZ'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(29663700410805662786)
,p_item_source_plug_id=>wwv_flow_api.id(12100846999638961485)
,p_prompt=>'Updated'
,p_source=>'UPDATED'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(12100737709570960817)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17480583988582160172)
,p_name=>'P7_UPDATED_BY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(29663700410805662786)
,p_item_source_plug_id=>wwv_flow_api.id(12100846999638961485)
,p_prompt=>'Updated By'
,p_source=>'UPDATED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(12100737709570960817)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(12100854944503961493)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(12100854822292961493)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(12100855772404961493)
,p_event_id=>wwv_flow_api.id(12100854944503961493)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(12100858018260961495)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(12100846999638961485)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Proj Milestone'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(12100858450389961496)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(12100857611047961495)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_api.id(12100846999638961485)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Proj Milestone'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00008
begin
wwv_flow_api.create_page(
 p_id=>8
,p_user_interface_id=>wwv_flow_api.id(12100761473880960836)
,p_name=>'Tasks'
,p_step_title=>'Tasks'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>To find data enter a search term into the search dialog, or click on the column headings to limit the records returned.</p>',
'',
'<p>You can perform numerous functions by clicking the <strong>Actions</strong> button. This includes selecting the columns that are displayed / hidden and their display sequence, plus numerous data and format functions.  You can also define additiona'
||'l views of the data using the chart, group by, and pivot options.</p>',
'',
'<p>If you want to save your customizations select report, or click download to unload the data. Enter you email address and time frame under subscription to be sent the data on a regular basis.<p>',
'',
'<p>For additional information click Help at the bottom of the Actions menu.</p> ',
'',
'<p>Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_last_updated_by=>'LOWCODE'
,p_last_upd_yyyymmddhh24miss=>'20200110111706'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(12100860003930961502)
,p_plug_name=>'Proj Tasks'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(12100676227768960775)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       PROJECT_ID,',
'       MILESTONE_ID,',
'       ASSIGNEE,',
'       NAME,',
'       DESCRIPTION,',
'       START_DATE,',
'       END_DATE,',
'      decode (IS_COMPLETE_YN, ''Y'', ''Yes'', ''No'') as "IS_COMPLETE_YN",',
'       CREATED,',
'       CREATED_BY,',
'       UPDATED,',
'       UPDATED_BY',
'  from DEMO_PROJ_TASKS'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(12100860138567961502)
,p_name=>'DEMO_PROJ_TASKS'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:9:&APP_SESSION.:::9:P9_ID:\#ID#\'
,p_detail_link_text=>'<span class="fa fa-edit" aria-hidden="true"></span>'
,p_detail_link_auth_scheme=>wwv_flow_api.id(12100765826134960847)
,p_owner=>'LOWCODE'
,p_internal_uid=>12100860138567961502
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12100860548174961504)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12100860957695961505)
,p_db_column_name=>'PROJECT_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Project'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_api.id(17476080343291496862)
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12100861347263961505)
,p_db_column_name=>'MILESTONE_ID'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Milestone'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_api.id(17482253515193212629)
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12100861784419961506)
,p_db_column_name=>'ASSIGNEE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Assignee'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_api.id(17422105771482015927)
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12100862133641961506)
,p_db_column_name=>'NAME'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Task'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12100862576632961506)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Description'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12100862911613961507)
,p_db_column_name=>'START_DATE'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Start Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12100863381136961507)
,p_db_column_name=>'END_DATE'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'End Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12100863791124961508)
,p_db_column_name=>'IS_COMPLETE_YN'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Completed?'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12100864101691961508)
,p_db_column_name=>'CREATED'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Created'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12100864587352961509)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12100864918144961509)
,p_db_column_name=>'UPDATED'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Updated'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12100865344154961510)
,p_db_column_name=>'UPDATED_BY'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(12100954713970961684)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'121009548'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PROJECT_ID:MILESTONE_ID:NAME:ASSIGNEE:START_DATE:END_DATE:IS_COMPLETE_YN:'
,p_sort_column_1=>'START_DATE'
,p_sort_direction_1=>'ASC'
,p_sort_column_2=>'0'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'0'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
,p_break_on=>'PROJECT_ID:MILESTONE_ID:0:0:0:0'
,p_break_enabled_on=>'PROJECT_ID:MILESTONE_ID:0:0:0:0'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(12100867747389961514)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(12100687582209960782)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(12100624126947960738)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(12100740366246960819)
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(12100869533998961515)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(12100867747389961514)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(12100738882918960818)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create Task'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.:9'
,p_security_scheme=>wwv_flow_api.id(12100765826134960847)
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(12100866983162961512)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(12100860003930961502)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(12100738926227960818)
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.:RIR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(12100868627913961514)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(12100860003930961502)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(12100869169711961515)
,p_event_id=>wwv_flow_api.id(12100868627913961514)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(12100860003930961502)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(12100869967887961515)
,p_name=>'Create Button - Dialog Closed'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(12100869533998961515)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(12100870413420961516)
,p_event_id=>wwv_flow_api.id(12100869967887961515)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(12100860003930961502)
);
end;
/
prompt --application/pages/page_00009
begin
wwv_flow_api.create_page(
 p_id=>9
,p_user_interface_id=>wwv_flow_api.id(12100761473880960836)
,p_name=>'Maintain Task'
,p_page_mode=>'MODAL'
,p_step_title=>'Maintain Task'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(12100765826134960847)
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_last_updated_by=>'LOWCODE'
,p_last_upd_yyyymmddhh24miss=>'20200113091134'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(12100871287321961594)
,p_plug_name=>'Proj Task'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(12100650718659960759)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'TABLE'
,p_query_table=>'DEMO_PROJ_TASKS'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(29668789014144317310)
,p_plug_name=>'Audit Details'
,p_parent_plug_id=>wwv_flow_api.id(12100871287321961594)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(12100661125941960765)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P9_ID'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(12100881492095961605)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(12100651778089960760)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(12100881880880961605)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(12100881492095961605)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(12100738882918960818)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(12100883482053961607)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(12100881492095961605)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>wwv_flow_api.id(12100738882918960818)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P9_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(12100883842749961607)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(12100881492095961605)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(12100738882918960818)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_condition=>'P9_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(12100884217500961607)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(12100881492095961605)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(12100738882918960818)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_condition=>'P9_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12100871653752961594)
,p_name=>'P9_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(12100871287321961594)
,p_item_source_plug_id=>wwv_flow_api.id(12100871287321961594)
,p_use_cache_before_default=>'NO'
,p_prompt=>'ID'
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(12100738035942960817)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12100872048959961595)
,p_name=>'P9_PROJECT_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(12100871287321961594)
,p_item_source_plug_id=>wwv_flow_api.id(12100871287321961594)
,p_prompt=>'Project'
,p_source=>'PROJECT_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'PROJECTS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select name as display,',
' id as return',
' from demo_projects',
'      order by 1',
''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-Select Project-'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(12100738035942960817)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12100872444745961595)
,p_name=>'P9_MILESTONE_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(12100871287321961594)
,p_item_source_plug_id=>wwv_flow_api.id(12100871287321961594)
,p_prompt=>'Milestone'
,p_source=>'MILESTONE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select name as display, id as return',
'from demo_proj_milestones',
'where project_id = :P9_PROJECT_ID',
'order by 1',
''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-Select Milestone-'
,p_lov_cascade_parent_items=>'P9_PROJECT_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(12100737709570960817)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12100872875438961596)
,p_name=>'P9_ASSIGNEE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(12100871287321961594)
,p_item_source_plug_id=>wwv_flow_api.id(12100871287321961594)
,p_prompt=>'Assignee'
,p_source=>'ASSIGNEE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'TEAM MEMBERS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select full_name as display,',
'id as return',
'from demo_proj_team_members   ',
'order by 1  ',
''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-Select Assignee-'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(12100737709570960817)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12100873203680961596)
,p_name=>'P9_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(12100871287321961594)
,p_item_source_plug_id=>wwv_flow_api.id(12100871287321961594)
,p_prompt=>'Task'
,p_source=>'NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(12100738035942960817)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12100873627462961597)
,p_name=>'P9_DESCRIPTION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(12100871287321961594)
,p_item_source_plug_id=>wwv_flow_api.id(12100871287321961594)
,p_prompt=>'Description'
,p_source=>'DESCRIPTION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>5
,p_field_template=>wwv_flow_api.id(12100737709570960817)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12100873901405961597)
,p_name=>'P9_START_DATE'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(12100871287321961594)
,p_item_source_plug_id=>wwv_flow_api.id(12100871287321961594)
,p_prompt=>'Start Date'
,p_source=>'START_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(12100738035942960817)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12100874316388961598)
,p_name=>'P9_END_DATE'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(12100871287321961594)
,p_item_source_plug_id=>wwv_flow_api.id(12100871287321961594)
,p_prompt=>'End Date'
,p_source=>'END_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(12100738035942960817)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12100874757149961598)
,p_name=>'P9_IS_COMPLETE_YN'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(12100871287321961594)
,p_item_source_plug_id=>wwv_flow_api.id(12100871287321961594)
,p_prompt=>'Completed?'
,p_source=>'IS_COMPLETE_YN'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_field_template=>wwv_flow_api.id(12100737709570960817)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'APPLICATION'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12183118644121502618)
,p_name=>'P9_MILESTONE_DUE_DATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(12100871287321961594)
,p_prompt=>' Due Date'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(12100737709570960817)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17485671306862814702)
,p_name=>'P9_CREATED'
,p_source_data_type=>'TIMESTAMP_LTZ'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(29668789014144317310)
,p_item_source_plug_id=>wwv_flow_api.id(12100871287321961594)
,p_prompt=>'Created'
,p_source=>'CREATED'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(12100737709570960817)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17485671743220814703)
,p_name=>'P9_CREATED_BY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(29668789014144317310)
,p_item_source_plug_id=>wwv_flow_api.id(12100871287321961594)
,p_prompt=>'Created By'
,p_source=>'CREATED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(12100737709570960817)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17485672140416814703)
,p_name=>'P9_UPDATED'
,p_source_data_type=>'TIMESTAMP_LTZ'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(29668789014144317310)
,p_item_source_plug_id=>wwv_flow_api.id(12100871287321961594)
,p_prompt=>'Updated'
,p_source=>'UPDATED'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(12100737709570960817)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17485672550850814704)
,p_name=>'P9_UPDATED_BY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(29668789014144317310)
,p_item_source_plug_id=>wwv_flow_api.id(12100871287321961594)
,p_prompt=>'Updated By'
,p_source=>'UPDATED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(12100737709570960817)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(12100881930235961605)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(12100881880880961605)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(12100882787992961606)
,p_event_id=>wwv_flow_api.id(12100881930235961605)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(18865243606404628308)
,p_name=>'Get Due Date'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P9_MILESTONE_ID'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(18865243782769628309)
,p_event_id=>wwv_flow_api.id(18865243606404628308)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P9_MILESTONE_DUE_DATE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select due_date',
'from demo_proj_milestones',
'where id = :P9_MILESTONE_ID',
''))
,p_attribute_07=>'P9_MILESTONE_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(12100885009094961608)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(12100871287321961594)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Proj Task'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(12100885479206961608)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(12100884688471961608)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_api.id(12100871287321961594)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Proj Task'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00010
begin
wwv_flow_api.create_page(
 p_id=>10
,p_user_interface_id=>wwv_flow_api.id(12100761473880960836)
,p_name=>'Dashboard'
,p_step_title=>'Dashboard'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'LOWCODE'
,p_last_upd_yyyymmddhh24miss=>'20200113114501'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(12183121738020502649)
,p_plug_name=>'Project Status'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(12100678190315960776)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(12183121829417502650)
,p_region_id=>wwv_flow_api.id(12183121738020502649)
,p_chart_type=>'pie'
,p_height=>'250'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'none'
,p_value_format_scaling=>'auto'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_value=>true
,p_legend_rendered=>'on'
,p_legend_position=>'end'
,p_pie_other_threshold=>0
,p_pie_selection_effect=>'highlight'
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(18865242908109628301)
,p_chart_id=>wwv_flow_api.id(12183121829417502650)
,p_seq=>10
,p_name=>'Status'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select s.description, count(*) value',
'   from DEMO_PROJECTS p',
'   , DEMO_PROJ_STATUS s',
'   where p.status_cd = s.CD',
'   group by s.description',
'   order by 2 desc',
''))
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'DESCRIPTION'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'LABEL'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(18865246053646628332)
,p_name=>'Upcoming  Milestones'
,p_template=>wwv_flow_api.id(12100678190315960776)
,p_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select p.name project',
'   , m.name milestone',
'   , m.due_date',
'   from demo_projects p',
'   , demo_proj_milestones m',
'   where p.id = m.project_id',
'   and m.due_date >= sysdate',
''))
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(12100707062250960795)
,p_query_num_rows=>5
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18865246128905628333)
,p_query_column_id=>1
,p_column_alias=>'PROJECT'
,p_column_display_sequence=>1
,p_column_heading=>'Project'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18865246276165628334)
,p_query_column_id=>2
,p_column_alias=>'MILESTONE'
,p_column_display_sequence=>2
,p_column_heading=>'Milestone'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18865246369692628335)
,p_query_column_id=>3
,p_column_alias=>'DUE_DATE'
,p_column_display_sequence=>3
,p_column_heading=>'Due Date'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(18865246472414628336)
,p_name=>'Incomplete Tasks'
,p_template=>wwv_flow_api.id(12100678190315960776)
,p_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select p.name project',
'   , m.name milestone',
'   , m.due_date',
'   , t.name task',
'   , t.start_date',
'   , t.end_date',
'   from demo_projects p',
'   , demo_proj_milestones m',
'   , demo_proj_tasks t',
'   where p.id = m.project_id',
'   and p.id = t.project_id',
'   and t.milestone_id = m.id (+)',
'   and nvl(is_complete_yn, ''N'') = ''N''',
'   and nvl(is_complete_yn, ''N'') = ''N''',
''))
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(12100707062250960795)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18865246568772628337)
,p_query_column_id=>1
,p_column_alias=>'PROJECT'
,p_column_display_sequence=>1
,p_column_heading=>'Project'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18865246600734628338)
,p_query_column_id=>2
,p_column_alias=>'MILESTONE'
,p_column_display_sequence=>2
,p_column_heading=>'Milestone'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18865246783430628339)
,p_query_column_id=>3
,p_column_alias=>'DUE_DATE'
,p_column_display_sequence=>3
,p_column_heading=>'Due Date'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18865246884820628340)
,p_query_column_id=>4
,p_column_alias=>'TASK'
,p_column_display_sequence=>4
,p_column_heading=>'Task'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18865246960088628341)
,p_query_column_id=>5
,p_column_alias=>'START_DATE'
,p_column_display_sequence=>5
,p_column_heading=>'Start Date'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18865247075731628342)
,p_query_column_id=>6
,p_column_alias=>'END_DATE'
,p_column_display_sequence=>6
,p_column_heading=>'End Date'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
end;
/
prompt --application/pages/page_00011
begin
wwv_flow_api.create_page(
 p_id=>11
,p_user_interface_id=>wwv_flow_api.id(12100761473880960836)
,p_name=>'Calendar'
,p_step_title=>'Calendar'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'LOWCODE'
,p_last_upd_yyyymmddhh24miss=>'20200113063042'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(18858967428369774680)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(12100687582209960782)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(12100624126947960738)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(12100740366246960819)
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(18858968012065774682)
,p_plug_name=>'Calendar'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--noUI:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(12100678190315960776)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'TABLE'
,p_query_table=>'DEMO_PROJ_TASKS'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_CSS_CALENDAR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'START_DATE'
,p_attribute_02=>'END_DATE'
,p_attribute_03=>'NAME'
,p_attribute_04=>'ID'
,p_attribute_05=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.:RP,9:P9_ID:&ID.'
,p_attribute_06=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.:RP,9::'
,p_attribute_07=>'Y'
,p_attribute_08=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'update DEMO_PROJ_TASKS',
'   set start_date = to_date(:APEX$NEW_START_DATE, ''YYYYMMDDHH24MISS''),',
'       end_date = to_date(:APEX$NEW_END_DATE, ''YYYYMMDDHH24MISS'')',
' where ID = :APEX$PK_VALUE;',
'end;',
''))
,p_attribute_09=>'list:navigation'
,p_attribute_13=>'N'
,p_attribute_17=>'Y'
,p_attribute_19=>'Y'
,p_attribute_21=>'10'
,p_attribute_22=>'Y'
);
end;
/
prompt --application/pages/page_00012
begin
wwv_flow_api.create_page(
 p_id=>12
,p_user_interface_id=>wwv_flow_api.id(12100761473880960836)
,p_name=>'Reports'
,p_step_title=>'Reports'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'LOWCODE'
,p_last_upd_yyyymmddhh24miss=>'20200113110317'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(18863363524490395505)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(12100687582209960782)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(12100624126947960738)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(12100740366246960819)
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(18865244498352628316)
,p_plug_name=>'Summary'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(12100678190315960776)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''Open Projects'' label',
', count(*) value',
', ''f?p=''||:APP_ID||'':4:''||:APP_SESSION||'':::::'' link',
'from demo_projects ',
'where status_cd != ''Completed''',
'UNION ALL',
'select ''Upcoming Milestones'' label',
', count(*) value',
', ''f?p=''||:APP_ID||'':4:''||:APP_SESSION||'':::::'' link',
'from demo_proj_milestones',
'where due_date > sysdate',
'UNION ALL',
'select ''Open Tasks'' label',
', count(*) value',
', ''f?p=''||:APP_ID||'':4:''||:APP_SESSION||'':::::'' link ',
'from demo_proj_tasks',
'where is_complete_yn = ''N''',
''))
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.BADGE_LIST'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'&LINK.'
,p_attribute_05=>'0'
,p_attribute_07=>'BOX'
,p_attribute_08=>'Y'
,p_attribute_09=>'LABEL'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(18865244613444628318)
,p_name=>'Recent Projects'
,p_template=>wwv_flow_api.id(12100678190315960776)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:i-h480:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Timeline--compact'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select p.id project_id',
', t.id',
', null event_modifiers',
', null event_attributes',
', null user_color',
', dbms_lob.getlength(''PHOTO_BLOB'') user_avatar',
', t.full_name user_name',
', nvl(p.completed_date, p.updated) event_date',
', (case p.status_cd ',
'when ''ASSIGNED'' then ''is-removed''',
'when ''IN-PROGRESS'' then ''is-updated''',
'when ''COMPLETED'' then ''is-new''',
'end) event_status',
', (select s.description ',
'   from demo_proj_status s',
'   where s.cd = p.status_cd',
'  ) event_type',
', (case p.status_cd ',
'when ''ASSIGNED'' then ''fa fa-clock-o''',
'when ''IN-PROGRESS'' then ''fa fa-refresh''',
'when ''COMPLETED'' then ''fa fa-check''',
'end) event_icon',
', p.name event_title',
', p.description event_desc',
'from demo_projects p',
', demo_proj_team_members t',
'where p.project_lead = t.id',
'order by p.updated desc',
''))
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(12100709681714960797)
,p_query_num_rows=>5
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18865244704030628319)
,p_query_column_id=>1
,p_column_alias=>'PROJECT_ID'
,p_column_display_sequence=>1
,p_column_heading=>'Project Id'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18865244894603628320)
,p_query_column_id=>2
,p_column_alias=>'ID'
,p_column_display_sequence=>2
,p_column_heading=>'Id'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18865244980104628321)
,p_query_column_id=>3
,p_column_alias=>'EVENT_MODIFIERS'
,p_column_display_sequence=>3
,p_column_heading=>'Event Modifiers'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18865245034402628322)
,p_query_column_id=>4
,p_column_alias=>'EVENT_ATTRIBUTES'
,p_column_display_sequence=>4
,p_column_heading=>'Event Attributes'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18865245165206628323)
,p_query_column_id=>5
,p_column_alias=>'USER_COLOR'
,p_column_display_sequence=>5
,p_column_heading=>'User Color'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18865245228350628324)
,p_query_column_id=>6
,p_column_alias=>'USER_AVATAR'
,p_column_display_sequence=>6
,p_column_heading=>'User Avatar'
,p_use_as_row_header=>'N'
,p_column_format=>'IMAGE:DEMO_PROJ_TEAM_MEMBERS:PHOTO_BLOB:ID::PHOTO_MIMETYPE:PHOTO_FILENAME:PHOTO_LAST_UPDATED::::'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18865245379866628325)
,p_query_column_id=>7
,p_column_alias=>'USER_NAME'
,p_column_display_sequence=>7
,p_column_heading=>'User Name'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18865245425852628326)
,p_query_column_id=>8
,p_column_alias=>'EVENT_DATE'
,p_column_display_sequence=>8
,p_column_heading=>'Event Date'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18865245528246628327)
,p_query_column_id=>9
,p_column_alias=>'EVENT_STATUS'
,p_column_display_sequence=>9
,p_column_heading=>'Event Status'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18865245630335628328)
,p_query_column_id=>10
,p_column_alias=>'EVENT_TYPE'
,p_column_display_sequence=>10
,p_column_heading=>'Event Type'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18865245754377628329)
,p_query_column_id=>11
,p_column_alias=>'EVENT_ICON'
,p_column_display_sequence=>11
,p_column_heading=>'Event Icon'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18865245845339628330)
,p_query_column_id=>12
,p_column_alias=>'EVENT_TITLE'
,p_column_display_sequence=>12
,p_column_heading=>'Event Title'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18865245925246628331)
,p_query_column_id=>13
,p_column_alias=>'EVENT_DESC'
,p_column_display_sequence=>13
,p_column_heading=>'Event Desc'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(49949816876675200981)
,p_name=>'My Outstanding Tasks '
,p_template=>wwv_flow_api.id(12100678190315960776)
,p_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:i-h480:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--inline'
,p_new_grid_row=>false
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select p.name project',
', t.name task',
', t.end_date',
'from demo_proj_tasks t',
', demo_projects p',
', demo_proj_milestones m',
', demo_proj_team_members tm',
'where p.id = t.project_id',
'and m.id = t.milestone_id (+)',
'and tm.id = t.assignee and nvl(t.is_complete_yn, ''N'') = ''N''',
'and upper(tm.username) = upper(:APP_USER)',
'order by t.end_date',
''))
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(12100707062250960795)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18902802509971265093)
,p_query_column_id=>1
,p_column_alias=>'PROJECT'
,p_column_display_sequence=>1
,p_column_heading=>'Project'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18902802872339265094)
,p_query_column_id=>2
,p_column_alias=>'TASK'
,p_column_display_sequence=>2
,p_column_heading=>'Task'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18902803259342265095)
,p_query_column_id=>3
,p_column_alias=>'END_DATE'
,p_column_display_sequence=>3
,p_column_heading=>'End Date'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
end;
/
prompt --application/pages/page_00014
begin
wwv_flow_api.create_page(
 p_id=>14
,p_user_interface_id=>wwv_flow_api.id(12100761473880960836)
,p_name=>'Project Tree '
,p_step_title=>'Project Tree '
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'LOWCODE'
,p_last_upd_yyyymmddhh24miss=>'20200113093342'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(18865243202540628304)
,p_plug_name=>'Project Tree'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--noUI:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(12100678190315960776)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'with data as (',
'select ''M'' as link_type,',
'       null as parent,',
'       ''All Projects'' as id,',
'       ''All Projects'' as name,',
'       null as tooltip,',
'       null as sub_id,',
'       null as order_date',
'  from dual',
'union',
'select ''P'' as link_type,',
'       ''All Projects'' as parent,',
'       to_char(id) as id,',
'       name as name,',
'       description as tooltip,',
'       id as sub_id,',
'       (select min(start_date) ',
'        from demo_proj_tasks t',
'        where t.project_id = p.id',
'       ) order_date',
'  from demo_projects p',
'union',
'select ''M'' as link_type,',
'       to_char(project_id) parent,',
'       to_char(id) id,',
'       name as name,',
'       description as tooltip,',
'       id as sub_id,',
'       due_date as order_date',
'  from demo_proj_milestones',
'union',
'select ''T'' as link_type,',
'       to_char(project_id) as parent,',
'       null as id,',
'       name as name,',
'       description as tooltip,',
'       id as sub_id,',
'       start_date as order_date',
'  from demo_proj_tasks',
'  where milestone_id is null',
'union',
'select ''T'' as link_type,',
'       to_char(milestone_id) as parent,',
'       null as id,',
'       name as name,',
'       description as tooltip,',
'       id as sub_id,',
'       start_date as order_date',
'  from demo_proj_tasks',
'  where milestone_id is not null',
')',
'select case when connect_by_isleaf = 1 then 0',
'            when level = 1             then 1',
'            else                           -1',
'       end as status, ',
'       level, ',
'       name as title, ',
'       null as icon, ',
'       id as value, ',
'       tooltip as tooltip, ',
'       case when link_type = ''M''',
'              then null',
'            when link_type = ''P''',
'              then apex_util.prepare_url(''f?p=''||:APP_ID||'':5:''||:APP_SESSION||''::NO::P5_ID:''|| sub_id)',
'            when link_type = ''M''',
'              then apex_util.prepare_url(''f?p=''||:APP_ID||'':7:''||:APP_SESSION||''::NO::P7_ID:''|| sub_id)',
'            when link_type = ''T''',
'              then apex_util.prepare_url(''f?p=''||:APP_ID||'':9:''||:APP_SESSION||''::NO::P9_ID:''|| sub_id)',
'            else null',
'        end as link ',
'from data',
'start with parent is null',
'connect by prior id = parent',
'order siblings by order_date'))
,p_plug_source_type=>'NATIVE_JSTREE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_02=>'S'
,p_attribute_04=>'DB'
,p_attribute_08=>'a-Icon'
,p_attribute_09=>'icon-tree-folder'
,p_attribute_10=>'TITLE'
,p_attribute_11=>'LEVEL'
,p_attribute_15=>'STATUS'
,p_attribute_20=>'VALUE'
,p_attribute_22=>'TOOLTIP'
,p_attribute_23=>'LEVEL'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(18874546700173522265)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(12100687582209960782)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(12100624126947960738)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(12100740366246960819)
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(18865243811433628310)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(18874546700173522265)
,p_button_name=>'CONTRACT_ALL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_id=>wwv_flow_api.id(12100738882918960818)
,p_button_image_alt=>'Collapse All'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(18865243959131628311)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(18874546700173522265)
,p_button_name=>'EXPAND_ALL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_id=>wwv_flow_api.id(12100738882918960818)
,p_button_image_alt=>'Expand All'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(18865244042127628312)
,p_name=>'CONTRACT_ALL'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(18865243811433628310)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(18865244159106628313)
,p_event_id=>wwv_flow_api.id(18865244042127628312)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_TREE_COLLAPSE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(18865243202540628304)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(18865244284918628314)
,p_name=>'EXPAND_ALL'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(18865243959131628311)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(18865244378993628315)
,p_event_id=>wwv_flow_api.id(18865244284918628314)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_TREE_EXPAND'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(18865243202540628304)
);
end;
/
prompt --application/pages/page_00015
begin
wwv_flow_api.create_page(
 p_id=>15
,p_user_interface_id=>wwv_flow_api.id(12100761473880960836)
,p_name=>'Tasks Review'
,p_step_title=>'Tasks Review'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'LOWCODE'
,p_last_upd_yyyymmddhh24miss=>'20200113102116'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(18896291386891239491)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(12100687582209960782)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(12100624126947960738)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(12100740366246960819)
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(52836650283127276794)
,p_plug_name=>'Tasks Review'
,p_region_template_options=>'#DEFAULT#:i-h480:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(12100678190315960776)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(18898114426263192148)
,p_region_id=>wwv_flow_api.id(52836650283127276794)
,p_chart_type=>'bar'
,p_height=>'480'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'horizontal'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'none'
,p_hover_behavior=>'none'
,p_stack=>'on'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>false
,p_show_row=>false
,p_show_start=>false
,p_show_end=>false
,p_show_progress=>false
,p_show_baseline=>false
,p_legend_rendered=>'on'
,p_legend_position=>'auto'
,p_show_gauge_value=>false
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(18898116159541192154)
,p_chart_id=>wwv_flow_api.id(18898114426263192148)
,p_seq=>10
,p_name=>'Tasks'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select p.id',
', p.name as label',
', (select count(''x'') from demo_proj_tasks t ',
'where p.id = t.project_id ',
'and nvl(t.is_complete_yn,''N'') = ''Y''',
') value',
', ''Completed Tasks'' series',
', p.created',
'from demo_projects p',
'UNION ALL',
'select p.id',
', p.name as label',
', (select count(''x'') from demo_proj_tasks t ',
'where p.id = t.project_id ',
'and nvl(t.is_complete_yn,''N'') = ''N''',
') value',
', ''Incomplete Tasks'' series',
', p.created',
'from demo_projects p',
'order by 5',
''))
,p_series_name_column_name=>'SERIES'
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'LABEL'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(18898114975666192151)
,p_chart_id=>wwv_flow_api.id(18898114426263192148)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_title=>'Tasks'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(18898115590909192153)
,p_chart_id=>wwv_flow_api.id(18898114426263192148)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_title=>'Projects'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
end;
/
prompt --application/pages/page_00017
begin
wwv_flow_api.create_page(
 p_id=>17
,p_user_interface_id=>wwv_flow_api.id(12100761473880960836)
,p_name=>'Milestones Review'
,p_step_title=>'Milestones Review'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'LOWCODE'
,p_last_upd_yyyymmddhh24miss=>'20200113102225'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31081253502217701698)
,p_plug_name=>'Milestones Review'
,p_region_template_options=>'#DEFAULT#:i-h480:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(12100678190315960776)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(18898132587310199056)
,p_region_id=>wwv_flow_api.id(31081253502217701698)
,p_chart_type=>'bar'
,p_height=>'480'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'none'
,p_hover_behavior=>'none'
,p_stack=>'on'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>false
,p_show_row=>false
,p_show_start=>false
,p_show_end=>false
,p_show_progress=>false
,p_show_baseline=>false
,p_legend_rendered=>'on'
,p_legend_position=>'auto'
,p_show_gauge_value=>false
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(18898134295883199058)
,p_chart_id=>wwv_flow_api.id(18898132587310199056)
,p_seq=>10
,p_name=>'Milestones'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select p.id',
', p.name as label',
', (select count(''x'') from demo_proj_milestones m ',
'where p.id = m.project_id ',
'and m.due_date < sysdate',
') value',
', ''Past Milestones'' series',
', p.created',
'from demo_projects p',
'UNION ALL',
'select p.id',
', p.name as label',
', (select count(''x'') from demo_proj_milestones m ',
'where p.id = m.project_id ',
'and m.due_date >= sysdate',
') value',
', ''Future Milestones'' series',
', p.created',
'from demo_projects p',
'order by 5',
''))
,p_series_name_column_name=>'SERIES'
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'LABEL'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(18898133698949199058)
,p_chart_id=>wwv_flow_api.id(18898132587310199056)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_title=>'Projects'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(18898133036373199057)
,p_chart_id=>wwv_flow_api.id(18898132587310199056)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_title=>'Tasks'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(37794120680005416073)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(12100687582209960782)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(12100624126947960738)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(12100740366246960819)
);
end;
/
prompt --application/pages/page_09999
begin
wwv_flow_api.create_page(
 p_id=>9999
,p_user_interface_id=>wwv_flow_api.id(12100761473880960836)
,p_name=>'Login Page'
,p_alias=>'LOGIN_DESKTOP'
,p_step_title=>'Demo Projects - Sign In'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(12100630806966960745)
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_last_updated_by=>'LOWCODE'
,p_last_upd_yyyymmddhh24miss=>'20191211111833'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(12100776341739960875)
,p_plug_name=>'Demo Projects'
,p_icon_css_classes=>'app-icon'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(12100676844997960775)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(12100781623987960890)
,p_plug_name=>'Language Selector'
,p_parent_plug_id=>wwv_flow_api.id(12100776341739960875)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(12100650718659960759)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_source=>'apex_lang.emit_language_selector_list;'
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_num_rows=>15
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(12100779680117960888)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(12100776341739960875)
,p_button_name=>'LOGIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(12100738882918960818)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Sign In'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_alignment=>'LEFT'
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12100776814281960877)
,p_name=>'P9999_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(12100776341739960875)
,p_prompt=>'Username'
,p_placeholder=>'Username'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(12100737414683960816)
,p_item_icon_css_classes=>'fa-user'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12100777469531960877)
,p_name=>'P9999_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(12100776341739960875)
,p_prompt=>'Password'
,p_placeholder=>'Password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(12100737414683960816)
,p_item_icon_css_classes=>'fa-key'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12100778573705960878)
,p_name=>'P9999_REMEMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(12100776341739960875)
,p_prompt=>'Remember username'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'LOGIN_REMEMBER_USERNAME'
,p_lov=>'.'||wwv_flow_api.id(12100777734409960877)||'.'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(12100737414683960816)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'If you select this checkbox, the application will save your username in a persistent browser cookie named "LOGIN_USERNAME_COOKIE".',
'When you go to the login page the next time,',
'the username field will be automatically populated with this value.',
'</p>',
'<p>',
'If you deselect this checkbox and your username is already saved in the cookie,',
'the application will overwrite it with an empty value.',
'You can also use your browser''s developer tools to completely remove the cookie.',
'</p>'))
,p_attribute_01=>'1'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(12100780575580960889)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Username Cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_authentication.send_login_username_cookie (',
'    p_username => lower(:P9999_USERNAME),',
'    p_consent  => :P9999_REMEMBER = ''Y'' );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(12100780152805960889)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Login'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_authentication.login(',
'    p_username => :P9999_USERNAME,',
'    p_password => :P9999_PASSWORD );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(12100781304529960890)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(12100780982985960890)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P9999_USERNAME := apex_authentication.get_login_username_cookie;',
':P9999_REMEMBER := case when :P9999_USERNAME is not null then ''Y'' end;'))
);
end;
/
prompt --application/pages/page_10000
begin
wwv_flow_api.create_page(
 p_id=>10000
,p_user_interface_id=>wwv_flow_api.id(12100761473880960836)
,p_name=>'Administration'
,p_alias=>'ADMIN'
,p_step_title=>'Administration'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(12100767576725960852)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(12100765682466960847)
,p_deep_linking=>'N'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>The administration page allows application owners (Administrators) to configure the application and maintain common data used across the application.',
'By selecting one of the available settings, administrators can potentially change how the application is displayed and/or features available to the end users.</p>',
'<p>Access to this page should be limited to Administrators only.</p>'))
,p_last_updated_by=>'LOWCODE'
,p_last_upd_yyyymmddhh24miss=>'20191211111844'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(12101120370375961889)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(12100687582209960782)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(12100624126947960738)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(12100740366246960819)
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(12101126481452961894)
,p_plug_name=>'Column 1'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(12100650924443960759)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(12101126802083961895)
,p_plug_name=>'Configuration'
,p_parent_plug_id=>wwv_flow_api.id(12101126481452961894)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(12100678190315960776)
,p_plug_display_sequence=>40
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(12101120946812961890)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(12100725081101960809)
,p_plug_query_num_rows=>15
,p_required_patch=>wwv_flow_api.id(12100763320234960844)
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(12101127210593961895)
,p_plug_name=>'User Interface'
,p_parent_plug_id=>wwv_flow_api.id(12101126481452961894)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(12100678190315960776)
,p_plug_display_sequence=>50
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(12101121644695961891)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(12100725081101960809)
,p_plug_query_num_rows=>15
,p_required_patch=>wwv_flow_api.id(12100763799335960844)
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(12101127693030961896)
,p_plug_name=>'Activity Reports'
,p_parent_plug_id=>wwv_flow_api.id(12101126481452961894)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(12100678190315960776)
,p_plug_display_sequence=>60
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(12101122353358961891)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(12100725081101960809)
,p_plug_query_num_rows=>15
,p_required_patch=>wwv_flow_api.id(12100763056153960844)
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(12101128032385961896)
,p_plug_name=>'Column 2'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(12100650924443960759)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(12101128465092961896)
,p_plug_name=>'Access Control'
,p_parent_plug_id=>wwv_flow_api.id(12101128032385961896)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(12100678190315960776)
,p_plug_display_sequence=>70
,p_plug_display_point=>'BODY'
,p_plug_query_num_rows=>15
,p_required_patch=>wwv_flow_api.id(12100762962395960844)
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(12101129285582961897)
,p_plug_name=>'ACL Information'
,p_parent_plug_id=>wwv_flow_api.id(12101128465092961896)
,p_region_css_classes=>'margin-sm'
,p_region_template_options=>'#DEFAULT#:t-Alert--colorBG:t-Alert--horizontal:t-Alert--noIcon:t-Alert--warning:t-Alert--accessibleHeading'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(12100647074917960757)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_acl_scope   varchar2(45);',
'begin',
'    l_acl_scope   := apex_app_setting.get_value( p_name => ''ACCESS_CONTROL_SCOPE'' );',
'',
'    if l_acl_scope = ''ALL_USERS'' then',
'        sys.htp.p( apex_lang.message(''APEX.FEATURE.ACL.INFO.ALL_USERS'') );',
'    elsif l_acl_scope = ''ACL_ONLY'' then',
'        sys.htp.p( apex_lang.message(''APEX.FEATURE.ACL.INFO.ACL_ONLY'') );',
'    else',
'        sys.htp.p( apex_lang.message(''APEX.FEATURE.ACL.INFO.ACL_VALUE_INVALID'', l_acl_scope) );',
'    end if;',
'end;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_num_rows=>15
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(12101129521794961897)
,p_name=>'User Counts Report'
,p_parent_plug_id=>wwv_flow_api.id(12101128465092961896)
,p_template=>wwv_flow_api.id(12100678190315960776)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--stacked:t-Region--scrollBody:t-Region--noPadding'
,p_component_template_options=>'#DEFAULT#:t-AVPList--rightAligned'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select r.role_name, (select count(*) from apex_appl_acl_user_roles ur where r.role_id = ur.role_id) user_count, r.role_id',
'from  APEX_APPL_ACL_ROLES r',
'where r.application_id = :APP_ID',
'group by r.role_name, r.role_id',
'order by 2 desc, 1'))
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(12100712025198960799)
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_no_data_found=>'no data found'
,p_query_row_count_max=>500
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(12101130245323961899)
,p_query_column_id=>1
,p_column_alias=>'ROLE_NAME'
,p_column_display_sequence=>1
,p_column_heading=>'Role Name'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(12101130674605961899)
,p_query_column_id=>2
,p_column_alias=>'USER_COUNT'
,p_column_display_sequence=>2
,p_column_heading=>'User Count'
,p_column_format=>'999G999G999G999G999G999G990'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(12101131018637961900)
,p_query_column_id=>3
,p_column_alias=>'ROLE_ID'
,p_column_display_sequence=>3
,p_column_heading=>'Role Id'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(12101134145599961904)
,p_plug_name=>'Access Control Actions'
,p_parent_plug_id=>wwv_flow_api.id(12101128465092961896)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(12100650718659960759)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(12101124621236961893)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(12100725081101960809)
,p_plug_query_num_rows=>15
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(12101134524322961904)
,p_plug_name=>'Feedback'
,p_parent_plug_id=>wwv_flow_api.id(12101128032385961896)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(12100678190315960776)
,p_plug_display_sequence=>80
,p_plug_display_point=>'BODY'
,p_plug_query_num_rows=>15
,p_required_patch=>wwv_flow_api.id(12100763141023960844)
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(12101134900079961905)
,p_name=>'Report'
,p_parent_plug_id=>wwv_flow_api.id(12101134524322961904)
,p_template=>wwv_flow_api.id(12100678190315960776)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--stacked:t-Region--scrollBody:t-Region--noPadding'
,p_component_template_options=>'#DEFAULT#:t-AVPList--rightAligned'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select l.display_value feedback_status, ',
'(select count(*) from apex_team_feedback f where f.application_id = :APP_ID and f.feedback_status = l.return_value) feedback_count ',
'from apex_application_lov_entries l',
'where l.application_id = :APP_ID',
'and l.list_of_values_name = ''FEEDBACK_STATUS''',
'order by 2 desc, 1'))
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(12100712025198960799)
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_no_data_found=>'no data found'
,p_query_row_count_max=>500
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(12101135624584961906)
,p_query_column_id=>1
,p_column_alias=>'FEEDBACK_STATUS'
,p_column_display_sequence=>1
,p_column_heading=>'Feedback Status'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(12101136086810961906)
,p_query_column_id=>2
,p_column_alias=>'FEEDBACK_COUNT'
,p_column_display_sequence=>2
,p_column_heading=>'Feedback Count'
,p_column_format=>'999G999G999G999G999G999G990'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(12101137983320961908)
,p_plug_name=>'Feedback'
,p_parent_plug_id=>wwv_flow_api.id(12101134524322961904)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(12100650718659960759)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(12101125777084961894)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(12100725081101960809)
,p_plug_query_num_rows=>15
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(12101128860806961896)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(12101128465092961896)
,p_button_name=>'ADD_USER'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(12100738926227960818)
,p_button_image_alt=>'Add'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:10042:&SESSION.::&DEBUG.:RP,10042::'
,p_icon_css_classes=>'fa-user-plus'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(12101133277437961903)
,p_name=>'Refresh on Dialog Close'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(12101128860806961896)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(12101133795714961903)
,p_event_id=>wwv_flow_api.id(12101133277437961903)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(12101129521794961897)
);
end;
/
prompt --application/pages/page_10010
begin
wwv_flow_api.create_page(
 p_id=>10010
,p_user_interface_id=>wwv_flow_api.id(12100761473880960836)
,p_name=>'Configuration Options'
,p_page_mode=>'MODAL'
,p_step_title=>'Configuration Options'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(12100767576725960852)
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_api.id(12100765682466960847)
,p_required_patch=>wwv_flow_api.id(12100763320234960844)
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Configuration settings allow you to make specific functionality either available (enabled) or unavailable (disabled) to end users.</p>',
'<p>If a specific function is not 100% ready, or needs to be temporarily removed, click <strong>Disabled</strong>. ',
'Once it should be made available, simply click <strong>Enabled</strong>.</p>',
'<p><em><strong>Note:</strong> Changes made here will not be reflected for individual end users currently running the application. Once the end user signs out and then signs back in the revised feature settings will be invoked.</em></p>'))
,p_last_updated_by=>'LOWCODE'
,p_last_upd_yyyymmddhh24miss=>'20191211111842'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(12100981674449961711)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(12100651778089960760)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(12100981897446961711)
,p_plug_name=>'Configuration Options'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>wwv_flow_api.id(12100676227768960775)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    build_option_id     ID, ',
'    build_option_name   application_option,',
'    apex_item.hidden(1, build_option_id) ||',
'    apex_item.hidden(2, build_option_status) ||',
'    apex_item.switch ( ',
'         p_idx        => 3,',
'         p_value      => build_option_status,',
'         p_on_value   => ''Include'',',
'         p_on_label   => m.enabled,',
'         p_off_value  => ''Exclude'',',
'         p_off_label  => m.disabled,',
'         p_item_id    => ''BO_OPT_'' || rownum,',
'         p_item_label => ( case when build_option_status = ''Include'' then',
'                               apex_lang.message( ''APEX.FEATURE.CONFIG.IS_ENABLED'', apex_escape.html(build_option_name) )',
'                           when build_option_status = ''Exclude'' then',
'                               apex_lang.message( ''APEX.FEATURE.CONFIG.IS_DISABLED'', apex_escape.html(build_option_name) )',
'                           end ),',
'         p_attributes => ''style="white-space:pre;"'') "STATUS",',
'    component_comment   description,',
'    last_updated_on        updated,',
'    lower(last_updated_by) updated_by,',
'    build_option_status current_status',
'  from apex_application_build_options,',
'  (select apex_lang.message(''APEX.FEATURE.CONFIG.ENABLED'') enabled, apex_lang.message(''APEX.FEATURE.CONFIG.DISABLED'') disabled from dual) m',
' where application_id = :APP_ID ',
' and feature_identifier not in ( ''APPLICATION_ACCESS_CONTROL'', ''APPLICATION_CONFIGURATION'')'))
,p_plug_source_type=>'NATIVE_IR'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(12100982756781961712)
,p_name=>'Configuration Options'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'LOWCODE'
,p_internal_uid=>12100982756781961712
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12100982873112961713)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12100983280020961713)
,p_db_column_name=>'APPLICATION_OPTION'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Feature'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12100983683140961714)
,p_db_column_name=>'STATUS'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12100984095361961715)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Description'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12100984462258961715)
,p_db_column_name=>'UPDATED'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Updated'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12100984854210961716)
,p_db_column_name=>'UPDATED_BY'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12100985221911961716)
,p_db_column_name=>'CURRENT_STATUS'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Current Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(12100985980207961717)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'121009860'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'APPLICATION_OPTION:STATUS:DESCRIPTION:UPDATED:UPDATED_BY'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(12100987568183961719)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(12100981674449961711)
,p_button_name=>'APPLY_CHANGES'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(12100738882918960818)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_NEXT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(12100986872570961718)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(12100981897446961711)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(12100738926227960818)
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&SESSION.::&DEBUG.:&APP_PAGE_ID.,RIR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(12100988398566961720)
,p_branch_name=>'Refresh Admin Page'
,p_branch_action=>'f?p=&APP_ID.:10000:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(12100987958126961719)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'for i in 1..apex_application.g_f01.count loop',
'    for c1 in ( select application_id, build_option_name, build_option_status',
'                from apex_application_build_options',
'                where apex_application.g_f01(i) = build_option_id',
'                   and application_Id = :APP_ID) loop',
'        if c1.build_option_status != apex_application.g_f03(i) then',
'            apex_util.set_build_option_status(  p_application_id => :APP_ID,',
'                                                p_id => apex_application.g_f01(i),',
'                                                p_build_status => upper(apex_application.g_f03(i)) );',
'        end if;',
'    end loop;',
'end loop;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Configuration Options updated. '
);
end;
/
prompt --application/pages/page_10020
begin
wwv_flow_api.create_page(
 p_id=>10020
,p_user_interface_id=>wwv_flow_api.id(12100761473880960836)
,p_name=>'Application Appearance'
,p_page_mode=>'MODAL'
,p_step_title=>'Application Appearance'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(12100767576725960852)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(12100765682466960847)
,p_required_patch=>wwv_flow_api.id(12100763799335960844)
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Select the default color scheme used to display the application.</p>',
'<p>If <strong>Allow End Users to choose Theme Style</strong> is checked, then each end user can select from the available theme styles by clicking the <em>Customize</em> link in the bottom left corner of the Home page.</p>'))
,p_last_updated_by=>'LOWCODE'
,p_last_upd_yyyymmddhh24miss=>'20191211111842'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(12100988627506961720)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(12100651778089960760)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(12100988724299961720)
,p_plug_name=>'Configure Appearance'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(12100650718659960759)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_item_display_point=>'BELOW'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(12100990458227961721)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(12100988627506961720)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(12100738882918960818)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_NEXT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(12100989965168961721)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(12100988627506961720)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(12100738882918960818)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_PREVIOUS'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(12100990801017961722)
,p_branch_name=>'Branch to Admin Page'
,p_branch_action=>'f?p=&APP_ID.:10000:&SESSION.::&DEBUG.:RP::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12100991126742961722)
,p_name=>'P10020_DESKTOP_THEME_STYLE_ID'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(12100988724299961720)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Desktop Theme Style'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select s.theme_style_id',
'from apex_application_theme_styles s,',
'    apex_application_themes t',
'where s.application_id = t.application_id',
'    and s.theme_number = t.theme_number',
'    and s.application_id = :app_id',
'    and t.ui_type_name   = ''DESKTOP''',
'    and s.is_current = ''Yes'''))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'DESKTOP THEME STYLES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select s.name d,',
'    s.theme_style_id r',
'from apex_application_theme_styles s, apex_application_themes t',
'where s.application_id = t.application_id',
'    and s.theme_number = t.theme_number',
'    and s.application_id = :app_id',
'    and t.ui_type_name   = ''DESKTOP''',
'    and t.is_current = ''Yes''',
'order by 1'))
,p_cHeight=>1
,p_grid_label_column_span=>3
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from apex_application_theme_styles s,',
'    apex_application_themes t',
'where s.application_id = t.application_id',
'    and s.theme_number = t.theme_number',
'    and s.application_id = :app_id',
'    and t.ui_type_name   = ''DESKTOP'''))
,p_display_when_type=>'EXISTS'
,p_field_template=>wwv_flow_api.id(12100737709570960817)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_restricted_characters=>'WEB_SAFE'
,p_inline_help_text=>'The default Theme Style applies to all users.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12100991850465961723)
,p_name=>'P10020_END_USER_STYLE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(12100988724299961720)
,p_use_cache_before_default=>'NO'
,p_prompt=>'End User Theme Preference'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ui.theme_style_by_user_pref',
'  from apex_application_themes t, apex_appl_user_interfaces ui',
' where ui.application_id = t.application_id',
'   and ui.theme_number   = t.theme_number',
'   and t.application_id  = :app_id ',
'   and t.ui_type_name    = ''DESKTOP''',
'   and t.is_current      = ''Yes'''))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'USER_THEME_PREFERENCE'
,p_lov=>'.'||wwv_flow_api.id(12100991938644961723)||'.'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_api.id(12100737414683960816)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_inline_help_text=>'If checked, end users may choose their own Theme Style using the Customize link.'
,p_attribute_01=>'1'
,p_attribute_02=>'VERTICAL'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(12100988958293961720)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(12100989965168961721)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(12100993310260961725)
,p_event_id=>wwv_flow_api.id(12100988958293961720)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(12100993866250961725)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Save Theme Style'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P10020_DESKTOP_THEME_STYLE_ID is not null then',
'    for c1 in (select theme_number',
'               from apex_application_themes',
'               where application_id = :app_id',
'               and ui_type_name   = ''DESKTOP''',
'               and is_current = ''Yes'')',
'    loop',
'        apex_util.set_current_theme_style (',
'            p_theme_number   => c1.theme_number,',
'            p_theme_style_id => :P10020_DESKTOP_THEME_STYLE_ID',
'            );',
'    end loop;',
'end if;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Application Appearance Settings Saved.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(12100994276879961725)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Save End User Style Preference'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_enabled boolean := case when :P10020_END_USER_STYLE = ''Yes'' then true else false end;',
'begin',
'    for c1 in ( select ui.theme_number',
'                from apex_application_themes t,',
'                    apex_appl_user_interfaces ui',
'                where ui.application_id = t.application_id',
'                    and ui.theme_number   = t.theme_number',
'                    and t.application_id  = :APP_ID',
'                    and t.ui_type_name    = ''DESKTOP''',
'                    and t.is_current      = ''Yes'' ) loop',
'        if l_enabled then',
'            apex_theme.enable_user_style (',
'                p_application_id => :APP_ID,',
'                p_theme_number   => c1.theme_number );',
'        else',
'            apex_theme.disable_user_style (',
'                p_application_id => :APP_ID,',
'                p_theme_number   => c1.theme_number );',
'            apex_theme.clear_all_users_style(:APP_ID);',
'        end if;',
'  end loop;',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Application Appearance Settings Saved.'
);
end;
/
prompt --application/pages/page_10030
begin
wwv_flow_api.create_page(
 p_id=>10030
,p_user_interface_id=>wwv_flow_api.id(12100761473880960836)
,p_name=>'Activity Dashboard'
,p_alias=>'DASHBOARD'
,p_page_mode=>'MODAL'
,p_step_title=>'Activity Dashboard'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(12100767576725960852)
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch'
,p_required_role=>wwv_flow_api.id(12100765682466960847)
,p_required_patch=>wwv_flow_api.id(12100763056153960844)
,p_last_updated_by=>'LOWCODE'
,p_last_upd_yyyymmddhh24miss=>'20191211111842'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(12100994515461961726)
,p_plug_name=>'Hourly Page Events'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:i-h320:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(12100678190315960776)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(12100994619640961726)
,p_region_id=>wwv_flow_api.id(12100994515461961726)
,p_chart_type=>'bar'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>false
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_time_axis_type=>'enabled'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(12100996776239961727)
,p_chart_id=>wwv_flow_api.id(12100994619640961726)
,p_seq=>10
,p_name=>'Series 1'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'with nw as (',
'    -- APEX_ACTIVITY_LOG uses dates; convert system time to local time zone.',
'    select from_tz( cast( sysdate as timestamp ), to_char( systimestamp, ''TZR'' ) ) at local as tm from dual',
'),',
'window as (',
'    select',
'         trunc(nw.tm - ((level-1)/24),''HH'') start_tm,',
'         trunc(nw.tm - ((level-2)/24),''HH'') end_tm,',
'         trunc(sysdate-((level-1)/24),''HH'') log_start_tm,',
'         trunc(sysdate-((level-2)/24),''HH'') log_end_tm',
'    from nw',
'    connect by level <= round( 24 * ( 1/24/60/60 * nvl(:P10030_TIMEFRAME,1) ) )',
')',
'select  w.start_tm log_time,',
'    (   select count(*)',
'        from apex_activity_log l',
'        where l.flow_id = :app_id',
'            and l.time_stamp between w.log_start_tm and w.log_end_tm ) as value',
'from window w',
'order by 1'))
,p_max_row_count=>350
,p_ajax_items_to_submit=>'P10030_TIMEFRAME'
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'LOG_TIME'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(12100997361341961728)
,p_chart_id=>wwv_flow_api.id(12100994619640961726)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(12100997955455961728)
,p_chart_id=>wwv_flow_api.id(12100994619640961726)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_type=>'datetime-short'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'on'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(12100994712972961726)
,p_plug_name=>'Most Active Pages'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:i-h320:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(12100678190315960776)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(12100994873542961726)
,p_region_id=>wwv_flow_api.id(12100994712972961726)
,p_chart_type=>'bar'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'horizontal'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>false
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(12101001722375961733)
,p_chart_id=>wwv_flow_api.id(12100994873542961726)
,p_seq=>10
,p_name=>'Series 1'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select x.step_id||''. ''||(select page_name from apex_application_pages p where p.application_id = :app_id and page_id = x.step_id) label, ',
'        value ',
'from',
'(',
'select step_id,',
'    count(*) as value',
'from apex_activity_log',
'where flow_id = :app_id',
'    and time_stamp >= sysdate - ( 1/24/60/60 * :P10030_TIMEFRAME )',
'    and step_id is not null',
'group by step_id',
'order by 2 desc',
') x'))
,p_max_row_count=>10
,p_ajax_items_to_submit=>'P10030_TIMEFRAME'
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'LABEL'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(12101002332752961733)
,p_chart_id=>wwv_flow_api.id(12100994873542961726)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(12101002910296961734)
,p_chart_id=>wwv_flow_api.id(12100994873542961726)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(12100994965782961726)
,p_plug_name=>'Top Users'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:i-h320:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(12100678190315960776)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(12100995075630961726)
,p_region_id=>wwv_flow_api.id(12100994965782961726)
,p_chart_type=>'bar'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'horizontal'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>false
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(12100999267010961730)
,p_chart_id=>wwv_flow_api.id(12100995075630961726)
,p_seq=>10
,p_name=>'Series 1'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nvl( userid_lc, apex_lang.message(''APEX.FEATURE.TOP_USERS.USERNAME.NOT_IDENTIFIED'') ) as label,',
'       count(*) as value',
'from apex_activity_log',
'where flow_id = :app_id',
'and time_stamp >= sysdate - ( 1/24/60/60 * :P10030_TIMEFRAME )',
'group by nvl( userid_lc, apex_lang.message(''APEX.FEATURE.TOP_USERS.USERNAME.NOT_IDENTIFIED'') )',
'order by 2 desc'))
,p_max_row_count=>10
,p_ajax_items_to_submit=>'P10030_TIMEFRAME'
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'LABEL'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(12100999856353961731)
,p_chart_id=>wwv_flow_api.id(12100995075630961726)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(12101000484677961731)
,p_chart_id=>wwv_flow_api.id(12100995075630961726)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(12100995177501961726)
,p_name=>'Recent Errors'
,p_template=>wwv_flow_api.id(12100678190315960776)
,p_display_sequence=>40
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:i-h240:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--inline'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    sqlerrm label,',
'    time_stamp value',
'from apex_activity_log',
'where flow_id = :app_id',
'and time_stamp >= sysdate - ( 1/24/60/60 * :P10030_TIMEFRAME )',
'and sqlerrm is not null',
'order by 2 desc, 1'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P10030_TIMEFRAME'
,p_query_row_template=>wwv_flow_api.id(12100707062250960795)
,p_query_num_rows=>20
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_row_count_max=>500
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(12101004098899961736)
,p_query_column_id=>1
,p_column_alias=>'LABEL'
,p_column_display_sequence=>1
,p_column_heading=>'Label'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(12101004401446961736)
,p_query_column_id=>2
,p_column_alias=>'VALUE'
,p_column_display_sequence=>2
,p_column_heading=>'Value'
,p_column_format=>'SINCE'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(12100995217711961726)
,p_name=>'Latest Activity'
,p_template=>wwv_flow_api.id(12100678190315960776)
,p_display_sequence=>50
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:i-h240:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--inline'
,p_new_grid_row=>false
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select userid_lc as username,',
'    max(time_stamp) as last_activity',
'from apex_activity_log',
'where flow_id = :app_id',
'    and time_stamp >= sysdate - ( 1/24/60/60 * :P10030_TIMEFRAME )',
'    and userid_lc is not null',
'group by userid_lc',
'order by 2 desc'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P10030_TIMEFRAME'
,p_query_row_template=>wwv_flow_api.id(12100707062250960795)
,p_query_num_rows=>20
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No activities found'
,p_query_row_count_max=>500
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(12101007233418961740)
,p_query_column_id=>1
,p_column_alias=>'USERNAME'
,p_column_display_sequence=>1
,p_column_heading=>'Username'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(12101007631666961740)
,p_query_column_id=>2
,p_column_alias=>'LAST_ACTIVITY'
,p_column_display_sequence=>2
,p_column_heading=>'Last Activity'
,p_column_format=>'SINCE'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(12100995370823961726)
,p_plug_name=>'Filters'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--slimPadding:t-ButtonRegion--noUI:t-Form--large'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(12100651778089960760)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(12101009950784961743)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(12100994515461961726)
,p_button_name=>'VIEW_ACTIVITY_BY_USER'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(12100738113074960817)
,p_button_image_alt=>'View Details'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:10031:&SESSION.::&DEBUG.:RP,10031::'
,p_icon_css_classes=>'fa-angle-right'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(12101010338176961743)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(12100994712972961726)
,p_button_name=>'VIEW_ACTIVITY_DETAILS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(12100738113074960817)
,p_button_image_alt=>'View Details'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:10034:&SESSION.::&DEBUG.:RP,10034::'
,p_icon_css_classes=>'fa-angle-right'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(12101010767873961744)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(12100994965782961726)
,p_button_name=>'VIEW_ACTIVITY_BY_USER'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(12100738113074960817)
,p_button_image_alt=>'View Details'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:10031:&SESSION.::&DEBUG.:RP,10031::'
,p_icon_css_classes=>'fa-angle-right'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(12101011176781961744)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(12100995177501961726)
,p_button_name=>'VIEW_RECENT_ERRORS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(12100738113074960817)
,p_button_image_alt=>'View Details'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:10032:&SESSION.::&DEBUG.:RP,10032::'
,p_icon_css_classes=>'fa-angle-right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12100995484405961726)
,p_name=>'P10030_TIMEFRAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(12100995370823961726)
,p_item_default=>'900'
,p_prompt=>'Timeframe'
,p_source=>'900'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'TIMEFRAME (4 WEEKS)'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select disp,',
'      val as seconds',
' from table( apex_util.get_timeframe_lov_data )',
'order by insert_order'))
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(12100737709570960817)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(12100995507423961726)
,p_name=>'Change Filters'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10030_TIMEFRAME'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(12101012791856961746)
,p_event_id=>wwv_flow_api.id(12100995507423961726)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(12100994515461961726)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(12101013233248961747)
,p_event_id=>wwv_flow_api.id(12100995507423961726)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(12100994965782961726)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(12101013794828961747)
,p_event_id=>wwv_flow_api.id(12100995507423961726)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(12100994712972961726)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(12101014299894961748)
,p_event_id=>wwv_flow_api.id(12100995507423961726)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(12100995177501961726)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(12101014765041961748)
,p_event_id=>wwv_flow_api.id(12100995507423961726)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(12100995217711961726)
);
end;
/
prompt --application/pages/page_10031
begin
wwv_flow_api.create_page(
 p_id=>10031
,p_user_interface_id=>wwv_flow_api.id(12100761473880960836)
,p_name=>'Top Users'
,p_page_mode=>'MODAL'
,p_step_title=>'Top Users'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(12100767576725960852)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Remove padding around dialog page */',
'.hour-graph { display: table; width: 100%; }',
'span.hour { display: table-cell; padding: 0; font-size: 11px; text-align: center; background-color: #a6ffa6; min-width: 32px; }',
'span.hour.is-over1k { background-color: #7bdc7b; }',
'span.hour.is-null { background-color: #E0E0E0; }',
'span.hour-label { opacity: 0.5; }',
'span.hour-value { display: block; }'))
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_api.id(12100765682466960847)
,p_required_patch=>wwv_flow_api.id(12100763056153960844)
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Use this report and chart to see the users with the most page views for the specified timeframe.</p>',
'<p>Select the reporting timeframe (Default = 1 day) and choose between the report and chart icons at the top of the page.</p>',
'<p>For the interactive report, use the search field, or select the <strong>User</strong> column heading, to select a specific user. You can perform numerous functions by clicking the <strong>Actions</strong> button, such as columns displayed / hidden'
||', rows per page, filter, and so forth. Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_last_updated_by=>'LOWCODE'
,p_last_upd_yyyymmddhh24miss=>'20191211111843'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(12101038138784961778)
,p_plug_name=>'Top Users'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>wwv_flow_api.id(12100676227768960775)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select the_user,',
'    ''<div class="hour-graph">''||',
'        ''<span class="hour''|| case when h00 = 0 then '' is-null'' when h00 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 0</span> <span class="hour-value">''|| ',
'        case when h00 > 999 then to_char((h00/1000),''99999999D0'') ||''k'' else to_char(h00) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h01 = 0 then '' is-null'' when h01 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 1</span> <span class="hour-value">''|| ',
'        case when h01 > 999 then to_char((h01/1000),''99999999D0'') ||''k'' else to_char(h01) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h02 = 0 then '' is-null'' when h02 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 2</span> <span class="hour-value">''|| ',
'        case when h02 > 999 then to_char((h02/1000),''99999999D0'') ||''k'' else to_char(h02) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h03 = 0 then '' is-null'' when h03 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 3</span> <span class="hour-value">''|| ',
'        case when h03 > 999 then to_char((h03/1000),''99999999D0'') ||''k'' else to_char(h03) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h04 = 0 then '' is-null'' when h04 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 4</span> <span class="hour-value">''|| ',
'        case when h04 > 999 then to_char((h04/1000),''99999999D0'') ||''k'' else to_char(h04) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h05 = 0 then '' is-null'' when h05 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 5</span> <span class="hour-value">''|| ',
'        case when h05 > 999 then to_char((h05/1000),''99999999D0'') ||''k'' else to_char(h05) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h06 = 0 then '' is-null'' when h06 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 6</span> <span class="hour-value">''|| ',
'        case when h06 > 999 then to_char((h06/1000),''99999999D0'') ||''k'' else to_char(h06) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h07 = 0 then '' is-null'' when h07 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 7</span> <span class="hour-value">''|| ',
'        case when h07 > 999 then to_char((h07/1000),''99999999D0'') ||''k'' else to_char(h07) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h08 = 0 then '' is-null'' when h08 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 8</span> <span class="hour-value">''|| ',
'        case when h08 > 999 then to_char((h08/1000),''99999999D0'') ||''k'' else to_char(h08) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h09 = 0 then '' is-null'' when h09 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 9</span> <span class="hour-value">''|| ',
'        case when h09 > 999 then to_char((h09/1000),''99999999D0'') ||''k'' else to_char(h09) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h10 = 0 then '' is-null'' when h10 > 999 then '' is-over1k'' end ||''"><span class="hour-label">10</span> <span class="hour-value">''|| ',
'        case when h10 > 999 then to_char((h10/1000),''99999999D0'') ||''k'' else to_char(h10) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h11 = 0 then '' is-null'' when h11 > 999 then '' is-over1k'' end ||''"><span class="hour-label">11</span> <span class="hour-value">''|| ',
'        case when h11 > 999 then to_char((h11/1000),''99999999D0'') ||''k'' else to_char(h11) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h12 = 0 then '' is-null'' when h12 > 999 then '' is-over1k'' end ||''"><span class="hour-label">12</span> <span class="hour-value">''|| ',
'        case when h12 > 999 then to_char((h12/1000),''99999999D0'') ||''k'' else to_char(h12) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h13 = 0 then '' is-null'' when h13 > 999 then '' is-over1k'' end ||''"><span class="hour-label">13</span> <span class="hour-value">''|| ',
'        case when h13 > 999 then to_char((h13/1000),''99999999D0'') ||''k'' else to_char(h13) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h14 = 0 then '' is-null'' when h14 > 999 then '' is-over1k'' end ||''"><span class="hour-label">14</span> <span class="hour-value">''|| ',
'        case when h14 > 999 then to_char((h14/1000),''99999999D0'') ||''k'' else to_char(h14) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h15 = 0 then '' is-null'' when h15 > 999 then '' is-over1k'' end ||''"><span class="hour-label">15</span> <span class="hour-value">''|| ',
'        case when h15 > 999 then to_char((h15/1000),''99999999D0'') ||''k'' else to_char(h15) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h16 = 0 then '' is-null'' when h16 > 999 then '' is-over1k'' end ||''"><span class="hour-label">16</span> <span class="hour-value">''|| ',
'        case when h16 > 999 then to_char((h16/1000),''99999999D0'') ||''k'' else to_char(h16) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h17 = 0 then '' is-null'' when h17 > 999 then '' is-over1k'' end ||''"><span class="hour-label">17</span> <span class="hour-value">''|| ',
'        case when h17 > 999 then to_char((h17/1000),''99999999D0'') ||''k'' else to_char(h17) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h18 = 0 then '' is-null'' when h18 > 999 then '' is-over1k'' end ||''"><span class="hour-label">18</span> <span class="hour-value">''|| ',
'        case when h18 > 999 then to_char((h18/1000),''99999999D0'') ||''k'' else to_char(h18) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h19 = 0 then '' is-null'' when h19 > 999 then '' is-over1k'' end ||''"><span class="hour-label">19</span> <span class="hour-value">''|| ',
'        case when h19 > 999 then to_char((h19/1000),''99999999D0'') ||''k'' else to_char(h19) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h20 = 0 then '' is-null'' when h20 > 999 then '' is-over1k'' end ||''"><span class="hour-label">20</span> <span class="hour-value">''|| ',
'        case when h20 > 999 then to_char((h20/1000),''99999999D0'') ||''k'' else to_char(h20) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h21 = 0 then '' is-null'' when h21 > 999 then '' is-over1k'' end ||''"><span class="hour-label">21</span> <span class="hour-value">''|| ',
'        case when h21 > 999 then to_char((h21/1000),''99999999D0'') ||''k'' else to_char(h21) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h22 = 0 then '' is-null'' when h22 > 999 then '' is-over1k'' end ||''"><span class="hour-label">22</span> <span class="hour-value">''|| ',
'        case when h22 > 999 then to_char((h22/1000),''99999999D0'') ||''k'' else to_char(h22) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h23 = 0 then '' is-null'' when h23 > 999 then '' is-over1k'' end ||''"><span class="hour-label">23</span> <span class="hour-value">''|| ',
'        case when h23 > 999 then to_char((h23/1000),''99999999D0'') ||''k'' else to_char(h23) end ||''</span></span>''||',
'        ''</div>'' hours,',
'        page_events,',
'    median_elapsed,',
'    rows_fetched,',
'    ir_searches,',
'    errors,',
'    most_recent',
'    from (  ',
'    select userid_lc                    as the_user,',
'        count(*)                        as page_events,',
'        median(elap)                    as median_elapsed,',
'        sum(num_rows)                   as rows_fetched,',
'        sum(decode(ir_search,null,0,1)) as ir_searches,',
'        sum(decode(sqlerrm,null,0,1))   as errors,',
'        max(time_stamp)                 as most_recent,',
'        sum(decode(to_char(time_stamp,''HH24''),0,1,0)) h00,',
'        sum(decode(to_char(time_stamp,''HH24''),1,1,0)) h01,',
'        sum(decode(to_char(time_stamp,''HH24''),2,1,0)) h02,',
'        sum(decode(to_char(time_stamp,''HH24''),3,1,0)) h03,',
'        sum(decode(to_char(time_stamp,''HH24''),4,1,0)) h04,',
'        sum(decode(to_char(time_stamp,''HH24''),5,1,0)) h05,',
'        sum(decode(to_char(time_stamp,''HH24''),6,1,0)) h06,',
'        sum(decode(to_char(time_stamp,''HH24''),7,1,0)) h07,',
'        sum(decode(to_char(time_stamp,''HH24''),8,1,0)) h08,',
'        sum(decode(to_char(time_stamp,''HH24''),9,1,0)) h09,',
'        sum(decode(to_char(time_stamp,''HH24''),10,1,0)) h10,',
'        sum(decode(to_char(time_stamp,''HH24''),11,1,0)) h11,',
'        sum(decode(to_char(time_stamp,''HH24''),12,1,0)) h12,',
'        sum(decode(to_char(time_stamp,''HH24''),13,1,0)) h13,',
'        sum(decode(to_char(time_stamp,''HH24''),14,1,0)) h14,',
'        sum(decode(to_char(time_stamp,''HH24''),15,1,0)) h15,',
'        sum(decode(to_char(time_stamp,''HH24''),16,1,0)) h16,',
'        sum(decode(to_char(time_stamp,''HH24''),17,1,0)) h17,',
'        sum(decode(to_char(time_stamp,''HH24''),18,1,0)) h18,',
'        sum(decode(to_char(time_stamp,''HH24''),19,1,0)) h19,',
'        sum(decode(to_char(time_stamp,''HH24''),20,1,0)) h20,',
'        sum(decode(to_char(time_stamp,''HH24''),21,1,0)) h21,',
'        sum(decode(to_char(time_stamp,''HH24''),22,1,0)) h22,',
'        sum(decode(to_char(time_stamp,''HH24''),23,1,0)) h23',
'    from apex_activity_log l',
'    where flow_id = :APP_ID',
'        and time_stamp >= sysdate - ( 1/24/60/60 * :P10031_TIMEFRAME )',
'        and userid is not null',
'    group by userid_lc) x'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P10031_TIMEFRAME'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P10031_VIEW_AS'
,p_plug_display_when_cond2=>'REPORT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(12101039532895961779)
,p_name=>'Top Users'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'LOWCODE'
,p_internal_uid=>12101039532895961779
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12101039682758961785)
,p_db_column_name=>'THE_USER'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'User'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12101040040363961788)
,p_db_column_name=>'HOURS'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Activity by Hour'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12101040468805961791)
,p_db_column_name=>'PAGE_EVENTS'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Page Events'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12101040828695961794)
,p_db_column_name=>'MEDIAN_ELAPSED'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Median Elapsed'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D0000'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12101041210729961796)
,p_db_column_name=>'ROWS_FETCHED'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Rows Fetched'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12101041561822961799)
,p_db_column_name=>'IR_SEARCHES'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'IR Searches'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12101041936704961802)
,p_db_column_name=>'ERRORS'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Errors'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12101042315376961805)
,p_db_column_name=>'MOST_RECENT'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Most_Recent'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(12101043067335961808)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'121010431'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'THE_USER:HOURS:PAGE_EVENTS'
,p_sort_column_1=>'PAGE_EVENTS'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'MOST_RECENT'
,p_sort_direction_2=>'DESC'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(12101038205733961778)
,p_plug_name=>'Button Bar'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--slimPadding:t-ButtonRegion--noUI:t-Form--large'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(12100651778089960760)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(12101038423297961778)
,p_plug_name=>'Top Users Chart'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--hiddenOverflow'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(12100650718659960759)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P10031_VIEW_AS'
,p_plug_display_when_cond2=>'CHART'
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(12101038555276961778)
,p_region_id=>wwv_flow_api.id(12101038423297961778)
,p_chart_type=>'donut'
,p_height=>'600'
,p_animation_on_display=>'none'
,p_animation_on_data_change=>'auto'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_value_format_type=>'decimal'
,p_value_decimal_places=>0
,p_value_format_scaling=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_pie_other_threshold=>.02
,p_pie_selection_effect=>'highlight'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function( options ){ ',
'',
'    this.pieSliceLabel = function(dataContext) {',
'        var series_name,',
'            percent = Math.round(dataContext.value/dataContext.totalValue*100);',
'        ',
'        if ( dataContext.seriesData ) {',
'            series_name = dataContext.seriesData.name;',
'        } else {',
'            series_name = ''Other'';',
'        }',
'        return series_name + " " + percent + "% ( " + dataContext.value + " )";',
'    }',
'    ',
'    // Set chart initialization options ',
'    options.dataLabel = pieSliceLabel; ',
'    return options; ',
'}'))
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(12101046641237961813)
,p_chart_id=>wwv_flow_api.id(12101038555276961778)
,p_seq=>10
,p_name=>'Top Users'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select userid_lc as userid,',
'    count(*) as page_views',
'from apex_activity_log',
'where flow_id = :app_id',
'    and time_stamp >= sysdate - ( 1/24/60/60 * :P10031_TIMEFRAME )',
'    and userid is not null',
'group by userid_lc',
'order by 2'))
,p_ajax_items_to_submit=>'P10031_TIMEFRAME'
,p_items_value_column_name=>'PAGE_VIEWS'
,p_items_label_column_name=>'USERID'
,p_items_label_rendered=>true
,p_items_label_position=>'outsideSlice'
,p_items_label_display_as=>'LABEL'
,p_threshold_display=>'onIndicator'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(12101043929702961810)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(12101038138784961778)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(12100738926227960818)
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&SESSION.::&DEBUG.:&APP_PAGE_ID.,RIR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12101038612024961778)
,p_name=>'P10031_VIEW_AS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(12101038205733961778)
,p_item_default=>'REPORT'
,p_prompt=>'View As'
,p_source=>'REPORT'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'VIEW_AS_REPORT_CHART'
,p_lov=>'.'||wwv_flow_api.id(12101047166698961813)||'.'
,p_field_template=>wwv_flow_api.id(12100737414683960816)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--radioButtonGroup'
,p_lov_display_extra=>'NO'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'2'
,p_attribute_02=>'SUBMIT'
,p_attribute_03=>'Y'
,p_attribute_04=>'VERTICAL'
,p_attribute_05=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12101038872391961778)
,p_name=>'P10031_TIMEFRAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(12101038205733961778)
,p_item_default=>'900'
,p_prompt=>'Timeframe'
,p_source=>'900'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'TIMEFRAME (4 WEEKS)'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select disp,',
'      val as seconds',
' from table( apex_util.get_timeframe_lov_data )',
'order by insert_order'))
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(12100737532414960817)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(12101038326536961778)
,p_name=>'Refresh Report'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10031_TIMEFRAME'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(12101045271831961811)
,p_event_id=>wwv_flow_api.id(12101038326536961778)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(12101038138784961778)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(12101048604798961814)
,p_event_id=>wwv_flow_api.id(12101038326536961778)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(12101038138784961778)
);
end;
/
prompt --application/pages/page_10032
begin
wwv_flow_api.create_page(
 p_id=>10032
,p_user_interface_id=>wwv_flow_api.id(12100761473880960836)
,p_name=>'Application Error Log'
,p_page_mode=>'MODAL'
,p_step_title=>'Application Error Log'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(12100767576725960852)
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_api.id(12100765682466960847)
,p_required_patch=>wwv_flow_api.id(12100763056153960844)
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page provides an interactive report of all unexpected errors logged by this application.</p>',
'<p>Click on the column headings to sort and filter data, or click on the <strong>Actions</strong> button to customize column display and many additional advanced features. Click the <strong>Reset</strong> button to reset the interactive report back t'
||'o the default settings.</p>'))
,p_last_updated_by=>'LOWCODE'
,p_last_upd_yyyymmddhh24miss=>'20191211111842'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(12101033241717961772)
,p_plug_name=>'Application Error Log'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>wwv_flow_api.id(12100676227768960775)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    step_id,',
'    userid,',
'    time_stamp err_time,',
'    sqlerrm,',
'    sqlerrm_component_type,',
'    sqlerrm_component_name',
'from apex_activity_log',
'where flow_id = :app_id',
'and sqlerrm is not null'))
,p_plug_source_type=>'NATIVE_IR'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(12101034193914961772)
,p_name=>'Application Error Log'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-view.png" class="apex-edit-view" alt="">'
,p_owner=>'LOWCODE'
,p_internal_uid=>12101034193914961772
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12101034242727961772)
,p_db_column_name=>'STEP_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Page'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12101034694547961773)
,p_db_column_name=>'USERID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'User'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12101035049869961774)
,p_db_column_name=>'ERR_TIME'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Occurrence'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'since'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12101035487590961775)
,p_db_column_name=>'SQLERRM'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Message'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12101035864761961775)
,p_db_column_name=>'SQLERRM_COMPONENT_TYPE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Context'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12101036240098961776)
,p_db_column_name=>'SQLERRM_COMPONENT_NAME'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Component Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(12101036978092961777)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'121010370'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'STEP_ID:USERID:ERR_TIME:SQLERRM:SQLERRM_COMPONENT_TYPE:SQLERRM_COMPONENT_NAME:'
,p_sort_column_1=>'ERROR_TIME'
,p_sort_direction_1=>'DESC'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(12101037898584961777)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(12101033241717961772)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(12100738926227960818)
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&SESSION.::&DEBUG.:&APP_PAGE_ID.,RIR::'
,p_icon_css_classes=>'fa-undo-alt'
);
end;
/
prompt --application/pages/page_10033
begin
wwv_flow_api.create_page(
 p_id=>10033
,p_user_interface_id=>wwv_flow_api.id(12100761473880960836)
,p_name=>'Page Performance'
,p_page_mode=>'MODAL'
,p_step_title=>'Page Performance'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(12100767576725960852)
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_api.id(12100765682466960847)
,p_required_patch=>wwv_flow_api.id(12100763056153960844)
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page provides an interactive report of the page performance and popularity. The report is ordered by <strong>Weighted Performance</strong> which is calculated by multiplying the Median Elapsed time and number of Page Views.</p>',
'<p>Select the reporting timeframe (Default = 1 day) at the top of the page as necessary.<br>',
'Click on the column headings to sort and filter data, or click on the <strong>Actions</strong> button to customize column display and many additional advanced features. Click the <strong>Reset</strong> button to reset the interactive report back to t'
||'he default settings.</p>'))
,p_last_updated_by=>'LOWCODE'
,p_last_upd_yyyymmddhh24miss=>'20191211111842'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(12101023559308961759)
,p_plug_name=>'Page Performance'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>wwv_flow_api.id(12100676227768960775)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select step_id page,',
'    (   select page_name',
'        from apex_application_pages p',
'        where p.page_id = l.step_id',
'            and p.application_id = :app_id ) page_name,',
'    median(elap)                   median_elapsed,',
'    count(*) * median(elap)        weighted_performance,',
'    sum(decode(sqlerrm,null,0,1))  errors,',
'    count(distinct userid)         distinct_users,',
'    count(distinct session_id)     application_sessions,',
'    count(*)                       page_views,',
'    max(elap)                      max_elapsed,',
'    sum(nvl(num_rows,0))           total_rows,',
'    sum(decode(page_mode,''P'',1,0)) partial_page_views,',
'    sum(decode(page_mode,''D'',1,0)) full_page_views,',
'    min(elap)                      min_elapsed,',
'    avg(elap)                      avg_elapsed',
'from apex_activity_log l',
'where flow_id = :app_id',
'    and time_stamp >= sysdate - ( 1/24/60/60 * :P10033_TIMEFRAME )',
'    and userid is not null',
'group by step_id'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P10033_TIMEFRAME'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(12101024418247961760)
,p_name=>'Page Performance'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'LOWCODE'
,p_internal_uid=>12101024418247961760
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12101024588488961760)
,p_db_column_name=>'PAGE'
,p_display_order=>15
,p_column_identifier=>'A'
,p_column_label=>'Page'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12101024965520961761)
,p_db_column_name=>'PAGE_NAME'
,p_display_order=>25
,p_column_identifier=>'B'
,p_column_label=>'Page Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12101025349643961761)
,p_db_column_name=>'MEDIAN_ELAPSED'
,p_display_order=>35
,p_column_identifier=>'C'
,p_column_label=>'Median Elapsed'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D9999'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12101025778363961762)
,p_db_column_name=>'WEIGHTED_PERFORMANCE'
,p_display_order=>45
,p_column_identifier=>'D'
,p_column_label=>'Weighted Performance'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D99'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12101026177599961762)
,p_db_column_name=>'ERRORS'
,p_display_order=>55
,p_column_identifier=>'E'
,p_column_label=>'Action Processed.'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12101026561512961763)
,p_db_column_name=>'DISTINCT_USERS'
,p_display_order=>65
,p_column_identifier=>'F'
,p_column_label=>'Distinct Users'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12101026933826961764)
,p_db_column_name=>'APPLICATION_SESSIONS'
,p_display_order=>75
,p_column_identifier=>'G'
,p_column_label=>'Application Sessions'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12101027324762961764)
,p_db_column_name=>'PAGE_VIEWS'
,p_display_order=>85
,p_column_identifier=>'H'
,p_column_label=>'Page Views'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12101027707558961765)
,p_db_column_name=>'MAX_ELAPSED'
,p_display_order=>95
,p_column_identifier=>'I'
,p_column_label=>'Max Elapsed'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D9999'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12101028148663961766)
,p_db_column_name=>'TOTAL_ROWS'
,p_display_order=>105
,p_column_identifier=>'J'
,p_column_label=>'Total Rows'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12101028578651961766)
,p_db_column_name=>'PARTIAL_PAGE_VIEWS'
,p_display_order=>115
,p_column_identifier=>'K'
,p_column_label=>'Partial Page Views'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12101028956388961767)
,p_db_column_name=>'FULL_PAGE_VIEWS'
,p_display_order=>125
,p_column_identifier=>'L'
,p_column_label=>'Full Page Views'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12101029390655961767)
,p_db_column_name=>'MIN_ELAPSED'
,p_display_order=>135
,p_column_identifier=>'M'
,p_column_label=>'Min Elapsed'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D9999'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12101029768926961768)
,p_db_column_name=>'AVG_ELAPSED'
,p_display_order=>145
,p_column_identifier=>'N'
,p_column_label=>'Avg Elapsed'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D9999'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(12101030514301961769)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'121010306'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PAGE:PAGE_NAME:MEDIAN_ELAPSED:WEIGHTED_PERFORMANCE:ERRORS:DISTINCT_USERS:APPLICATION_SESSIONS:PAGE_VIEWS'
,p_sort_column_1=>'WEIGHTED_PERFORMANCE'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'PAGE_VIEWS'
,p_sort_direction_2=>'DESC'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(12101023600630961759)
,p_plug_name=>'Button Bar'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--slimPadding:t-ButtonRegion--noUI:t-Form--large'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(12100651778089960760)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(12101031430007961769)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(12101023559308961759)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(12100738926227960818)
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&SESSION.::&DEBUG.:&APP_PAGE_ID.,RIR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12101023456570961759)
,p_name=>'P10033_TIMEFRAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(12101023600630961759)
,p_item_default=>'900'
,p_prompt=>'Timeframe'
,p_source=>'900'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'TIMEFRAME (4 WEEKS)'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select disp,',
'      val as seconds',
' from table( apex_util.get_timeframe_lov_data )',
'order by insert_order'))
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(12100737532414960817)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(12101023786922961759)
,p_name=>'Refresh Report'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10033_TIMEFRAME'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(12101032756932961771)
,p_event_id=>wwv_flow_api.id(12101023786922961759)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(12101023559308961759)
);
end;
/
prompt --application/pages/page_10034
begin
wwv_flow_api.create_page(
 p_id=>10034
,p_user_interface_id=>wwv_flow_api.id(12100761473880960836)
,p_name=>'Page Views'
,p_page_mode=>'MODAL'
,p_step_title=>'Page Views'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(12100767576725960852)
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_api.id(12100765682466960847)
,p_required_patch=>wwv_flow_api.id(12100763056153960844)
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page provides an interactive report of the most recent page views.</p>',
'<p>Select the reporting timeframe (Default = 1 day) at the top of the page as necessary.<br>',
'Click on the column headings to sort and filter data, or click on the <strong>Actions</strong> button to customize column display and many additional advanced features. Click the <strong>Reset</strong> button to reset the interactive report back to t'
||'he default settings.</p>'))
,p_last_updated_by=>'LOWCODE'
,p_last_upd_yyyymmddhh24miss=>'20191211111842'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(12101015223329961749)
,p_plug_name=>'Page Views'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>wwv_flow_api.id(12100676227768960775)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    step_id||''. ''||(select page_name',
'                    from apex_application_pages p',
'                    where p.page_id = l.step_id',
'                        and p.application_id = :APP_ID) page_name,',
'    userid_lc     user_id,',
'    time_stamp    timestamp,',
'    elap          elapsed,',
'    step_id       page,',
'    decode(page_mode,''P'',''Partial'',''D'',''Full'',page_mode) page_mode,',
'    component_name,',
'    num_rows,',
'    ir_search,',
'    sqlerrm  error',
'from apex_activity_log l',
'where flow_id = :app_id',
'    and time_stamp >= sysdate - ( 1/24/60/60 * :P10034_TIMEFRAME )',
'    and userid is not null',
'    and step_id is not null',
'order by time_stamp desc'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P10034_TIMEFRAME'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(12101016199928961749)
,p_name=>'Page Views'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'LOWCODE'
,p_internal_uid=>12101016199928961749
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12101016248664961750)
,p_db_column_name=>'PAGE_NAME'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Page Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12101016650167961750)
,p_db_column_name=>'USER_ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'User'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12101017041436961751)
,p_db_column_name=>'TIMESTAMP'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Timestamp'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'since'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12101017471233961752)
,p_db_column_name=>'ELAPSED'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Elapsed'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D0000'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12101017981708961752)
,p_db_column_name=>'PAGE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Page'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12101018509033961753)
,p_db_column_name=>'PAGE_MODE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Mode'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12101018998180961753)
,p_db_column_name=>'COMPONENT_NAME'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Component Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12101019342178961754)
,p_db_column_name=>'NUM_ROWS'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Num Rows'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12101019768847961754)
,p_db_column_name=>'IR_SEARCH'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'IR Search'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12101020188410961755)
,p_db_column_name=>'ERROR'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Error'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(12101020880246961755)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'121010209'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PAGE_NAME:USER_ID:TIMESTAMP:ELAPSED:PAGE_MODE'
,p_sort_column_1=>'TIMESTAMP'
,p_sort_direction_1=>'DESC'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(12101015392896961749)
,p_plug_name=>'Button Bar'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--slimPadding:t-ButtonRegion--noUI:t-Form--large'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(12100651778089960760)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(12101021770224961756)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(12101015223329961749)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(12100738926227960818)
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&SESSION.::&DEBUG.:&APP_PAGE_ID.,RIR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12101015175108961749)
,p_name=>'P10034_TIMEFRAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(12101015392896961749)
,p_item_default=>'900'
,p_prompt=>'Timeframe'
,p_source=>'900'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'TIMEFRAME (4 WEEKS)'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select disp,',
'      val as seconds',
' from table( apex_util.get_timeframe_lov_data )',
'order by insert_order'))
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(12100737532414960817)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(12101015421022961749)
,p_name=>'Refresh Report'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10034_TIMEFRAME'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(12101023043359961758)
,p_event_id=>wwv_flow_api.id(12101015421022961749)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(12101015223329961749)
);
end;
/
prompt --application/pages/page_10040
begin
wwv_flow_api.create_page(
 p_id=>10040
,p_user_interface_id=>wwv_flow_api.id(12100761473880960836)
,p_name=>'Configure Access Control'
,p_page_mode=>'MODAL'
,p_step_title=>'Configure Access Control'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(12100767576725960852)
,p_required_role=>wwv_flow_api.id(12100765682466960847)
,p_required_patch=>wwv_flow_api.id(12100762962395960844)
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Select the appropriate choice for any authenticated users.<br> ',
'Selecting <strong>No</strong> makes the application more secure as only specified users can access the application. ',
'However, if your application has a large user community then maintaining users may be onerous, and you may prefer to choose <strong>Yes</strong> and only enter application Administrators, and possibly Contributors.<br>',
'If you select <strong>Yes</strong> then you must also select how users not included in the users list are treated.</p>',
'<p>Select between requiring email addresses and any alphanumeric value for Usernames.<br>',
'Generally, you should set this setting to <strong>E-mail Address</strong> if your application uses (or will be configured to use) a centralized authentication scheme such as Oracle Access Manager, or SSO.</p>',
'<p><em><strong>Note:</strong> This application supports the following 3 access levels: Reader, Contributor, and Administrator.',
'<ul>',
'  <li><strong>Readers</strong> have read-only access to all information and can also view reports.</li>',
'  <li><strong>Contributors</strong> can create, edit and delete information and view reports.</li>',
'  <li><strong>Administrators</strong>, in addition to Contributors capability, can also perform configuration of the application by accessing the Administration section of the application.</li>',
'</ul>',
'</em></p>'))
,p_last_updated_by=>'LOWCODE'
,p_last_upd_yyyymmddhh24miss=>'20191211111843'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(12101049070966961815)
,p_plug_name=>'Access Control Configuration'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(12100650718659960759)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(12101049186035961815)
,p_plug_name=>'Dialog Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(12100651778089960760)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(12101050548796961816)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(12101049186035961815)
,p_button_name=>'APPLY_CHANGES'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(12100738882918960818)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CREATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(12101049222039961815)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(12101049186035961815)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(12100738882918960818)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_PREVIOUS'
,p_button_execute_validations=>'N'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(12101051242763961817)
,p_branch_name=>'Go To Admin Page'
,p_branch_action=>'f?p=&APP_ID.:10000:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12101051565540961817)
,p_name=>'P10040_ALLOW_OTHER_USERS'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(12101049070966961815)
,p_prompt=>'Any authenticated user may access this application'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if apex_app_setting.get_value( p_name => ''ACCESS_CONTROL_SCOPE'' ) = ''ACL_ONLY'' then',
'    return ''N'';',
'else',
'    return ''Y'';',
'end if;'))
,p_source_type=>'FUNCTION_BODY'
,p_display_as=>'NATIVE_YES_NO'
,p_cSize=>64
,p_cMaxlength=>4000
,p_cHeight=>4
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(12100737532414960817)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_inline_help_text=>'Choose <strong>No</strong> if all users are defined in the access control list. Choose <strong>Yes</strong> if authenticated users not in the access control list may also use this application.'
,p_attribute_01=>'APPLICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(12101049351860961815)
,p_name=>'Cancel Modal'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(12101049222039961815)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(12101052252279961818)
,p_event_id=>wwv_flow_api.id(12101049351860961815)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(12101052775369961819)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ACCESS CONTROL ENABLED'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    if :P10040_ALLOW_OTHER_USERS = ''Y'' then',
'        apex_app_setting.set_value (',
'            p_name  => ''ACCESS_CONTROL_SCOPE'',',
'            p_value => ''ALL_USERS'');',
'    else',
'        apex_app_setting.set_value (',
'            p_name  => ''ACCESS_CONTROL_SCOPE'',',
'            p_value => ''ACL_ONLY'');',
'    end if;',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Access Control settings saved.'
);
end;
/
prompt --application/pages/page_10041
begin
wwv_flow_api.create_page(
 p_id=>10041
,p_user_interface_id=>wwv_flow_api.id(12100761473880960836)
,p_name=>'Manage User Access'
,p_page_mode=>'MODAL'
,p_step_title=>'Manage User Access'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(12100767576725960852)
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_api.id(12100765682466960847)
,p_required_patch=>wwv_flow_api.id(12100762962395960844)
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page shows a report of the application users and the access level granted.</p>',
'<p>Click on the column headings to sort and filter data, or click on the <strong>Actions</strong> button to customize column display and many additional advanced features.<br>',
'Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>',
'<p>Click the edit icon (yellow pencil) to edit the user details and access level, or to delete the user.</p>',
'<p>Click <strong>Add User</strong>, at the top of the report, to add a new user and their access level.</p>'))
,p_last_updated_by=>'LOWCODE'
,p_last_upd_yyyymmddhh24miss=>'20191211111843'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(12101053104870961819)
,p_plug_name=>'Manage User Access'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>wwv_flow_api.id(12100676227768960775)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select id,',
'   user_name_lc USERNAME,',
'   role_names ACCESS_ROLE',
'from APEX_APPL_ACL_USERS',
'where APPLICATION_ID = :APP_ID'))
,p_plug_source_type=>'NATIVE_IR'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(12101054210984961820)
,p_name=>'Manage User Access'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:10042:&APP_SESSION.::::P10042_ID:#ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_owner=>'LOWCODE'
,p_internal_uid=>12101054210984961820
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12101054351013961820)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12101054743994961821)
,p_db_column_name=>'USERNAME'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Username'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12101055169273961821)
,p_db_column_name=>'ACCESS_ROLE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Roles'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(12101055827499961822)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'121010559'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'USERNAME:ACCESS_ROLE'
,p_sort_column_2=>'USERNAME'
,p_sort_direction_2=>'ASC'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(12101056724246961823)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(12101053104870961819)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft:t-Button--gapRight'
,p_button_template_id=>wwv_flow_api.id(12100738926227960818)
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&SESSION.::&DEBUG.:&APP_PAGE_ID.,RIR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(12101057119307961823)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(12101053104870961819)
,p_button_name=>'ADD_MULTIPLE_USERS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(12100738882918960818)
,p_button_image_alt=>'Add Multiple Users'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:10043:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(12101057528579961823)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(12101053104870961819)
,p_button_name=>'ADD_USER'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(12100738882918960818)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add User'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:10042:&SESSION.::&DEBUG.:10042'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(12101053238235961819)
,p_name=>'Refresh on Dialog Close'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(12101053104870961819)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(12101058112265961824)
,p_event_id=>wwv_flow_api.id(12101053238235961819)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(12101053104870961819)
);
end;
/
prompt --application/pages/page_10042
begin
wwv_flow_api.create_page(
 p_id=>10042
,p_user_interface_id=>wwv_flow_api.id(12100761473880960836)
,p_name=>'Manage User Access'
,p_alias=>'USER_ACCESS'
,p_page_mode=>'MODAL'
,p_step_title=>'Manage User Access'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(12100767576725960852)
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_required_role=>wwv_flow_api.id(12100765682466960847)
,p_required_patch=>wwv_flow_api.id(12100762962395960844)
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Use this form to enter users, their email address and set their access level. ',
'The settings defined under <em>Configure Access Control</em> will determine whether the username must be their email address or can be any alphanumeric entry.</p>',
'<p>This application supports the following 3 access levels: Reader, Contributor, and Administrator.</p>',
'<ul>',
'  <li><strong>Readers</strong> have read-only access to all information and can also view reports.</li>',
'  <li><strong>Contributors</strong> can create, edit and delete information and view reports.</li>',
'  <li><strong>Administrators</strong>, in addition to Contributors capability, can also perform configuration of the application by accessing the Administration section of the application.</li>',
'</ul>',
'<p>When editing an existing user you can lock their account which will prevent them from accessing the application.</p>',
'<p><em><strong>Note:</strong>   If using Oracle Application Express accounts then users entered here must also be defined as end users by a Workspace Administrator, who can also set their password.</em></p>'))
,p_last_updated_by=>'LOWCODE'
,p_last_upd_yyyymmddhh24miss=>'20191211111843'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(12101058656490961824)
,p_plug_name=>'Form Items Region'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(12100650718659960759)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(12101058725575961824)
,p_plug_name=>'Button Bar'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(12100651778089960760)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(12101058830036961824)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(12101058725575961824)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_id=>wwv_flow_api.id(12100738882918960818)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_condition=>'P10042_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(12101058913542961824)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(12101058725575961824)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_id=>wwv_flow_api.id(12100738882918960818)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add User'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_condition=>'P10042_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(12101059063250961824)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(12101058725575961824)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(12100738882918960818)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_PREVIOUS'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(12101059151220961824)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(12101058725575961824)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>wwv_flow_api.id(12100738882918960818)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_PREVIOUS'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_condition=>'P10042_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12101059343681961824)
,p_name=>'P10042_USERNAME'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(12101058656490961824)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Username'
,p_source=>'USER_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>255
,p_read_only_when=>'P10042_ID'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(12100738035942960817)
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12101061504787961827)
,p_name=>'P10042_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(12101058656490961824)
,p_use_cache_before_default=>'NO'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12101061971661961827)
,p_name=>'P10042_APPLICATION_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(12101058656490961824)
,p_use_cache_before_default=>'NO'
,p_item_default=>'&APP_ID.'
,p_source=>'APPLICATION_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12101062621852961828)
,p_name=>'P10042_ROLE_ID'
,p_is_required=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(12101058656490961824)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Role'
,p_source=>'ROLE_IDS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'ACCESS_ROLES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select role_name d, role_id r',
'from APEX_APPL_ACL_ROLES where application_id = :APP_ID ',
'order by 1'))
,p_field_template=>wwv_flow_api.id(12100738035942960817)
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>When Access Control is enabled, Administrators have the ability to restrict access to certain application features for authenticated users. This application supports the following 3 roles: Reader, Contributor, and Administrator.<p>',
'<ul>',
'  <li><strong>Readers</strong> have read-only access to all information and can also view reports.</li>',
'  <li><strong>Contributors</strong> can create,edit and delete information and view reports.</li>',
'  <li><strong>Administrators</strong>,in addition to Contributors capability,can also perform configuration of the application.</li>',
'</ul>'))
,p_attribute_01=>'1'
,p_attribute_02=>'VERTICAL'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(12101059254097961824)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(12101059063250961824)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(12101064104566961830)
,p_event_id=>wwv_flow_api.id(12101059254097961824)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(12101064649604961830)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row'
,p_attribute_02=>'APEX_APPL_ACL_USERS'
,p_attribute_03=>'P10042_ID'
,p_attribute_04=>'ID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(12101065043222961830)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Save'
,p_attribute_02=>'APEX_APPL_ACL_USERS'
,p_attribute_03=>'P10042_ID'
,p_attribute_04=>'ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(12101065445512961831)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Reset Page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(12101059151220961824)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(12101065868301961831)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_10043
begin
wwv_flow_api.create_page(
 p_id=>10043
,p_user_interface_id=>wwv_flow_api.id(12100761473880960836)
,p_name=>'Add Multiple Users - Step 1'
,p_page_mode=>'MODAL'
,p_step_title=>'Add Multiple Users'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(12100767576725960852)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.helpText {',
'padding: 8px;',
'color: #707070;',
'}'))
,p_required_role=>wwv_flow_api.id(12100765682466960847)
,p_required_patch=>wwv_flow_api.id(12100762962395960844)
,p_dialog_chained=>'N'
,p_deep_linking=>'N'
,p_last_updated_by=>'LOWCODE'
,p_last_upd_yyyymmddhh24miss=>'20191211111843'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(12101066247648961831)
,p_plug_name=>'Button Bar'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(12100651778089960760)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(12101066350603961831)
,p_plug_name=>'Wizard Container'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_component_template_options=>'#DEFAULT#:t-WizardSteps--displayCurrentLabelOnly'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(12100650718659960759)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(12101066468338961831)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(12101066247648961831)
,p_button_name=>'NEXT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(12100738926227960818)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Next'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_icon_css_classes=>'fa-chevron-right'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(12101066507576961831)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(12101066247648961831)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(12100738882918960818)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_PREVIOUS'
,p_button_execute_validations=>'N'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(12101069196862961833)
,p_branch_name=>'Go To Next Step'
,p_branch_action=>'f?p=&APP_ID.:10044:&SESSION.::&DEBUG.:RP,10044::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(12101066468338961831)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12101069530363961833)
,p_name=>'P10043_ROLE'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(12101066350603961831)
,p_item_default=>'2'
,p_prompt=>'Role'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'ACCESS_ROLES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select role_name d, role_id r',
'from APEX_APPL_ACL_ROLES where application_id = :APP_ID ',
'order by 1'))
,p_field_template=>wwv_flow_api.id(12100738035942960817)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'3'
,p_attribute_02=>'VERTICAL'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12101069948069961834)
,p_name=>'P10043_PRELIM_USERS'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(12101066350603961831)
,p_prompt=>'Usernames'
,p_placeholder=>'Enter usernames here'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>80
,p_cMaxlength=>4000
,p_cHeight=>5
,p_field_template=>wwv_flow_api.id(12100738035942960817)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_inline_help_text=>'Enter usernames separated by commas, semicolons, or whitespace. Existing or duplicate usernames will automatically be ignored.'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12101070302740961834)
,p_name=>'P10043_USERNAME_FORMAT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(12101066350603961831)
,p_prompt=>'Username Format'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'EMAIL_USERNAME_FORMAT'
,p_lov=>'.'||wwv_flow_api.id(12101070416607961834)||'.'
,p_field_template=>wwv_flow_api.id(12100738035942960817)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'1'
,p_attribute_02=>'VERTICAL'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(12101066647477961831)
,p_name=>'Cancel Modal'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(12101066507576961831)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(12101071754386961835)
,p_event_id=>wwv_flow_api.id(12101066647477961831)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(12101072264805961836)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Create Collections'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_line      varchar2(32767);',
'    l_emails    apex_t_varchar2;',
'    l_username  varchar2(4000);',
'    l_at        number;',
'    l_dot       number;',
'    l_valid     boolean := true;',
'    l_domain    varchar2(4000);',
'begin',
'    ---------------------',
'    -- create collections',
'    --',
'    apex_collection.CREATE_OR_TRUNCATE_COLLECTION (''ACL_BULK_USER_INVALID'');',
'    apex_collection.CREATE_OR_TRUNCATE_COLLECTION (''ACL_BULK_USER_VALID'');',
'',
'    --------------------------------------------',
'    -- replace delimiting characters with commas',
'    --',
'    l_line := :P10043_PRELIM_USERS;',
'    l_line := replace(l_line,chr(10),'' '');',
'    l_line := replace(l_line,chr(13),'' '');',
'    l_line := replace(l_line,chr(9),'' '');',
'    l_line := replace(l_line,''<'','' '');',
'    l_line := replace(l_line,''>'','' '');',
'    l_line := replace(l_line,'';'','' '');',
'    l_line := replace(l_line,'':'','' '');',
'    l_line := replace(l_line,''('','' '');',
'    l_line := replace(l_line,'')'','' '');',
'    l_line := replace(l_line,'' '','','');',
'',
'    -----------------------------------------',
'    -- get one comma separated line of emails',
'    --',
'    for j in 1..1000 loop',
'        if instr(l_line,'',,'') > 0 then',
'           l_line := replace(l_line,'',,'','','');',
'        else',
'           exit;',
'        end if;',
'    end loop;',
'',
'    -------------------------',
'    -- get an array of emails',
'    --',
'    l_emails := apex_string.split(l_line,'','');',
'',
'    -----------------------------',
'    -- add emails to a collection',
'    --',
'    l_username := null;',
'    l_domain := null;',
'    l_at := 0;',
'    l_dot := 0;',
'    for j in 1..l_emails.count loop',
'        l_valid := true;',
'        l_username := upper(trim(l_emails(j)));',
'        l_username := trim(both ''.'' from l_username);',
'        l_username := replace(l_username,'' '',null);',
'        l_username := replace(l_username,chr(10),null);',
'        l_username := replace(l_username,chr(9),null);',
'        l_username := replace(l_username,chr(13),null);',
'        l_username := replace(l_username,chr(49824),null);',
'',
'        if l_username is not null then',
'            if NVL(:P10043_USERNAME_FORMAT,''x'') = ''EMAIL'' then',
'              -----------',
'              -- Validate',
'              --',
'              l_at := instr(nvl(l_username,''x''),''@'');',
'              l_domain := substr(l_username,l_at+1);',
'              l_dot := instr(l_domain,''.'');',
'              if l_at < 2 then',
'                  -- invalid email',
'                  apex_collection.add_member(',
'                      p_collection_name => ''ACL_BULK_USER_INVALID'',',
'                      p_c001            => l_username,',
'                      p_c002            => apex_lang.message(''APEX.FEATURE.ACL.BULK_USER.MISSING_AT_SIGN''));',
'                  commit;',
'                  l_valid := false;',
'              end if;',
'',
'              if l_dot = 0 and l_valid then',
'                  apex_collection.add_member(',
'                      p_collection_name => ''ACL_BULK_USER_INVALID'',',
'                      p_c001            => l_username,',
'                      p_c002            => apex_lang.message(''APEX.FEATURE.ACL.BULK_USER.MISSING_DOT''));',
'                  commit;',
'                  l_valid := false;',
'              end if;',
'            end if;',
'',
'            if l_valid and length(l_username) > 255 then',
'                apex_collection.add_member(',
'                    p_collection_name => ''ACL_BULK_USER_INVALID'',',
'                    p_c001            => l_username,',
'                    p_c002            => apex_lang.message(''APEX.FEATURE.ACL.BULK_USER.USERNAME_TOO_LONG''));',
'                commit;',
'                l_valid := false;',
'            end if;',
'',
'            if l_valid then',
'                for c1 in (select user_name username',
'                             from APEX_APPL_ACL_USERS',
'                            where user_name = l_username and application_id = :APP_ID)',
'                loop',
'                    apex_collection.add_member(',
'                        p_collection_name => ''ACL_BULK_USER_INVALID'',',
'                        p_c001            => l_username,',
'                        p_c002            => apex_lang.message(''APEX.FEATURE.ACL.BULK_USER.ALREADY_IN_ACL''));',
'                    commit;',
'                    l_valid := false;',
'                    exit;',
'                end loop;',
'            end if;',
'',
'            if l_valid then',
'                for c1 in (select c001',
'                             from apex_collections',
'                            where collection_name = ''ACL_BULK_USER_VALID''',
'                              and c001 = l_username)',
'                loop',
'                    apex_collection.add_member(',
'                        p_collection_name => ''ACL_BULK_USER_INVALID'',',
'                        p_c001            => l_username,',
'                        p_c002            => apex_lang.message(''APEX.FEATURE.ACL.BULK_USER.DUPLICATE_USER''));',
'                        commit;',
'                    l_valid := false;',
'                    exit;',
'                end loop;',
'            end if;',
'',
'            if l_valid then',
'                apex_collection.add_member(',
'                    p_collection_name => ''ACL_BULK_USER_VALID'',',
'                    p_c001            => l_username,',
'                    p_c002            => null,',
'                    p_c003            => :P10043_ROLE);',
'                    commit;',
'            end if;',
'',
'        end if;',
'        l_username := null;',
'    end loop;',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(12101066468338961831)
);
end;
/
prompt --application/pages/page_10044
begin
wwv_flow_api.create_page(
 p_id=>10044
,p_user_interface_id=>wwv_flow_api.id(12100761473880960836)
,p_name=>'Add Multiple Users - Step 2'
,p_page_mode=>'MODAL'
,p_step_title=>'Add Multiple Users'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(12100767576725960852)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.uReportList {',
'    margin: 0;',
'    list-style: none;',
'}',
'.uReportList li {',
'    margin: 0 0 4px 0;',
'}',
'.check_icon {',
'    display: inline-block;',
'    width: 16px;',
'    height: 16px;',
'    line-height: 16px;',
'    background: #69B86B;',
'    color: #FFF;',
'    text-align: center;',
'    border-radius: 12px;',
'    font-size: 15px;',
'    border: 1px solid green;',
'    text-shadow: 0 -1px 0 rgba(0,0,0,.15);',
'    vertical-align: top;',
'    margin-right: 4px;',
'}',
'.valid_user {',
'    display: inline-block;',
'    padding: 4px 8px 4px 4px;',
'    border: 1px solid #D0D0D0;',
'    border-radius: 3px;',
'    line-height: 20px;',
'    background-color: #F8F8F8;',
'    color: #404040;',
'}'))
,p_required_role=>wwv_flow_api.id(12100765682466960847)
,p_required_patch=>wwv_flow_api.id(12100762962395960844)
,p_deep_linking=>'N'
,p_last_updated_by=>'LOWCODE'
,p_last_upd_yyyymmddhh24miss=>'20191211111843'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(12101066735340961831)
,p_plug_name=>'Button Bar'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(12100651778089960760)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(12101066897697961831)
,p_plug_name=>'Add Multiple Users - Step 2'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_component_template_options=>'#DEFAULT#:t-WizardSteps--displayCurrentLabelOnly'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(12100650718659960759)
,p_plug_display_sequence=>40
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(12101067246209961831)
,p_name=>'Exceptions'
,p_parent_plug_id=>wwv_flow_api.id(12101066897697961831)
,p_template=>wwv_flow_api.id(12100661125941960765)
,p_display_sequence=>60
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-collapsed:t-Region--noUI:t-Region--scrollBody'
,p_component_template_options=>'t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlightOff'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select c001 username, c002 reason',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_INVALID''',
'order by 1'))
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_INVALID'''))
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(12100707062250960795)
,p_query_num_rows=>10000
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(12101074258488961838)
,p_query_column_id=>1
,p_column_alias=>'USERNAME'
,p_column_display_sequence=>1
,p_column_heading=>'Username'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(12101074608013961839)
,p_query_column_id=>2
,p_column_alias=>'REASON'
,p_column_display_sequence=>2
,p_column_heading=>'Reason'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(12101067301247961831)
,p_name=>'&P10044_VALID_COUNT. Users to Add'
,p_parent_plug_id=>wwv_flow_api.id(12101066897697961831)
,p_template=>wwv_flow_api.id(12100650718659960759)
,p_display_sequence=>50
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlightOff'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct lower(c001) username',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID''',
'order by 1'))
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(12100707062250960795)
,p_query_num_rows=>10000
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No valid new users found'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(12101077719714961842)
,p_query_column_id=>1
,p_column_alias=>'USERNAME'
,p_column_display_sequence=>1
,p_column_heading=>'Username'
,p_column_html_expression=>'<span class="fa fa-check-circle u-success-text" aria-hidden="true"></span> #USERNAME#'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(12101067406212961831)
,p_plug_name=>'Hidden Items'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(12100650718659960759)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(12101079349235961844)
,p_plug_name=>'Valid Users Exist - Page Info'
,p_region_template_options=>'#DEFAULT#:margin-bottom-sm'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(12100650718659960759)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'sys.htp.prn(''<p>'');',
'sys.htp.prn(apex_lang.message(''APEX.FEATURE.ACL.BULK_USER.CREATE_CONFIRM'', :P10044_VALID_COUNT, :P10044_ROLE));',
'sys.htp.prn(''</p>'');'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_num_rows=>15
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(12101080026314961845)
,p_plug_name=>'No Valid Users Exist - Page Info'
,p_region_template_options=>'#DEFAULT#:margin-bottom-sm'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(12100650718659960759)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>'<p>No valid new users found</p>'
,p_plug_query_num_rows=>15
,p_plug_display_condition_type=>'NOT_EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(12101067595400961831)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(12101066735340961831)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(12100738882918960818)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Users'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
,p_button_condition_type=>'EXISTS'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(12101080797167961846)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(12101066735340961831)
,p_button_name=>'PREVIOUS'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(12100738113074960817)
,p_button_image_alt=>'Previous'
,p_button_position=>'REGION_TEMPLATE_PREVIOUS'
,p_button_redirect_url=>'javascript:history.back();'
,p_icon_css_classes=>'fa-chevron-left'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(12101067059477961831)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(12101066735340961831)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(12100738882918960818)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_PREVIOUS'
,p_button_execute_validations=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12101081458074961846)
,p_name=>'P10044_ROLE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(12101067406212961831)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 access_level',
'from dual ',
'where 1 = 1'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_field_template=>wwv_flow_api.id(12100737709570960817)
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12101081871245961846)
,p_name=>'P10044_VALID_COUNT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(12101067406212961831)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select count(*)',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_field_template=>wwv_flow_api.id(12100737709570960817)
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12101082239432961847)
,p_name=>'P10044_INVALID_COUNT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(12101067406212961831)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select count(*)',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_field_template=>wwv_flow_api.id(12100737709570960817)
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(12101067107590961831)
,p_name=>'Cancel Modal'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(12101067059477961831)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(12101082968620961848)
,p_event_id=>wwv_flow_api.id(12101067107590961831)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(12101083493101961848)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Add Users to Access Control List'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_user_role_ids apex_application_global.vc_arr2;',
'begin',
'    for c in (  select distinct c001 as username, c003 as user_roles',
'                from   apex_collections',
'                where  collection_name = ''ACL_BULK_USER_VALID'' ) loop',
'         l_user_role_ids := apex_util.string_to_table(c.user_roles);',
'         for i in 1..l_user_role_ids.count loop',
'             apex_acl.add_user_role(p_application_id => :APP_ID, p_user_name => c.username, p_role_id => l_user_role_ids(i));',
'         end loop;',
'    end loop;',
'',
'    apex_collection.DELETE_COLLECTION(''ACL_BULK_USER_INVALID'');',
'    apex_collection.DELETE_COLLECTION(''ACL_BULK_USER_VALID'');',
'    :P10043_PRELIM_USERS := null;',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(12101067595400961831)
,p_process_success_message=>'User(s) added.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(12101083834503961848)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_10050
begin
wwv_flow_api.create_page(
 p_id=>10050
,p_user_interface_id=>wwv_flow_api.id(12100761473880960836)
,p_name=>'Feedback'
,p_page_mode=>'MODAL'
,p_step_title=>'Feedback'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(12100767576725960852)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.feedback-positive, .feedback-negative, .feedback-neutral { padding: 8px; border-radius: 100%; background-color: white; margin: 4px; }',
'.feedback-positive { color: #4caf50; }',
'.feedback-neutral { color: #eb9f41; }',
'.feedback-negative { color: #f44336; }'))
,p_required_patch=>wwv_flow_api.id(12100763141023960844)
,p_dialog_width=>'480'
,p_dialog_chained=>'N'
,p_last_updated_by=>'LOWCODE'
,p_last_upd_yyyymmddhh24miss=>'20191211111843'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(12101084218828961849)
,p_plug_name=>'Form Items Region'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(12100650718659960759)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(12101084377497961849)
,p_plug_name=>'Buttons Region'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(12100651778089960760)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(12101084465891961849)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(12101084377497961849)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>wwv_flow_api.id(12100738882918960818)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submit Feedback'
,p_button_position=>'REGION_TEMPLATE_CREATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(12101084589198961849)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(12101084377497961849)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(12100738882918960818)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_EDIT'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(12101093135523961855)
,p_branch_name=>'success'
,p_branch_action=>'f?p=&APP_ID.:10051:&SESSION.::&DEBUG.:RP::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12101087958615961851)
,p_name=>'P10050_APPLICATION_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(12101084218828961849)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12101088354298961851)
,p_name=>'P10050_PAGE_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(12101084218828961849)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12101088769587961851)
,p_name=>'P10050_USER_AGENT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(12101084218828961849)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select sys.owa_util.get_cgi_env(''user-agent'') x',
'from dual'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12101089158807961852)
,p_name=>'P10050_RATING'
,p_item_sequence=>35
,p_item_plug_id=>wwv_flow_api.id(12101084218828961849)
,p_prompt=>'Experience'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'FEEDBACK_RATING'
,p_lov=>'.'||wwv_flow_api.id(12101089259224961852)||'.'
,p_field_template=>wwv_flow_api.id(12100737709570960817)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--radioButtonGroup'
,p_lov_display_extra=>'NO'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'3'
,p_attribute_02=>'NONE'
,p_attribute_03=>'Y'
,p_attribute_04=>'VERTICAL'
,p_attribute_05=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12101091058506961853)
,p_name=>'P10050_FEEDBACK'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(12101084218828961849)
,p_prompt=>'Feedback'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>64
,p_cMaxlength=>4000
,p_cHeight=>4
,p_field_template=>wwv_flow_api.id(12100737709570960817)
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(12101092714813961855)
,p_validation_name=>'At least One Feedback Required'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P10050_FEEDBACK is null and :P10050_RATING is null then',
'    return false;',
'else',
'    return true;',
'end if;'))
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Please provide feedback or your experience.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(12101084685117961849)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(12101084589198961849)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(12101091866405961854)
,p_event_id=>wwv_flow_api.id(12101084685117961849)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(12101092330982961854)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Submit Feedback'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'apex_util.submit_feedback (',
'    p_comment              => :P10050_FEEDBACK,',
'    p_application_id       => :APP_ID,',
'    p_page_id              => :P10050_PAGE_ID,',
'    p_rating               => :P10050_RATING',
'',
' );',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(12101084465891961849)
,p_process_success_message=>'Feedback Submitted'
);
end;
/
prompt --application/pages/page_10051
begin
wwv_flow_api.create_page(
 p_id=>10051
,p_user_interface_id=>wwv_flow_api.id(12100761473880960836)
,p_name=>'Feedback Submitted'
,p_page_mode=>'MODAL'
,p_step_title=>'Feedback'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(12100767576725960852)
,p_required_patch=>wwv_flow_api.id(12100763141023960844)
,p_last_updated_by=>'LOWCODE'
,p_last_upd_yyyymmddhh24miss=>'20191211111843'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(12101084877941961849)
,p_plug_name=>'Feedback Submitted'
,p_icon_css_classes=>'fa-check-circle'
,p_region_template_options=>'#DEFAULT#:t-Alert--wizard:t-Alert--customIcons:t-Alert--success'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(12100647074917960757)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(12101084733564961849)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(12101084877941961849)
,p_button_name=>'CLOSE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(12100738882918960818)
,p_button_image_alt=>'Close'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_css_classes=>'w40p'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(12101084923064961849)
,p_name=>'Close Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(12101084733564961849)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(12101094730589961857)
,p_event_id=>wwv_flow_api.id(12101084923064961849)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
end;
/
prompt --application/pages/page_10053
begin
wwv_flow_api.create_page(
 p_id=>10053
,p_user_interface_id=>wwv_flow_api.id(12100761473880960836)
,p_name=>'Manage Feedback'
,p_page_mode=>'MODAL'
,p_step_title=>'Manage Feedback'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(12100767576725960852)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Color feedback rating icons */',
'.feedback-positive { color: #4caf50; }',
'.feedback-neutral { color: #eb9f41; }',
'.feedback-negative { color: #f44336; }'))
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_api.id(12100765682466960847)
,p_required_patch=>wwv_flow_api.id(12100763141023960844)
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Feedback can be entered by end users from any normal page within the application.</p>',
'<p>This report shows the feedback entered, any response enter by administrators, and the status of the feedback.</p>',
'<p>Click the edit icon (yellow pencil) to enter a response or update the feedback status.</p>',
'<p><em><strong>Note:</strong> If feedback recipients have been defined then feedback submissions will also be emailed to the email addresses in the feedback recipients list.</em></p>'))
,p_last_updated_by=>'LOWCODE'
,p_last_upd_yyyymmddhh24miss=>'20191211111843'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(12101086376739961849)
,p_plug_name=>'Manage Feedback'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>wwv_flow_api.id(12100676227768960775)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select feedback_id id,',
'    page_id||''. ''||page_name page_name,',
'    created_on created,',
'    lower(created_by) created_by,',
'    feedback,',
'    feedback_rating rating,',
'    case feedback_rating',
'      when 1 then ''fa-frown-o feedback-negative'' ',
'      when 2 then ''fa-emoji-neutral feedback-neutral''  ',
'      when 3 then ''fa-smile-o feedback-positive''',
'    end rating_icon,',
'    feedback_status status,',
'    public_response response,',
'    http_user_agent user_agent,',
'    updated_on updated,',
'    lower(updated_by) updated_by,',
'    page_id',
'',
'',
'',
'',
'from apex_team_feedback f',
'where application_id = :APP_ID'))
,p_plug_source_type=>'NATIVE_IR'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(12101105736583961866)
,p_name=>'Manage Feedback'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:10054:&APP_SESSION.::::P10054_ID:#ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_owner=>'LOWCODE'
,p_internal_uid=>12101105736583961866
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12101105887566961870)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12101106318411961871)
,p_db_column_name=>'PAGE_NAME'
,p_display_order=>11
,p_column_identifier=>'B'
,p_column_label=>'Application Page'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12101106737571961872)
,p_db_column_name=>'CREATED'
,p_display_order=>21
,p_column_identifier=>'C'
,p_column_label=>'Filed'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'since'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12101107333347961872)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>31
,p_column_identifier=>'D'
,p_column_label=>'Filed By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12101107707234961873)
,p_db_column_name=>'FEEDBACK'
,p_display_order=>41
,p_column_identifier=>'E'
,p_column_label=>'Feedback'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12101108138100961874)
,p_db_column_name=>'RATING'
,p_display_order=>51
,p_column_identifier=>'F'
,p_column_label=>'Rating'
,p_column_html_expression=>'<span class="fa #RATING_ICON#" aria-hidden="true" title="#RATING#"></span>'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_rpt_named_lov=>wwv_flow_api.id(12101089259224961852)
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12101108596545961874)
,p_db_column_name=>'RATING_ICON'
,p_display_order=>55
,p_column_identifier=>'G'
,p_column_label=>'RATING ICON'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12101108942548961875)
,p_db_column_name=>'STATUS'
,p_display_order=>61
,p_column_identifier=>'H'
,p_column_label=>'Status'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_named_lov=>wwv_flow_api.id(12101099494862961861)
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12101109300541961875)
,p_db_column_name=>'RESPONSE'
,p_display_order=>71
,p_column_identifier=>'I'
,p_column_label=>'Response'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12101109710269961876)
,p_db_column_name=>'USER_AGENT'
,p_display_order=>81
,p_column_identifier=>'J'
,p_column_label=>'User Agent'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12101110188832961876)
,p_db_column_name=>'UPDATED'
,p_display_order=>91
,p_column_identifier=>'K'
,p_column_label=>'Updated'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'since'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12101110548448961877)
,p_db_column_name=>'UPDATED_BY'
,p_display_order=>101
,p_column_identifier=>'L'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12101110973914961878)
,p_db_column_name=>'PAGE_ID'
,p_display_order=>111
,p_column_identifier=>'M'
,p_column_label=>'Page'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(12101111626923961878)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'121011117'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PAGE_NAME:CREATED:CREATED_BY:FEEDBACK:RATING:STATUS:RESPONSE:UPDATED:UPDATED_BY'
,p_sort_column_1=>'UPDATED'
,p_sort_direction_1=>'DESC'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(12101112559505961879)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(12101086376739961849)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(12100738926227960818)
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&SESSION.::&DEBUG.:&APP_PAGE_ID.,RIR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(12101086297772961849)
,p_name=>'Refresh on Dialog Close'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(12101086376739961849)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(12101113838080961880)
,p_event_id=>wwv_flow_api.id(12101086297772961849)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(12101086376739961849)
);
end;
/
prompt --application/pages/page_10054
begin
wwv_flow_api.create_page(
 p_id=>10054
,p_user_interface_id=>wwv_flow_api.id(12100761473880960836)
,p_name=>'Feedback'
,p_page_mode=>'MODAL'
,p_step_title=>'Feedback'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(12100767576725960852)
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Color feedback rating icons */',
'.feedback-positive { color: #4caf50; }',
'.feedback-neutral { color: #eb9f41; }',
'.feedback-negative { color: #f44336; }'))
,p_required_role=>wwv_flow_api.id(12100765682466960847)
,p_required_patch=>wwv_flow_api.id(12100763141023960844)
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_last_updated_by=>'LOWCODE'
,p_last_upd_yyyymmddhh24miss=>'20191211111843'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(12101085674371961849)
,p_plug_name=>'Form Items Region'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(12100650718659960759)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(12101085751647961849)
,p_plug_name=>'Buttons Region'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(12100651778089960760)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(12101085824242961849)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(12101085751647961849)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>wwv_flow_api.id(12100738882918960818)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CREATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(12101085963688961849)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(12101085751647961849)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(12100738882918960818)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_EDIT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(12101086003499961849)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(12101085751647961849)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>wwv_flow_api.id(12100738882918960818)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_condition=>'P10054_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12101096991315961859)
,p_name=>'P10054_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(12101085674371961849)
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12101097338007961859)
,p_name=>'P10054_PAGE_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(12101085674371961849)
,p_prompt=>'Page'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(12100737709570960817)
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12101097787248961859)
,p_name=>'P10054_FILED'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(12101085674371961849)
,p_prompt=>'Filed'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(12100737709570960817)
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12101098129114961860)
,p_name=>'P10054_RATING_ICON'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(12101085674371961849)
,p_prompt=>'Rating'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(12100737709570960817)
,p_lov_display_extra=>'NO'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12101098517746961860)
,p_name=>'P10054_FEEDBACK'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(12101085674371961849)
,p_prompt=>'Feedback'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(12100737709570960817)
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12101098916884961860)
,p_name=>'P10054_RESPONSE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(12101085674371961849)
,p_prompt=>'Response'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>64
,p_cMaxlength=>4000
,p_cHeight=>4
,p_field_template=>wwv_flow_api.id(12100737709570960817)
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12101099356749961861)
,p_name=>'P10054_FEEDBACK_STATUS'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(12101085674371961849)
,p_prompt=>'Status'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'FEEDBACK_STATUS'
,p_lov=>'.'||wwv_flow_api.id(12101099494862961861)||'.'
,p_field_template=>wwv_flow_api.id(12100737709570960817)
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12101101687331961863)
,p_name=>'P10054_USER_AGENT'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(12101085674371961849)
,p_prompt=>'User Agent'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(12100737709570960817)
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(12101086129503961849)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(12101085963688961849)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(12101102496607961863)
,p_event_id=>wwv_flow_api.id(12101086129503961849)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(12101102977397961864)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Load Data'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'for c1 in (',
'   select page_id,',
'          page_name,',
'          case feedback_rating',
'                when 1 then ''<span class="fa fa-frown-o feedback-negative" aria-hidden="true" title="Negative"></span>'' ',
'                when 2 then ''<span class="fa fa-emoji-neutral feedback-neutral" aria-hidden="true" title="Neutral"></span>''  ',
'                when 3 then ''<span class="fa fa-smile-o feedback-positive" aria-hidden="true" title="Positive"></span>'' ',
'                end rating_icon,',
'          lower(created_by) || '' - '' || apex_util.get_since(created_on) filed,',
'          feedback,',
'          public_response,',
'          feedback_status,',
'          http_user_agent',
'     from apex_team_feedback',
'    where feedback_id = :P10054_ID',
') loop',
'   :P10054_PAGE_ID := c1.page_id||''. ''||c1.page_name;',
'   :P10054_FILED := c1.filed;',
'   :P10054_RATING_ICON := c1.rating_icon;',
'   :P10054_FEEDBACK := c1.feedback;',
'   :P10054_RESPONSE := c1.public_response;',
'   :P10054_FEEDBACK_STATUS := c1.feedback_status;',
'   :P10054_USER_AGENT := c1.http_user_agent;',
'end loop;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(12101103317881961864)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_util.reply_to_feedback (',
'    p_feedback_id        => :P10054_ID,',
'    p_status             => :P10054_FEEDBACK_STATUS,',
'    p_public_response    => :P10054_RESPONSE );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(12101085824242961849)
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(12101103742213961864)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Delete'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_util.delete_feedback (',
'    p_feedback_id        => :P10054_ID );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(12101086003499961849)
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(12101104125064961865)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'E.PROPERTY.BUTTON_ACTION.LOV.RESET.D'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(12101086003499961849)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(12101104576792961865)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_10060
begin
wwv_flow_api.create_page(
 p_id=>10060
,p_user_interface_id=>wwv_flow_api.id(12100761473880960836)
,p_name=>'About'
,p_alias=>'HELP'
,p_step_title=>'About'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(12100767576725960852)
,p_required_patch=>wwv_flow_api.id(12100763669348960844)
,p_help_text=>'All application help text can be accessed from this page. The links in the "Documentation" region give a much more in-depth explanation of the application''s features and functionality.'
,p_last_updated_by=>'LOWCODE'
,p_last_upd_yyyymmddhh24miss=>'20191211111843'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(12101114797307961882)
,p_plug_name=>'About Page'
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--padded:t-ContentBlock--h1:t-ContentBlock--lightBG'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(12100666568505960769)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>'This application is used to maintain project details for the team. Projects include milestones, where you can define due dates. Tasks can be defined against a milestone or directly against the project'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
end;
/
prompt --application/pages/page_10061
begin
wwv_flow_api.create_page(
 p_id=>10061
,p_user_interface_id=>wwv_flow_api.id(12100761473880960836)
,p_name=>'Help'
,p_alias=>'PAGE_HELP'
,p_page_mode=>'MODAL'
,p_step_title=>'Help'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_api.id(12100763669348960844)
,p_dialog_chained=>'N'
,p_last_updated_by=>'LOWCODE'
,p_last_upd_yyyymmddhh24miss=>'20191211111843'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(12101115443302961883)
,p_plug_name=>'Search Dialog'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(12100650718659960759)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'for c1 in ',
'(',
'    select page_title, help_text ',
'      from apex_application_pages',
'     where page_id = :P10061_PAGE_ID ',
'       and application_id = :APP_ID',
')',
'loop',
'    if c1.help_text is null then',
'        sys.htp.p(''No help is available for this page.'');',
'    else',
'        if substr(c1.help_text, 1, 3) != ''<p>'' then',
'            sys.htp.p(''<p>'');',
'        end if;',
'',
'        sys.htp.p(apex_application.do_substitutions(c1.help_text));',
'',
'        if substr(trim(c1.help_text), -4) != ''</p>'' then',
'            sys.htp.p(''</p>'');',
'        end if;',
'    end if;',
'end loop;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_num_rows=>15
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12101115814767961883)
,p_name=>'P10061_PAGE_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(12101115443302961883)
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
);
end;
/
prompt --application/deployment/definition
begin
wwv_flow_api.create_install(
 p_id=>wwv_flow_api.id(19097849238424624726)
,p_deinstall_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Rem  Copyright @ 2020 Oracle and/or its affiliates.  All rights reserved.',
'Rem  Licensed under the Universal Permissive License v 1.0 as shown at http://oss.oracle.com/licenses/upl. ',
'',
'drop table demo_proj_constraints cascade constraints;',
'drop table demo_proj_status cascade constraints;',
'drop table demo_proj_team_members cascade constraints;',
'drop table demo_projects cascade constraints;',
'drop table demo_proj_milestones cascade constraints;',
'drop table demo_proj_tasks cascade constraints;',
'drop table demo_proj_task_todos cascade constraints;',
'drop table demo_proj_task_links cascade constraints;',
'drop table demo_proj_comments cascade constraints;',
'drop package demo_projects_data_pkg;'))
);
end;
/
prompt --application/deployment/install/install_create_demo_project_tables
begin
wwv_flow_api.create_install_script(
 p_id=>wwv_flow_api.id(19097723744425102083)
,p_install_id=>wwv_flow_api.id(19097849238424624726)
,p_name=>'Create Demo Project Tables'
,p_sequence=>10
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'CREATE TABLE  "DEMO_PROJ_STATUS" ',
'   (	"CD" VARCHAR2(15) NOT NULL ENABLE, ',
'	"DESCRIPTION" VARCHAR2(255) NOT NULL ENABLE, ',
'	"DISPLAY_ORDER" NUMBER NOT NULL ENABLE, ',
'	"CREATED" TIMESTAMP (6) WITH LOCAL TIME ZONE NOT NULL ENABLE, ',
'	"CREATED_BY" VARCHAR2(255) NOT NULL ENABLE, ',
'	"UPDATED" TIMESTAMP (6) WITH LOCAL TIME ZONE NOT NULL ENABLE, ',
'	"UPDATED_BY" VARCHAR2(255) NOT NULL ENABLE, ',
'	 CONSTRAINT "DEMO_PROJ_STATUS_PK" PRIMARY KEY ("CD")',
'  USING INDEX  ENABLE',
'   )',
'/',
'CREATE TABLE  "DEMO_PROJ_TEAM_MEMBERS" ',
'   (	"ID" NUMBER NOT NULL ENABLE, ',
'	"USERNAME" VARCHAR2(255) NOT NULL ENABLE, ',
'	"FULL_NAME" VARCHAR2(255) NOT NULL ENABLE, ',
'	"EMAIL" VARCHAR2(255), ',
'	"PROFILE" VARCHAR2(4000), ',
'	"PHOTO_FILENAME" VARCHAR2(100), ',
'	"PHOTO_BLOB" BLOB, ',
'	"PHOTO_MIMETYPE" VARCHAR2(255), ',
'	"PHOTO_CHARSET" VARCHAR2(128), ',
'	"PHOTO_LAST_UPDATED" DATE, ',
'	"CREATED" TIMESTAMP (6) WITH LOCAL TIME ZONE NOT NULL ENABLE, ',
'	"CREATED_BY" VARCHAR2(255) NOT NULL ENABLE, ',
'	"UPDATED" TIMESTAMP (6) WITH LOCAL TIME ZONE NOT NULL ENABLE, ',
'	"UPDATED_BY" VARCHAR2(255) NOT NULL ENABLE, ',
'	 CONSTRAINT "DEMO_PROJ_TEAM_MEMBERS_PK" PRIMARY KEY ("ID")',
'  USING INDEX  ENABLE, ',
'	 CONSTRAINT "DEMO_PROJ_TEAM_MEMBERS_UK" UNIQUE ("USERNAME")',
'  USING INDEX  ENABLE',
'   )',
'/',
'CREATE TABLE  "DEMO_PROJECTS" ',
'   (	"ID" NUMBER NOT NULL ENABLE, ',
'	"PROJECT_LEAD" NUMBER, ',
'	"NAME" VARCHAR2(255) NOT NULL ENABLE, ',
'	"DESCRIPTION" VARCHAR2(4000), ',
'	"STATUS_CD" VARCHAR2(15) NOT NULL ENABLE, ',
'	"COMPLETED_DATE" DATE, ',
'	"CREATED" TIMESTAMP (6) WITH LOCAL TIME ZONE NOT NULL ENABLE, ',
'	"CREATED_BY" VARCHAR2(255) NOT NULL ENABLE, ',
'	"UPDATED" TIMESTAMP (6) WITH LOCAL TIME ZONE NOT NULL ENABLE, ',
'	"UPDATED_BY" VARCHAR2(255) NOT NULL ENABLE, ',
'	 CONSTRAINT "DEMO_PROJECTS_PK" PRIMARY KEY ("ID")',
'  USING INDEX  ENABLE, ',
'	 CONSTRAINT "DEMO_PROJECTS_UK" UNIQUE ("NAME")',
'  USING INDEX  ENABLE',
'   )',
'/',
'CREATE TABLE  "DEMO_PROJ_MILESTONES" ',
'   (	"ID" NUMBER NOT NULL ENABLE, ',
'	"PROJECT_ID" NUMBER NOT NULL ENABLE, ',
'	"NAME" VARCHAR2(255) NOT NULL ENABLE, ',
'	"DESCRIPTION" VARCHAR2(4000), ',
'	"DUE_DATE" DATE NOT NULL ENABLE, ',
'	"CREATED" TIMESTAMP (6) WITH LOCAL TIME ZONE NOT NULL ENABLE, ',
'	"CREATED_BY" VARCHAR2(255) NOT NULL ENABLE, ',
'	"UPDATED" TIMESTAMP (6) WITH LOCAL TIME ZONE NOT NULL ENABLE, ',
'	"UPDATED_BY" VARCHAR2(255) NOT NULL ENABLE, ',
'	 CONSTRAINT "DEMO_PROJ_MILESTONES_PK" PRIMARY KEY ("ID")',
'  USING INDEX  ENABLE',
'   )',
'/',
'CREATE TABLE  "DEMO_PROJ_TASKS" ',
'   (	"ID" NUMBER NOT NULL ENABLE, ',
'	"PROJECT_ID" NUMBER NOT NULL ENABLE, ',
'	"MILESTONE_ID" NUMBER, ',
'	"ASSIGNEE" NUMBER, ',
'	"NAME" VARCHAR2(255) NOT NULL ENABLE, ',
'	"DESCRIPTION" VARCHAR2(4000), ',
'	"START_DATE" DATE NOT NULL ENABLE, ',
'	"END_DATE" DATE NOT NULL ENABLE, ',
'	"IS_COMPLETE_YN" VARCHAR2(1), ',
'	"CREATED" TIMESTAMP (6) WITH LOCAL TIME ZONE NOT NULL ENABLE, ',
'	"CREATED_BY" VARCHAR2(255) NOT NULL ENABLE, ',
'	"UPDATED" TIMESTAMP (6) WITH LOCAL TIME ZONE NOT NULL ENABLE, ',
'	"UPDATED_BY" VARCHAR2(255) NOT NULL ENABLE, ',
'	 CONSTRAINT "DEMO_PROJ_TASKS_PK" PRIMARY KEY ("ID")',
'  USING INDEX  ENABLE, ',
'	 CONSTRAINT "DEMO_PROJ_TASKS_UK" UNIQUE ("PROJECT_ID", "NAME")',
'  USING INDEX  ENABLE',
'   )',
'/',
'CREATE TABLE  "DEMO_PROJ_TASK_TODOS" ',
'   (	"ID" NUMBER NOT NULL ENABLE, ',
'	"PROJECT_ID" NUMBER NOT NULL ENABLE, ',
'	"TASK_ID" NUMBER NOT NULL ENABLE, ',
'	"ASSIGNEE" NUMBER, ',
'	"NAME" VARCHAR2(255) NOT NULL ENABLE, ',
'	"DESCRIPTION" VARCHAR2(4000), ',
'	"IS_COMPLETE_YN" VARCHAR2(1), ',
'	"CREATED" TIMESTAMP (6) WITH LOCAL TIME ZONE NOT NULL ENABLE, ',
'	"CREATED_BY" VARCHAR2(255) NOT NULL ENABLE, ',
'	"UPDATED" TIMESTAMP (6) WITH LOCAL TIME ZONE NOT NULL ENABLE, ',
'	"UPDATED_BY" VARCHAR2(255) NOT NULL ENABLE, ',
'	 CONSTRAINT "DEMO_PROJ_TASK_TODOS_PK" PRIMARY KEY ("ID")',
'  USING INDEX  ENABLE',
'   )',
'/',
'CREATE TABLE  "DEMO_PROJ_COMMENTS" ',
'   (	"ID" NUMBER NOT NULL ENABLE, ',
'	"PROJECT_ID" NUMBER NOT NULL ENABLE, ',
'	"COMMENT_TEXT" VARCHAR2(4000) NOT NULL ENABLE, ',
'	"CREATED" TIMESTAMP (6) WITH LOCAL TIME ZONE NOT NULL ENABLE, ',
'	"CREATED_BY" VARCHAR2(255) NOT NULL ENABLE, ',
'	"UPDATED" TIMESTAMP (6) WITH LOCAL TIME ZONE NOT NULL ENABLE, ',
'	"UPDATED_BY" VARCHAR2(255) NOT NULL ENABLE, ',
'	 CONSTRAINT "DEMO_PROJ_COMMENTS_PK" PRIMARY KEY ("ID")',
'  USING INDEX  ENABLE',
'   )',
'/',
'CREATE TABLE  "DEMO_PROJ_TASK_LINKS" ',
'   (	"ID" NUMBER NOT NULL ENABLE, ',
'	"PROJECT_ID" NUMBER NOT NULL ENABLE, ',
'	"TASK_ID" NUMBER NOT NULL ENABLE, ',
'	"LINK_TYPE" VARCHAR2(20) NOT NULL ENABLE, ',
'	"URL" VARCHAR2(255), ',
'	"APPLICATION_ID" NUMBER, ',
'	"APPLICATION_PAGE" NUMBER, ',
'	"DESCRIPTION" VARCHAR2(4000), ',
'	"CREATED" TIMESTAMP (6) WITH LOCAL TIME ZONE NOT NULL ENABLE, ',
'	"CREATED_BY" VARCHAR2(255) NOT NULL ENABLE, ',
'	"UPDATED" TIMESTAMP (6) WITH LOCAL TIME ZONE NOT NULL ENABLE, ',
'	"UPDATED_BY" VARCHAR2(255) NOT NULL ENABLE, ',
'	 CONSTRAINT "DEMO_PROJ_TASK_LINKS_PK" PRIMARY KEY ("ID")',
'  USING INDEX  ENABLE, ',
'	 CONSTRAINT "DEMO_PROJ_TASK_LINK_LTY_CH" CHECK ( link_type in (''URL'',''Application'')) ENABLE',
'   )',
'/',
'CREATE TABLE  "DEMO_PROJ_CONSTRAINTS" ',
'   (	"CONSTRAINT_NAME" VARCHAR2(30) NOT NULL ENABLE, ',
'	"MESSAGE" VARCHAR2(4000) NOT NULL ENABLE, ',
'	 CONSTRAINT "DEMO_PROJ_CONST_LOOKUP_PK" PRIMARY KEY ("CONSTRAINT_NAME")',
'  USING INDEX  ENABLE',
'   )',
'/',
'ALTER TABLE  "DEMO_PROJ_COMMENTS" ADD CONSTRAINT "DEMO_PROJ_COMMENT_PROJ_FK" FOREIGN KEY ("PROJECT_ID")',
'	  REFERENCES  "DEMO_PROJECTS" ("ID") ON DELETE CASCADE ENABLE',
'/',
'ALTER TABLE  "DEMO_PROJ_MILESTONES" ADD CONSTRAINT "DEMO_PROJ_MSTONE_PROJ_FK" FOREIGN KEY ("PROJECT_ID")',
'	  REFERENCES  "DEMO_PROJECTS" ("ID") ON DELETE CASCADE ENABLE',
'/',
'ALTER TABLE  "DEMO_PROJECTS" ADD CONSTRAINT "DEMO_PROJ_STATUS_FK" FOREIGN KEY ("STATUS_CD")',
'	  REFERENCES  "DEMO_PROJ_STATUS" ("CD") ON DELETE SET NULL ENABLE',
'/',
'ALTER TABLE  "DEMO_PROJ_TASK_LINKS" ADD CONSTRAINT "DEMO_PROJ_TASK_LINK_PRJ_FK" FOREIGN KEY ("PROJECT_ID")',
'	  REFERENCES  "DEMO_PROJECTS" ("ID") ON DELETE CASCADE ENABLE',
'/',
'ALTER TABLE  "DEMO_PROJ_TASK_LINKS" ADD CONSTRAINT "DEMO_PROJ_TASK_LINK_TSK_FK" FOREIGN KEY ("TASK_ID")',
'	  REFERENCES  "DEMO_PROJ_TASKS" ("ID") ON DELETE CASCADE ENABLE',
'/',
'ALTER TABLE  "DEMO_PROJ_TASKS" ADD CONSTRAINT "DEMO_PROJ_TASK_MSTONE_FK" FOREIGN KEY ("MILESTONE_ID")',
'	  REFERENCES  "DEMO_PROJ_MILESTONES" ("ID") ON DELETE SET NULL ENABLE',
'/',
'ALTER TABLE  "DEMO_PROJ_TASKS" ADD CONSTRAINT "DEMO_PROJ_TASK_PROJECT_FK" FOREIGN KEY ("PROJECT_ID")',
'	  REFERENCES  "DEMO_PROJECTS" ("ID") ON DELETE CASCADE ENABLE',
'/',
'ALTER TABLE  "DEMO_PROJ_TASKS" ADD CONSTRAINT "DEMO_PROJ_TASK_TEAM_MEM_FK" FOREIGN KEY ("ASSIGNEE")',
'	  REFERENCES  "DEMO_PROJ_TEAM_MEMBERS" ("ID") ON DELETE SET NULL ENABLE',
'/',
'ALTER TABLE  "DEMO_PROJ_TASK_TODOS" ADD CONSTRAINT "DEMO_PROJ_TASK_TODO_PRJ_FK" FOREIGN KEY ("PROJECT_ID")',
'	  REFERENCES  "DEMO_PROJECTS" ("ID") ON DELETE CASCADE ENABLE',
'/',
'ALTER TABLE  "DEMO_PROJ_TASK_TODOS" ADD CONSTRAINT "DEMO_PROJ_TASK_TODO_TM_FK" FOREIGN KEY ("ASSIGNEE")',
'	  REFERENCES  "DEMO_PROJ_TEAM_MEMBERS" ("ID") ON DELETE SET NULL ENABLE',
'/',
'ALTER TABLE  "DEMO_PROJ_TASK_TODOS" ADD CONSTRAINT "DEMO_PROJ_TASK_TODO_TSK_FK" FOREIGN KEY ("TASK_ID")',
'	  REFERENCES  "DEMO_PROJ_TASKS" ("ID") ON DELETE CASCADE ENABLE',
'/',
'ALTER TABLE  "DEMO_PROJECTS" ADD CONSTRAINT "DEMO_PROJ_TEAM_MEMBER_FK" FOREIGN KEY ("PROJECT_LEAD")',
'	  REFERENCES  "DEMO_PROJ_TEAM_MEMBERS" ("ID") ON DELETE SET NULL ENABLE',
'/',
''))
);
end;
/
prompt --application/deployment/install/install_create_demo_project_triggers
begin
wwv_flow_api.create_install_script(
 p_id=>wwv_flow_api.id(19098011244880647308)
,p_install_id=>wwv_flow_api.id(19097849238424624726)
,p_name=>'Create Demo Project Triggers'
,p_sequence=>20
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'CREATE OR REPLACE EDITIONABLE TRIGGER  "BIU_DEMO_PROJECTS" ',
'    before insert or update on demo_projects ',
'    for each row ',
'begin ',
'    if :new.id is null then ',
'        :new.id := to_number(sys_guid(), ''XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX''); ',
'    end if; ',
' ',
'    if inserting then ',
'        :new.created    := localtimestamp; ',
'        :new.created_by := nvl(wwv_flow.g_user,user); ',
'    end if; ',
'    :new.updated    := localtimestamp; ',
'    :new.updated_by := nvl(wwv_flow.g_user,user); ',
'end; ',
'',
'/',
'ALTER TRIGGER  "BIU_DEMO_PROJECTS" ENABLE',
'/',
'CREATE OR REPLACE EDITIONABLE TRIGGER  "BIU_DEMO_PROJ_COMMENTS" ',
'    before insert or update on demo_proj_comments ',
'    for each row ',
'begin ',
'    if :new.id is null then ',
'        :new.id := to_number(sys_guid(), ''XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX''); ',
'    end if; ',
' ',
'    if inserting then ',
'        :new.created    := localtimestamp; ',
'        :new.created_by := nvl(wwv_flow.g_user,user); ',
'    end if; ',
'    :new.updated    := localtimestamp; ',
'    :new.updated_by := nvl(wwv_flow.g_user,user); ',
'end; ',
'',
'/',
'ALTER TRIGGER  "BIU_DEMO_PROJ_COMMENTS" ENABLE',
'/',
'CREATE OR REPLACE EDITIONABLE TRIGGER  "BIU_DEMO_PROJ_MILESTONES" ',
'    before insert or update on demo_proj_milestones ',
'    for each row ',
'begin ',
'    if :new.id is null then ',
'        :new.id := to_number(sys_guid(), ''XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX''); ',
'    end if; ',
' ',
'    if inserting then ',
'        :new.created    := localtimestamp; ',
'        :new.created_by := nvl(wwv_flow.g_user,user); ',
'    end if; ',
'    :new.updated    := localtimestamp; ',
'    :new.updated_by := nvl(wwv_flow.g_user,user); ',
'end; ',
'',
'/',
'ALTER TRIGGER  "BIU_DEMO_PROJ_MILESTONES" ENABLE',
'/',
'CREATE OR REPLACE EDITIONABLE TRIGGER  "BIU_DEMO_PROJ_STATUS" ',
'    before insert or update on demo_proj_status ',
'    for each row ',
'begin ',
'    if inserting then ',
'        :new.created    := localtimestamp; ',
'        :new.created_by := nvl(wwv_flow.g_user,user); ',
'    end if; ',
'    :new.cd         := upper(:new.cd); ',
'    :new.updated    := localtimestamp; ',
'    :new.updated_by := nvl(wwv_flow.g_user,user); ',
'end; ',
'',
'/',
'ALTER TRIGGER  "BIU_DEMO_PROJ_STATUS" ENABLE',
'/',
'CREATE OR REPLACE EDITIONABLE TRIGGER  "BIU_DEMO_PROJ_TASKS" ',
'    before insert or update on demo_proj_tasks ',
'    for each row ',
'begin ',
'    if :new.id is null then ',
'        :new.id := to_number(sys_guid(), ''XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX''); ',
'    end if; ',
' ',
'    if inserting then ',
'        :new.created    := localtimestamp; ',
'        :new.created_by := nvl(wwv_flow.g_user,user); ',
'    end if; ',
'    :new.updated    := localtimestamp; ',
'    :new.updated_by := nvl(wwv_flow.g_user,user); ',
'end; ',
'',
'/',
'ALTER TRIGGER  "BIU_DEMO_PROJ_TASKS" ENABLE',
'/',
'CREATE OR REPLACE EDITIONABLE TRIGGER  "BIU_DEMO_PROJ_TASK_LINKS" ',
'    before insert or update on demo_proj_task_links ',
'    for each row ',
'begin ',
'    if :new.id is null then ',
'        :new.id := to_number(sys_guid(), ''XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX''); ',
'    end if; ',
' ',
'    if inserting then ',
'        :new.created    := localtimestamp; ',
'        :new.created_by := nvl(wwv_flow.g_user,user); ',
'    end if; ',
'    :new.updated    := localtimestamp; ',
'    :new.updated_by := nvl(wwv_flow.g_user,user); ',
'end; ',
'',
'/',
'ALTER TRIGGER  "BIU_DEMO_PROJ_TASK_LINKS" ENABLE',
'/',
'CREATE OR REPLACE EDITIONABLE TRIGGER  "BIU_DEMO_PROJ_TASK_TODOS" ',
'    before insert or update on demo_proj_task_todos ',
'    for each row ',
'begin ',
'    if :new.id is null then ',
'        :new.id := to_number(sys_guid(), ''XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX''); ',
'    end if; ',
' ',
'    if inserting then ',
'        :new.created    := localtimestamp; ',
'        :new.created_by := nvl(wwv_flow.g_user,user); ',
'    end if; ',
'    :new.updated    := localtimestamp; ',
'    :new.updated_by := nvl(wwv_flow.g_user,user); ',
'end; ',
'',
'/',
'ALTER TRIGGER  "BIU_DEMO_PROJ_TASK_TODOS" ENABLE',
'/',
'CREATE OR REPLACE EDITIONABLE TRIGGER  "BIU_DEMO_PROJ_TEAM_MEMBERS" ',
'    before insert or update on demo_proj_team_members ',
'    for each row ',
'begin ',
'    if :new.id is null then ',
'        :new.id := to_number(sys_guid(), ''XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX''); ',
'    end if; ',
' ',
'    if inserting then ',
'        :new.created    := localtimestamp; ',
'        :new.created_by := nvl(wwv_flow.g_user,user); ',
'    end if; ',
'    :new.username   := upper(:new.username); ',
'    :new.updated    := localtimestamp; ',
'    :new.updated_by := nvl(wwv_flow.g_user,user); ',
'end; ',
'',
'/',
'ALTER TRIGGER  "BIU_DEMO_PROJ_TEAM_MEMBERS" ENABLE',
'/',
''))
);
end;
/
prompt --application/deployment/install/install_create_demo_project_data
begin
wwv_flow_api.create_install_script(
 p_id=>wwv_flow_api.id(19100931008454606173)
,p_install_id=>wwv_flow_api.id(19097849238424624726)
,p_name=>'Create Demo Project Data'
,p_sequence=>30
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Rem  Copyright @ 2020 Oracle and/or its affiliates.  All rights reserved.',
'Rem  Licensed under the Universal Permissive License v 1.0 as shown at http://oss.oracle.com/licenses/upl. ',
'',
'',
'create or replace package demo_projects_data_pkg as',
'  function varchar2_to_blob(p_varchar2_tab in dbms_sql.varchar2_table) return blob;',
'  procedure load_sample_data;',
'  procedure remove_sample_data;',
'end demo_projects_data_pkg; ',
'/',
'',
'create or replace package body demo_projects_data_pkg as ',
'  function varchar2_to_blob(p_varchar2_tab in dbms_sql.varchar2_table) ',
'    return blob ',
'  is ',
'    l_blob blob; ',
'    l_raw  raw(500); ',
'    l_size number; ',
'  begin ',
'    dbms_lob.createtemporary(l_blob, true, dbms_lob.session); ',
'    for i in 1 .. p_varchar2_tab.count loop ',
'      l_size := length(p_varchar2_tab(i)) / 2; ',
'      dbms_lob.writeappend(l_blob, l_size, hextoraw(p_varchar2_tab(i))); ',
'    end loop; ',
'    return l_blob; ',
'  exception ',
'    when others then ',
'      dbms_lob.close(l_blob); ',
'  end varchar2_to_blob;   ',
' ',
'  procedure load_sample_data is ',
'    i               dbms_sql.varchar2_table; ',
'    j               dbms_sql.varchar2_table default wwv_flow_api.empty_varchar2_table; ',
'    l_blob          blob; ',
'    l_full_name         varchar2(255); ',
'    l_email             varchar2(255); ',
'    l_add_days          number; ',
'  begin ',
'    -- Remove any data currenlty in the tables ',
'    remove_sample_data; ',
' ',
'    ---------------------------------- ',
'    --<< Load constraint messages >>-- ',
'    ---------------------------------- ',
'    begin',
'      insert into demo_proj_constraints (constraint_name, message) ',
'      values (''DEMO_PROJ_STATUS_PK'', ''Status Code must be unique.''); ',
'    exception',
'        when DUP_VAL_ON_INDEX then',
'            null;',
'    end;',
'    begin',
'      insert into demo_proj_constraints (constraint_name, message) ',
'      values (''DEMO_PROJ_TEAM_MEMBERS_UK'', ''Username must be unique.''); ',
'    exception',
'        when DUP_VAL_ON_INDEX then',
'            null;',
'    end;',
'    begin',
'      insert into demo_proj_constraints (constraint_name, message) ',
'      values (''DEMO_PROJECTS_UK'', ''Project Name must be unique.''); ',
'    exception',
'        when DUP_VAL_ON_INDEX then',
'            null;',
'    end;',
'    begin',
'      insert into demo_proj_constraints (constraint_name, message) ',
'      values (''DEMO_PROJ_TASKS_UK'', ''Task Name must be unique within the same project.''); ',
'    exception',
'        when DUP_VAL_ON_INDEX then',
'            null;',
'    end;',
'    begin',
'      insert into demo_proj_constraints (constraint_name, message) ',
'      values (''DEMO_PROJ_TASK_LINK_LTY_CH'', ''Link Type must be URL or Application.''); ',
'    exception',
'        when DUP_VAL_ON_INDEX then',
'            null;',
'    end;',
' ',
'    ---------------------------------- ',
'    --<< Load statuses >>-- ',
'    ---------------------------------- ',
'    begin',
'      insert into demo_proj_status (cd, description, display_order) ',
'      values (''ASSIGNED'', ''Assigned'', 1); ',
'    exception',
'        when DUP_VAL_ON_INDEX then',
'            null;',
'    end;',
'    begin',
'      insert into demo_proj_status (cd, description, display_order) ',
'      values (''IN-PROGRESS'', ''In-Progress'', 2); ',
'    exception',
'        when DUP_VAL_ON_INDEX then',
'            null;',
'    end;',
'    begin',
'      insert into demo_proj_status (cd, description, display_order) ',
'      values (''COMPLETED'', ''Completed'', 3); ',
'    exception',
'        when DUP_VAL_ON_INDEX then',
'            null;',
'    end;',
' ',
'    -------------------------------------------------- ',
'    --<< Load person running the script as a user >>-- ',
'    -------------------------------------------------- ',
'    -- Determine if the username contains a ''@'' indicating an email address format ',
'    if instr(nvl(wwv_flow.g_user, user), ''@'') > 0 then ',
'      l_full_name := substr(nvl(wwv_flow.g_user, user), 1, instr(nvl(wwv_flow.g_user, user), ''@'') - 1); ',
'      l_email := nvl(wwv_flow.g_user, user); ',
'    else ',
'      l_full_name := nvl(wwv_flow.g_user, user); ',
'      l_email := null; ',
'    end if; ',
'    l_full_name := initcap(replace(replace(l_full_name, ''_'', '' ''), ''.'', '' '')); ',
' ',
'    -- Load the default image for this person ',
'    i := j; ',
'    i(1) := ''89504E470D0A1A0A0000000D4948445200000080000000800800000000E6553E170000047C494441547801EDDB09A7F34E1B80F1E7FB7F9A2B2346082118CB38861027448C2AB154A9200891FB59FFCF7EB2BD337DB773D96BFB35E936F7AD1FAEFFE63E''; ',
'    i(2) := ''5CFECD7DB85EFEAD5DDF01E701EF8077C03BE01DF00EF08D33B956289D1BD7F827037C5526FC5C5256FE7980CE2A409BFA7A7B0C8FDBB5361A50B67B0EC0DB04747D5BE447CBADD69058FF04409D42719DE5F7E66B01691D1BE00D649745FED672C9C0F8''; ',
'    i(3) := ''A8802E0337CB5BCD0EB22E22A04D497B59AB4F49DB688056910DB2DE90A1DA488056514CB2D554A0DA2800AFC927D96ECAD13E02C017E851F6346A0A1F1E6049EEB2AF7B820D0E68C1CBDE3CB481013EC7C8FE0CB90F0B70A851F6372A5C508057B472A4''; ',
'    i(4) := ''16E543021C7A9623CD1A1710E0155E8EE5513E1CA046CF72AC59538703E4D472B49A3C18A083518E3642170AE028E578252E1420A795E3B5E481001E0639DE003E0CA041CB99344D1880C3C8992C2E0CA0A49533B594610019BD9CA9270B038041CE3440''; ',
'    i(5) := ''10808749CE34810F01E840CE055D08408B967369DA1080E63420A30903C8CE03FE276E410B722EC2003CCC72A6197C18C0F90FA220808B3EFD51ACFF47BE8C2C56CE64B1610035999C29A30E03F030CAF146F06100978C4E8EE7C92E81001623C733D850''; ',
'    i(6) := ''80966492A34D096D28C025A391A335649760808A6C96632D192EE8F1FC2AC7BA063D9E5F2CF9C101458E0D3CA2F141E7132786547A92FD4D1A17784CA7B1B23F8BF6610197067AD95B0F4DF051AD410DB2AF4161220CAB73F249F634E5E43E3CE0D2A594''; ',
'    i(7) := ''B36C3797A45DAC8585D916CC26CAC2E24B8DA21865BDB140359738802F82EC2E6BDD335413736DA7499A45DE6A69127417777159427193BF772BA0F4B157B79502F337C2CD80AA9EB0BC6E018A6E949F1B7D01D05E9E0068C00014CEDF86699A869B7705''; ',
'    i(8) := ''8081E619800AFDE85DC6AF65AE7FA454CF00BC500C8FC7A37FB585024015F6B5FFF4C850F0F20C80C12ED3F8F8D2FD76BBDD1F5F1AA7C5629E0128A945E49361181E5F1B86715A44A4A67C0620C7CBB7E6AFC9B73AF26700527AF97B3D697CC0DAC06400''; ',
'    i(9) := ''1F1FD0BC3D329AA08D0FA8D0F2569A3A3EC052CA5B15BCC4071438792B47191DD025F4EB07C2C88072EDA03C6B4C64805D3F9F7450C50474253859693124D64702F8AA54E016596B2A41DB363CA0738502F455369A6B056853FB8080C6E600CA5E67D96E''; ',
'    i(10) := ''AC730055BA2E04C057467FFBC533CBDE86CE2400B96DF603562E3C45F390834DBDD300DA547E1DB079E18D1FE554CBBD2E0054F1D21E05F8DA7CF56F5FF8F5466F1440666ABF1FD09914A0A8EF8BFCEBCDB72A03D0C6EF04546AE5C29F6B68CB04D26A17''; ',
'    i(11) := ''C041E62709DDD469703B00359849623419927A13E035E52C719A4BB4DF0238D428B11A156E0B50E0245E8E620B90D24BBC7AD20D4007A3C46B846E1DD0C02CF19AA1590754688999A65A07BC504ACC4A5ED601062B31B3987540492531AB28D701399DC4''; ',
'    i(12) := ''AC235F07687A89598F5E0724DC256677921540D0CFA1954FA215C02BC922315B125ED7001599C42DA35A03584A895B895D0318ACC4CD62D60025B5C4ADA6FC15F0E61032529EFCB73FBFFF92A697B8F5E8EBCF7D042C723226C80BEC8A0000000049454E''; ',
'    i(13) := ''44AE426082''; ',
'    l_blob := varchar2_to_blob(i);    ',
' ',
'    -- Insert into demo_proj_team_members ',
'    insert into demo_proj_team_members  ',
'      (  id ',
'       , full_name ',
'       , username  ',
'       , email     ',
'       , profile ',
'       , photo_filename ',
'       , photo_blob          ',
'       , photo_mimetype      ',
'       , photo_last_updated ',
'      ) ',
'    values ',
'      (  13 ',
'       , l_full_name ',
'       , nvl(wwv_flow.g_user, user) ',
'       , l_email ',
'       , ''I''''m the one who ran this data script to populate these demo tables.'' ',
'       , ''app_user.jpg'' ',
'       , l_blob ',
'       , ''image/jpeg'' ',
'       , systimestamp ',
'      ); ',
' ',
'    ---------------------------------------- ',
'    --<< Load remaining 12 Team Members >>--   ',
'    ---------------------------------------- ',
'    -- Load Team Member 1 ',
'    i := j; ',
'    i(1) := ''FFD8FFE000104A46494600010100000100010000FFDB0084000C08080809080C09090C110B0A0B11150F0C0C0F15181313151313181712141414141217171B1C1E1C1B1724242727242435333333353B3B3B3B3B3B3B3B3B3B010D0B0B0D0E0D100E0E10''; ',
'    i(2) := ''140E0F0E141410111110141D14141514141D251A171717171A2520231E1E1E232028282525282832323032323B3B3B3B3B3B3B3B3B3BFFC00011080080008003012200021101031101FFC400910000020203010000000000000000000000050604070002''; ',
'    i(3) := ''030110000201030301060207050606030000000102030004110512213106132241516132711423428191A1B1526272C1D1072433347382152543A2B2C2E1F0F1010003010100000000000000000000000000020301041100020202020105010101000000''; ',
'    i(4) := ''00000000010211032112314122325171816191F0FFDA000C03010002110311003F006FBACF72067ED0FD6884E733DB2FBE687CFCA28FDE5FD6884E3FBDDB52C41852B2B2B2980F0F4AD7CEB6270326A0DD6AB616BFE2CCAA7F13F9516976156499658E25''; ',
'    i(5) := ''DD21C01514EAB620E1A4DB9E9B86284DD76AB4591FB959FC58F8B0702874D3690589594333F2CE1F91ED9E4D4A596BDB43AC7F3635A6A166FF000CCA7EFA92AE8CB95606ABA78ACAE67D96B74F1BAF223DC08247BF5CD7786FF58B56CC53472C5F088F77''; ',
'    i(6) := ''208F239039A166F946BC7F0C7FAF474A5BD27B511CE7BAB81DDC8BF129F2A638DD5D0321CA9E84552324FA11A6BB36ACACACAD30CACACACA005B907F879FDB5FD688CF8FA65B54097AC63F7D7F5A997248BD83D81FE54B10616AE734D1C11B4921DAAA32''; ',
'    i(7) := ''49F6AE941F59265C42794F89C7FE23F9D12952B362ADD01756ED0DEDD2B1B41DD5B29C77ADC64FEEAF9D2E892EEE998431B48E78321624E7F4A31A9D9C9712C56A9F6CF8BD154797DF46ACF4F82DA358E250A00F2AE75CA6DFF0E8F4C50A10765B509641''; ',
'    i(8) := ''25CCA235EB85E4D4BB8ECDDB18CEC62B2918DE3C3FA533CD1ED526874CDC62B5C54413B135FB392E9ACB3C13B3346DBFDBA8C8346EF2313471DD47F0CA4C72E3A1CFC0F522EA30C841E9E62A1D8DC88CBDABF207880F6C83C7E148E566B5AB07A5CCCCDB''; ',
'    i(9) := ''C12B3438271E6B9DBF88229BFB35ADE5962639864FFB5BFA1A4BB9945ADFF0729DF3A37F038DC2BBD94E6CEE8A67A31C63D3E218FCEA90D6C9C95A2D9ACA87A4DF25ED947329C92304FCAA657422265656565002E4A3EB21FF005054DBAFF3D07F09FD45''; ',
'    i(10) := ''4371F5D07FA82A55C73A945E9B7F98A58F9061627099F4141EEDB2FBDBED1CA8F5F4A217F70B05B333798C003A9A4DD4F5FEE27EECF8EEE4E8BF66143C7DEC6A59E6968A638B6C991BFF007E2D270C4ED1F75195F87355ECDDA286D6F966B9768EDA3601''; ',
'    i(11) := ''E5DA48E790A31D59BAE2982D7B6F0DE026C34ABF9E00A585D18B64470338079EB4B83516DFD8F916D241B9C9208A197585E475E8680DEF6D2F0F8C5ACF6C790639ADCB818F5689C9FCABCD33B516FA9298AE5E282E01E54B6DCFC83E0D6CF66C1576139B''; ',
'    i(12) := ''F222815EAC914DDF467053240F5A91A8F68AC2CE12A2449A7190AAAC1B3E9F0E680C9AAEA372D9757C9F8426C8D47DEFC9A48C1B1DC975D9BDE4AB39665E37F3F2603915244EB2C36977E6711CA3D1A33FCD4D0B95350037C9001BB92CACA73F3DA715AD''; ',
'    i(13) := ''BDC3AC52A14655DC1B9E81C71FA1AAA8E8937B2CAEC45E08EC51256C2BCB22A93D063FF9A70AACB4A30CD0D969D333471C8195E443820B9F8BF1A73D1AEEF2D663A36A8774F18CDADC794D18FF00D97CC53C1DA2725B0D5662B2B6A7145D1CCF003FB752''; ',
'    i(14) := ''5D0B6A8BE8AA0FE06A3AFF0099807EFF00F2A9BD2FD8FAA0029174047D6E561033AF2CA31183D371E99F9557D7714768D2CF2B190264966FB6FF00FEF14FD7BF587C7CE4ED8D7DFAB1FBAAB4ED95F2FD34DA43F0838E3DAB9732729A3A71695036F6F355''; ',
'    i(15) := ''D4ED88902BD9D808DEE02A81E1DC11DBF3AB0B5DB7D52E2DA2B6D3F12A1F178DCA47B40F0EEDB8E3D1475A05FD9F5BDB4FF4B866512472C463950F465738607E74C8BA6EB3A75925A5B490DF410F8227B8678A5110F8118A2B872BD33564DB8AF3463D4B''; ',
'    i(16) := ''E040BED1B51B6BD91CC92342B82AEC553C5E7811E401F7D4C7D2A7D622D36C660A2EEEA662B72572E96D12E666278C8E98F7A37716FAAAC9DFC96560AC0E774F3CB228F7DBB1688F67AD65C5C6AD7727D2AF268FBA8E554EEE14854FF8702F3C13D49EB4''; ',
'    i(17) := ''72B96EB5E1035E9D27F6C43B8D121D2359FA3C32192295185BCCE0643AF241C79915C8E9B34F20DCC339CB724668DEB76E93CB2432EE0090F1B27C48C3A32D40861D448CC73C3718E09742ADF7ED6AC591F77B19E3AB55A34B4B59EDEE4C6C43C0C385CE''; ',
'    i(18) := ''EC66A0EA2E23BE728488B7AAB7A7840CD185B4D45BE39E3833C6628FC43E45D8D44D76DE282CE2441C29C027963907249F535B19ABAF91658DF1FAF90BE9B2ACAABE65795C1FFEF9539DC6A226ECE1BE73BAEB4C74757F33B580DDFEE5383553693A94D0''; ',
'    i(19) := ''8084E53A0F9535DB6A4F259C903B1FA35C2ED940F300E6B53E2FF8235C9169C722CB1A4A9CABA8653EC466B7A0FA06AB6571690DA472E6786355D8DC160A31B97D68C0E9554EC900100FA541EBB8FE9521589D55D7CB62FE66A3C640BB87239E6A423635''; ',
'    i(20) := ''351E720E7E4B58BA038DFC6D0CB24EE7C31AED887BB753553F6A2DE48751591BFEA20901F724FF004AB8F50885C3ED3F02F5F9D577DBDB5426178BAC276903D2B9F2AA959D189F839F601BB8D54447ACD103F96EA7DBEB8586124F95577D9D9A38F5BD3E''; ',
'    i(21) := ''4466044CB04CAE410778755298030079E69CFB41BCDB32AFC47815B09541B1A494B2242DDC4971ABEA02D2163B5CF8C8E8147534CC96E2D2DE306594456F1F76B06EFAB23F871D69574DD52EF47B43751591B832C8B0C97073B611BB6EF7032D814D8DA7''; ',
'    i(22) := ''497684BEA5DF0F8BEAC28038C8C01EF598E2F8F2F2C7C925CA9BE3188A3AADA5D2CFF4812111C9F0E08FCF8A896E121983B7C2DC3E3F5A25A8E932C2826B9D500561C06C0018B050AA33D3D681BDD486F64B481D6EE051E2B8036853E43DCD2B8491BCE2''; ',
'    i(23) := ''DE9DFE06E555E08E41F3A5FED438325BC23F64B7E2714761E2DA346396EB9A5BED0B96D5923032563518FE2C9A31FBBE8CC9ED2188D638F39C1E981D68FF00672132C0CED823700AA7A1E7041A1305A963E22377993E5F21FD68F690563D3AE1A0E62B49''; ',
'    i(24) := ''237932793B9B1B80AA49D91AA2D586081E18711AFD585287038C0F2352682767AEA66D3A0999BBDB79070DF6A36CE36B7A8A360E791578BB488BEC5E67DB7701F2C9FD2BAC2E92EA8B22107BB521867A1F7FC6A2CCDBA68F1C119A19D9B9125D4EFE262C''; ',
'    i(25) := ''25322B3E790553278F4F2A4BAFF412B19AEA411C581CB1FCD8D26EB3A73EA375796C8771B78577B0E9DFE7784F985EB4CF7906A176EDDC38B78C021A6FB4079ECCF19F7A1B717761A6DAFF00C3B4F8C492E7748E1B7EDE72599B1C9351CB4F6F497FDA2B''; ',
'    i(26) := ''8ED75B65722496D2666418962749D33D7744D9C5592F716DAC69D05FDAB6F86E143A91E47CD4FBA9E291B5BB5376B7D7762A18DB49B8A0EA6371E2C7CAB4FECEF52B9B4BB92C1E4DF6972864101F275C78D7D38EBEB4B8DA71765657C935DA2C2B3B74B7''; ',
'    i(27) := ''8DF0A36BB1623CBC5F1544D688920DB1858DFC9C2F38F4C8A270BC722ED06A36A11471C04F05874CFBD55EA3A160DF34C43BCB066C23C81D57D074FC6BC82254C24630A2885FE0658705BA0F2A8F0ED5C3374A83968E8936FB3B2948D0C9236C8E3059D8''; ',
'    i(28) := ''F400724D2B457AB7BA9CD7A57702FE043FB0A30B527B557929B348632562771DE0FDA03A668269ECEB3E14707A9F4F7AA638545CBE48649FA92F80F18DE0B2EFE53F5939C81D7271924D4EB4120D3574BB284DD6A774E2695A2C9289C011C9E58E3773D2''; ',
'    i(29) := ''A04104FA8DE436D180656C471A74C9E9F77BD5BDD9ED06C746B158ADD019180334F8F148DD4B31F4F414F08F2B2737547BD9DD3E4B1D3638E6509232AF78839F10182689C6C4E47A57BB8795646857AD5D2A54445F440D77129E9835EC56F6F06A8F142B''; ',
'    i(30) := ''B5E48F7B91D4FD91CFB5640DFF00308D7F758D6C2453AF7778F1F72307DB278A4AD7E81EDD2B48042E19998E238C1DA09C72588A5CD6AD16DC3648C1C6C48C7058F931F3F90A6AD46DBBC68883B496DB9F2048F0E7E7D2835DC1DE6A4CD73F56B6710EEE''; ',
'    i(31) := ''3F20CE32CF9F5E0D736685DDAFA674639555083752DFA4EB6D688CD3292C234E7DF3211FA56BD9DD36E20D44CC5B0F1C6F20C0E324A8603DB9A3DA86A96369673D95828FA65EF865B90C01519CED1E7E78AD6C6E6C922568DF64962CF0CD1B1C6F8DB891''; ',
'    i(32) := ''D33C1C100D24552A4FB5B28DF96BC8CF692EE88379E39AEB3C71CEA3BC2769EA01C543B4601060E411C1AEA65C06427E54EBA15AD80B54B511DC98F39897941EC7D687B00060516BF7DEF83E983428FC5ED495B1D742FF00685775ABA9F890061F71E6A1''; ',
'    i(33) := ''59DC5BD9C07003CEE38CF414535C4568646F351416D62EF6DD66C720ED3CD5E3EDFD272F77E1D2D6F27B7BA5BD62E5E36DC8554EDDC3F7AAC8ECF7F691A73A777A96F8E63C071E28FF00AAFDF49568E161FAA7C2B865600FAF1E21F09EB5E41A56993EA9''; ',
'    i(34) := ''15B999AD6178B749220DFB58784719E86B796F5A62B8EB65CFA66A7677A3BC826490313B4210D81EF8A2555459767AEF4F944DA4DD25DB7D994CC919539C8DA8769CFCE9A74CD53B4915AA9D42581653C88A504C8067ED14C0AAC65AD9292DE827F46861''; ',
'    i(35) := ''B9170646CAA91B481D0F9F1CD7345B51A89D43BFDCC1360880E7EFCD6D339453B46E63D49E9F3A0F7DB95F7E4961CE7181492971F0118D86AF2FA3991E265CAB0C7A1FC695355875795B369334DB07C52E37003C8951E21CF9D11594ECC6327A549B650A''; ',
'    i(36) := ''4F19622A72F5F6517A4AAEFA6B81791FD223EE258415254677E3A1CAF5C51BECD3477F772D9104A11DEF7AC4008EA396F173CF4C51AED25882AD7F1461EE6D14B0523875239C81D71D6B9761F4F8ADFBBBC94E249419A50CDB57B9070AE7FDD9348A0AEB''; ',
'    i(37) := ''F0A73F4D9AC37D2E97792DBDC9FEECAE17791B7631E303CC8A2D74C4C5DEA107CF2284B44D7924A65C4A2476F01390493C13BB8DA7D6B2C2592D4BD9CA77DA63EAC83B8C67A6D63E9E959FC37FA64970254DDE64F4A86E4804D78331C8CA7A66A547686E''; ',
'    i(38) := ''15D40EA3F0A121AC55D6AE1DCF711825D88C28E4927A0A26DA5C76905ADB9CC52F7599A3C8DDBFD73D3CEB9DBE9B7169AAC979770F7B6E9BA3195C96661D533D197C8D6D773CA19AE40381952A7C6CA40E0E1BDF9A76F4921177646D274582FAEEF56399''; ',
'    i(39) := ''C244C9B5E3C01B8825873C7951AB6ECF456B233333C8ED8DCEE724D4FECA690D61A6A19D765C5D1334CA7A8CF08A7EEE68AC96FBF71C7853807D49E4D6B4C9F20741638518208F3C54BB385C4322B312D1BE0679E08045696CC637313039CE578E38A271''; ',
'    i(40) := ''460994018CE1C1FCAB10367FFFD9''; ',
'    l_blob := varchar2_to_blob(i);       ',
' ',
'    insert into demo_proj_team_members  ',
'      (  id ',
'       , full_name ',
'       , username  ',
'       , email     ',
'       , profile   ',
'       , photo_filename ',
'       , photo_blob          ',
'       , photo_mimetype      ',
'       , photo_last_updated ',
'      ) ',
'    values ',
'      (  1 ',
'       , ''Lucille Beatie'' ',
'       , ''lbeatie'' ',
'       , ''lucy.beattie@email.com'' ',
'       , ''I have extensive experience running development teams. If I can''''t bring in a project on time and on budget it can''''t be done.'' ',
'       , ''team_member_01.jpg'' ',
'       , l_blob ',
'       , ''image/jpeg'' ',
'       , systimestamp ',
'      ); ',
'     ',
'    -- Load Team Member 2 ',
'    i := j; ',
'    i(1) := ''FFD8FFE000104A46494600010100000100010000FFDB0084000C08080809080C09090C110B0A0B11150F0C0C0F15181313151313181712141414141217171B1C1E1C1B1724242727242435333333353B3B3B3B3B3B3B3B3B3B010D0B0B0D0E0D100E0E10''; ',
'    i(2) := ''140E0F0E141410111110141D14141514141D251A171717171A2520231E1E1E232028282525282832323032323B3B3B3B3B3B3B3B3B3BFFC00011080080008003012200021101031101FFC400860000010501010000000000000000000000000203040506''; ',
'    i(3) := ''010710000202010203070204020B00000000000102000304051112213106132241516171328114334291235207152425346272A1A2C1D1010101010101000000000000000000000000030102041100020202020202030000000000000000000102110321''; ',
'    i(4) := ''314112221332516171FFDA000C03010002110311003F00F53842100210840084225DD514B390AA3A93C84015094B99DABD2F18950DDE11E9D2571EDE62F7840A58AFFBC0357095DA56B589A953DE56E15C7D4848DC49EAE8E37460C3D41DE00A84210021''; ',
'    i(5) := ''084010E3CE26387988D99A8C63B084261A1084200D6464558F535B69D95661B5BED15F9CED5A1E0A10F251E7F32EB5ECB6B99AB53E0AF703E7D662B3AC5AF895799132CE9221E4E49DC92772647191B73318BAC3CC9EA647EF8F41F733A4C5162B96E0F8''; ',
'    i(6) := ''588F70658E9FAF67E11FECF7B2A9EAA798DFE0CCF0B765D84EA5C78A6E99947AEF66BB469AAD5DD5C42E520E63F987A897B3C634DD4EDC1CCAF2696E16AC83F3ED3D7B4ECDAF3F0AACBACF86D507E0F989C98498421002218738B9C61B8840EC2108011B''; ',
'    i(7) := ''BDFBBA5DFD01DA3923E7FF0084B3E218329AADBC1491FA9BA998FCF7E27207DE6A75975141DFA9994B96CB9FBBA94BBB9D801276552D15760363EC4ECA23D85A4E4E6D9B54A56BF373355A5F63D5145FA81E36EA2BF212C32BBAC4A48A9428036004C949''; ',
'    i(8) := ''A46A8A6CC5E6E96B4DAB8F5F361F518FD3A52AEDC5CCCB5C5C27B2D7C8BBAB7ACEDED4A36C580F69C7C8FA29E08CFE5D0687DC749B6FE8E7590EB6E996B731FC4A41FF0090998D46B5BE9210EE473913B2D996636BD89B1D8F7CAA7E18F0FF00DCAC2568''; ',
'    i(9) := ''9648D1ED909C1CC6F3B3B241084200421080119CC1BE3583FCA4FED1E88B578EB75FE6523F7100C066AD99B96B8E9D0CB7C0D1317013BD2BC56FA990B47A5BFAEDD187E5A93BFB932EF5237776569E4C7A13E527FB2ABA4536A9AE3636EBC1F1B9DA46C1''; ',
'    i(10) := ''B9B5252C40E5E52975AD0B32DB7BC6C87B1C9DC8E825D76534EC8C55FE26E77936ADF255525C15FAD64DD89BD43C24F4946751A6AFAD5AEB0F9CD376D30CEF5DCA3D8CA3C5C34B17C4262A8DA674ADA4D08C4C94BDF9295DFCA41BD0E06B34DBFA43AB8F''; ',
'    i(11) := ''B1DE5E9A29A57C239C8BA8E2AE4DB86075B2D5AF7FF53013612F6D1CE48FAECF5CA583D4AC3A100C5C45282BA9507450045CF41E5084210021393B0021084033828FC26B2E48E570DD4FDFA49F72868AD571B88A642FD551DFEDE710CDBD6187989C3D59''; ',
'    i(12) := ''45BA29B541554A58F946FB3FA9D5926C1BEC2B3B4ABED5E6F74BC1BEDC5CA2BB3471BF0FC38FFC4B4F373EF229DCB5D1E869786FB2676A6EACD1CCEE3CA646ACA7AAC057E8F3134FADE06A5929C2B58DBCB9CCBE6E165E0D4CF732EE3A28E712849BBA11''; ',
'    i(13) := ''94524AD164D62DB5861CC1EB2769183F8ECFC342A592AB458C4797078B9CA3D29ADB71D9ECE5E826F3B0D50FC15D711CDACE107D80998D5CEBF032CBD0D34EC213D478C21084038BF48F89D8DD0C5AA527AED1C8010842008B543A153D08957B70F1527F''; ',
'    i(14) := ''4FD3F12D8C839D5F8EB75F5D8FC19CC968D8BA6657B43A52E5A6FC3BB298BD33495C4A96DC626B623C4BEB2F322904F3895AD457B2C9462E326CBF9DA48A2D5B597C75E02AC5FD872993CC7BB3ADDDD484EBCE6CB53C7A482F66DCA67728D406C9399CDD''; ',
'    i(15) := ''D15828D6A233854D9615C5A1789EC3C2A07BCF4ED234F4D3B02AC55EA83C47D58F32666BB118151B6CCB61C4EA005F6DE6CA778615727CB219A76FC570821084B1108421006F1C6D528F68E46E9FCA5F88E400842100237622B2EC62CB28EA63166429F0''; ',
'    i(16) := ''AFDCCC6E82443C81B6F2B6EB9D092A659647494D98C474909B2D04566A99165C853623D650D84F105F497397616DC894CE0F192645B765E3C1BAEC2A7F75D961EAF691BFB00269267BB12E8746EEC7D4963061F3CE6867B31FD11E49FD9FF421084E8E42''; ',
'    i(17) := ''10840114FE52FC45C651C2560798118BF2980E5CA0CB489365F5D6399E7E920DFA89DF85394AEBF2AC2FB6F22D99055C6F31BA33C8B56B98F3279C6D72406D899132B23BAEEEDFD27937DE359AC500B10F26993568465522C5F2148DB79539CE39C8AF9E''; ',
'    i(18) := ''C8766FDE47C8CA2E37DE79672E99EC8AED11B25F6DF9CAF27731EC8724ED23EC64ACA22C348D732B49C82D4ECD559B7795B743B79CDA69DDABD3331471377367EA56FF00D9E705BD62AA735D81C1E5E72D0CAE3AE89E4C69A6FB3D6ABCAC7B7F2EC56F82''; ',
'    i(19) := ''0C7679B2E4B8D9EA728DD410659E0F6BB36922AC85168F263C8CF429DF28F2BA36D094F83DA5C1C9615B9EE6C3D0374FDE5B8208DC7306749A60FFD9''; ',
'    l_blob := varchar2_to_blob(i);       ',
' ',
'    insert into demo_proj_team_members  ',
'      (  id ',
'       , full_name ',
'       , username  ',
'       , email     ',
'       , profile   ',
'       , photo_filename ',
'       , photo_blob          ',
'       , photo_mimetype      ',
'       , photo_last_updated ',
'      ) ',
'    values ',
'      (  2 ',
'       , ''Nina Herschel'' ',
'       , ''nina'' ',
'       , ''nina.herschel@email.com'' ',
'       , ''I''''m a consumate team player who likes to explore and learn new things. My belief is to work hard and play hard.'' ',
'       , ''team_member_02.jpg'' ',
'       , l_blob ',
'       , ''image/jpeg'' ',
'       , systimestamp ',
'      ); ',
'     ',
'    -- Load Team Member 3 ',
'    i := j; ',
'    i(1) := ''FFD8FFE000104A46494600010100000100010000FFDB0084000C08080809080C09090C110B0A0B11150F0C0C0F15181313151313181712141414141217171B1C1E1C1B1724242727242435333333353B3B3B3B3B3B3B3B3B3B010D0B0B0D0E0D100E0E10''; ',
'    i(2) := ''140E0F0E141410111110141D14141514141D251A171717171A2520231E1E1E232028282525282832323032323B3B3B3B3B3B3B3B3B3BFFC00011080080008003012200021101031101FFC400800000000701010000000000000000000000000102040506''; ',
'    i(3) := ''07030810000201030303020405040301000000000102030004110512213141510613223261710742528191233362D11424437201010101010100000000000000000000000001030204110101000203010002030000000000000000010211122131031341''; ',
'    i(4) := ''516171FFDA000C03010002110311003F00D4EB9A0F8C9A5D223E7340BA3A22401927007526AA9EA7F570B3905A5930DFD649872063B0A096D42F2D6C0B35CC811739FAF355F9FD7FA3437460DB23A8EB22D52F50D526BD94CB752B11264EE6F03F48A84B''; ',
'    i(5) := ''FBE5056381703BB1E49A6CE2D4ADBD7DE9C99996595ADCAF4DE3A8FA62A42C7D51A05E5C2436B7A8F31236A74CFD0562A043B46E24B1E8696269ED991EDC9478DB287B8239CD0D47A27B668EB26F4F7E27EA705CAC5AC7F5E06C066C00CA3CF15AAC13C3''; ',
'    i(6) := ''730A4F0309229006471D08341D2850A2A004714C586D765FDC53EA6D74B860FF00B1A2571A14285543F63853488BA1A5B720D217E1563D3009A8E95DF5C6B3269BA7EC8C8065F9893CED1D7159AEA37C96B6EB23BEF9A41B8478E02B77CF7A94D7EEEE35''; ',
'    i(7) := ''5B995666F7D83B88F3F2800E2A2F50789ED446F1A992DB037F9FA5162224B837AA5B9254640E98C78A688649898369DEB9C0F14FD6E16381582A19A56DB101D79F34D6659ECE570F8324A325878A04489B51428F8D3F3F4A4492C808393F7AE6EEDD739C''; ',
'    i(8) := ''D0C971CF4C511D3DD919839E48E9574F41FAA2FB4FBC86D5A4696C67608616E761638CAD5188280739CD4FFA532B7F0B9E551D64607C29C93456F3458A28E449635910864700A91E2954415739977464574A06823C74A3A39176C8C3CF228AAB93F3D299''; ',
'    i(9) := ''EAAD2269972D17CFB0E3F8A78471489231242F19E8EA47F351D30D93518E07DB3E5527CAEE5E8A7775A17966CB038197007B9128E77678E6B8EBD6B2DAEB32E9E1065A429116EDB8F5A98D4A0FF80B05B40E56E6D9177BF50477A95D441DB2C368897130''; ',
'    i(10) := ''2D2F263503804FFAA8C9A669A76776CB377FA5596DC59EA8BEC30DB3A9CBF6561E7E9507AB5835B4ACB18000EBF4FB536691F2300DC1E9DE90B2763C81D052D6DEE253B5549F269D45A54B8E6A5CA426169B6779CE318E829FDADE35BAA94CE7B9A35B05''; ',
'    i(11) := ''5C64F34F2D92053EDC83286B9E72BAFC7576FC3EF573994697764986438818FE53E3EC6B463F7AC4A1D16E6397DFB26CB20DE157AF1CF15ADFA73524D47498270DB9F680FE722BB95CE53492A142855726D74BD1FC75AE34F255DC8453219E87A8E2AA54''; ',
'    i(12) := ''813C501D2851D45406BDE94D2F519975178F6DDDBFC6AEBDF1FAAB37F50BC8F7922019700927ED5B24AA5A3651D4822B1EF5642D6FA8B3B92179057B9352AC47E952AA209A35CCE1B6B96191B7ED5343408AF2412CA0ED703ED93503A4CC56EB6939463C''; ',
'    i(13) := ''1C76FB55F2D555610E3A1E9F4AE2DEDA49D6D1D73A35AA5BEC8902941D875AAE5C43ED315AB5DF4E402BE4557EEE3DE0B9E3CD659FAD70F110E2B964673DC53B740491E6B84B16D52DE3AD48B625B42D5258B50B765E70E030F20F06B43F495B359DCEA5''; ',
'    i(14) := ''681710A4DBE13E5641BC7F19AC712E66F701886C03F31E2B61F47DCDC5DDB5BDD3BE434223957CB270ADFC56F879DB0FA7F3165A147455DB3034CA65DB29F079A7B4DEE97E10DFA6894E6850A1450AA27E20E92CE9EF2A06493F301C86ABDD42FAB6F6CA''; ',
'    i(15) := ''C746926BB19C9090A8E4991BE51532F167AC874883DBBF114AA7613C1EE2B44B7B5FFACA833507158DADE48B340163BB550D2C24F46EFC559ED9B102923903A7D4567356EDADDC9A57FD4375069901223F7A623804E00FBD51AEB5CBD9D8825114F61563''; ',
'    i(16) := ''F55C17BA8DDC71DB212BFF00A963B40FDEAB3716B6B67AA7F595A7B455F93E5CB63A71DB35352EFC5EE6BD76B6999C609CB7D28EE66F6A324F5F14AD0EC9A5BC3204F6E1CFC284F41E39A77ADD8AC52038FE9B571AD577BB620EC9E37BC0F7A8D3443931''; ',
'    i(17) := ''A1C03E067B5687F87FA8A41AB0B086567B79D37FB6DCEC7EEAA7C0AA108151B0BC8F3560F463987D4766DD0336DFE6B5C72ED9E58756B67A2A33D68AB4621489177291E69744681542850A014D752D3ADB52B47B4BA50D1BE083DD594E5587D41A754283''; ',
'    i(18) := ''229F40D43D2BAA3EA939F7AD04FB481F390FF2B1F2B57149D2481658FA380C07DEAC5A869965A95B9B7BC8C491B71E08FDC5433E849A6C02281DA4841250BF2CBFE359F0E3BD78D6FD396B97B103A8E9ED748CABC127AD54EFEC23B472B2619AAEB3CE2D''; ',
'    i(19) := ''849EE1C291C1AA16BD2C8B3966CB03C83E735967AEB5FB6B87F6E9A65CE75182D63193336DCF603CD4EFA91AC0DB08448AD245C6011D6AB1A46992DD96B924A043F36718FDEB96A105A997113B492772A4D35D68B7BDBBB47A78B60BBD9EF9C1D91A1E17''; ',
'    i(20) := ''9E19FF00D576F4EDD7B3ADD9893B4A003F5AE7A1698DEF9BD75DB05B29959E41F092BCEDFDE9FE9367A8EAFEA4B2BA9AD96DE3B99D6450830A1179AD718CF2BEB68A2A33D68568C45447AD1D11A0550A1428050A1428052268C4B1321EE38FBD2E889C73''; ',
'    i(21) := ''414CD5605963917B8CA9FA11548D56D032189BE65F91BED56EF58CB35ADC1BDB26DBBF8914FCAD8F354BB9D7A098E2EA3689BF52FC4BFEEBCD9CBCBA7A7E77AEDC2CE19A4062F75A1F88332A9E0E2ACADAC69F6691B476303CABC962307A63EB50D01B6B''; ',
'    i(22) := ''98F75BCAAD20F079FE29B5D4258E1CE08EB4E576EB8CFF005DB53D66E7515F6246482D776EF663E073E7CD5EBD0D7515DA19517115A2ADBC4C473C0F88D66D6BA74F7974B6B688659A438555AD5FD39A30D134C4B52C1A627DC99874DC7B0FB56DF397D6''; ',
'    i(23) := ''3F5B3CF1661475CE16DC80D74AED90A88D2A92681542850A01428511200C9E0501D31D4AFA2B689896C1C7F14AB9BF8A25C9F8476DDC66AB1EA747D56CDE3B393DBBB519453C07FF00135CE5948EB1C76AE6A9AB8BB59A16ECC4AD542ED14B934725CDD4''; ',
'    i(24) := ''770D0DCAB453C676BA3706B8CEECCDB874AC32BDBD12493A72542877292A7C8E2BB8B8B83C3485BFFAE6B906CF22BA704034178FC3670F7B700A8DE911F880E79357DACBBF0FF515B3D6E4DFFDB963D8DFB9E2B4C86EADE7FED481B24803EA0E08FDAB7F''; ',
'    i(25) := ''9D9C63CFF497953EB37EAB4EEA3A162928CF1D8D4803915DD7107493D695496E9515FFD9''; ',
'    l_blob := varchar2_to_blob(i);       ',
' ',
'    insert into demo_proj_team_members  ',
'      (  id ',
'       , full_name ',
'       , username  ',
'       , email     ',
'       , profile   ',
'       , photo_filename ',
'       , photo_blob          ',
'       , photo_mimetype      ',
'       , photo_last_updated ',
'      ) ',
'    values ',
'      (  3 ',
'       , ''Tameka Hall'' ',
'       , ''thall'' ',
'       , ''tamika.hall@email.com'' ',
'       , ''I am all business and thrive on developing the lowest-level code. Point me at some obtuse security bug or framework API, step back, send in pizza and coke (not diet coke - YUK) occassionally, and consider it done!'' ',
'       , ''team_member_03.jpg'' ',
'       , l_blob ',
'       , ''image/jpeg'' ',
'       , systimestamp ',
'      ); ',
'     ',
'    -- Load Team Member 4 ',
'    i := j; ',
'    i(1) := ''FFD8FFE000104A46494600010100000100010000FFDB0084000C08080809080C09090C110B0A0B11150F0C0C0F15181313151313181712141414141217171B1C1E1C1B1724242727242435333333353B3B3B3B3B3B3B3B3B3B010D0B0B0D0E0D100E0E10''; ',
'    i(2) := ''140E0F0E141410111110141D14141514141D251A171717171A2520231E1E1E232028282525282832323032323B3B3B3B3B3B3B3B3B3BFFC00011080080008003012200021101031101FFC400850000010501010100000000000000000000030002040506''; ',
'    i(3) := ''070108100001030303020306030803000000000001000203040511122131065113224132426171819107145215232462A1B1C1D1336372010100030101000000000000000000000000010203040511000202020203010100000000000000000001021103''; ',
'    i(4) := ''1221312241815132FFDA000C03010002110311003F00EAA92492012492F09402CAF0B804C7397982501E9795E64AF4353259E9A000CD23580EC351C201DBA582A033A8EC6F95F136AD9AE3D9C3FD1525B73B738E054333F138FEE80360A5829E0B5C039A''; ',
'    i(5) := ''41078237096100CC14B7444880500C0E21101CA111829EC2807A492480F131E53CA11DCA010195EBDEC8985EF21AD6F24AF460024EC06E563FA9AF2E7B1CD69D30B7D91C65002EA9EB714D13A2A07E24E0382E735B79B9D73F5D4D43E4EC0938194EB94D''; ',
'    i(6) := ''24CF2F79F2F23E2AB8B8F2A0B2448656D4B0F95E40F5C14496EF58F1BC8E3918392A1907403DD09E704A921A34565EB2BC5B266F833973323544F3A9847C8AEAFD39D49497DA62F8C785511FFCD093B8F88EE17040E3957DD337D9ED95F0D4C6EC169D2F''; ',
'    i(7) := ''1E8E69F42828EEABD41A5A88EAA9E2A888E6395A1ED3F028E8403785E30EE9EF1B218E50064924900D77087EA88FE10C72808779A914F40F717690E3A49EC3D5737BACF2564E0907C21ECB7D36EEB49D715F3995B46CCB628DBA9C7B93FE964A7B8434F4''; ',
'    i(8) := ''DAA5F34B28D318EC3D4A864A28EE1AA491C7DC69C347C540735DDB3DBE39539F5B1D449B8C431E4347AB9C794F688232C9A5E479B1E981C0516588F353399A5876D0D1907B950A66799D8EFF00D94DA8ADF1DC5C0E5CF392A23CEA7642060C34E5A08F92''; ',
'    i(9) := ''F5AE31B8E3D139E77F9213864E5490761FC35BEFE76DDF9091D99201AA3FFCFA8FA15B55C3FF000FEE6EA2BF41E6C31CFD0E1FCAFF002FF75DBC222188F0847628C84EE54901524924035FC218E511FC21671BA0325D68EA6126243FBD78F234760173AF''; ',
'    i(10) := ''D9178BF55B9B41113145E474CED98DFAFAADEDFA829EBEB594E6A735C0BDC07386BB96FC15874FDBBF675B1B4A4EA76A717B87A9CAA6FB75E8D3471EFD'))
);
wwv_flow_api.append_to_install_script(
 p_id=>wwv_flow_api.id(19100931008454606173)
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'99FB7F4558ED74C26AF71A899A3CDBE1A0FC02CEDE85A5F348E0E3146366340E07C96F2BA91CE7''; ',
'    i(11) := ''9701ADBEAD3C2CEDE20A67534B4F0C7F9674C312F8607987C562E54F9746AA3C70ACC9535BE8AB1E23A79F4BCED976DFD15A49D235AC6BA5058210C1A1F9E5C874F68AB925821A7601E11F2BC0C388CFBD85B2BAC52C1622C71F3340557925DA7C513A2E''; ',
'    i(12) := ''135C9CDE4B25C2319F2B8938C03E9DD0A4B4D5B29DD2BBDA6F2C1F0532BA7AD2E0C88FAEE02133F3EC3198CBE471CF8AD2361BABC6736BB455C229D5301612F3768030E1C5EDFE857D1519263693C9033F65C5BA43A7EA2B3AAE99CE662169FCC48EC6C1''; ',
'    i(13) := ''ADF4FA95DA870B78BB56612EEBF0F509FCA2A1BF9524044978BCD41009FC218DD39E535BCA032F5D6D868EE6FBA35C754AED2F63B8031B90AD22D3E0873770E1907E6BCACA3A6AE8E68A6739A6373B042752C0D868638C38BC31B80E3C90B2507194B8F1''; ',
'    i(14) := ''7CFD3573DA31B7E4B8F80666B44449592BB42D73C9CE02D057CEFC686959AB91924A88A9633AA598E034738F52B973BB6923A712A5C93FA6290BB5C8D1900E3254EEA68BF812C69C83CA14342CA5A7313F3A5C30FC1C67ECAA6F15D11A034947964719C6''; ',
'    i(15) := ''A07247DD4F50D5F64773D974514D4A239304641DC14310B358F4CFF9468E525AC64AFD7A76D4792891B04B531451EE5EE007DD52DDA4694A9B6751B052434F6E81CC680F746D05D8DC80AD546A367854D0C5FA5A0292BD15D23CE7D890DE8886F4039E76''; ',
'    i(16) := ''431CA73CA68407AE29ABDE522A4143D4129A3A4AB9DB905CC2463B9D91E8242FB3D33C9C9742C27ECA1F5DBBC2B04D28E7668F993B2974113A0B5D140FF6994F1B5FF3D216722D12B2A482E39F45949FA7E5BBD74B378EFA73192D85EC241056C2AA3C3C''; ',
'    i(17) := ''E420C74A1A5E583DAF37D57253DACEAB545655C6FA08182AD8E91819A4CD13B2491EF16B9662E1514A75BA1A87E90760E8C8710B5D756BA5874B8918F4594AAA7D4E2DCEC3EEA5E48DF46905E3DB4CAC86BA57CCD89D09D0789783F657D63A692A2ED4D1''; ',
'    i(18) := ''B772E9071D86E540642D760346CDE4F65BCE8BB1981BFB4E76E97BDBA6069F469E5DF5538E3B4D52A48CF2CF58B576D9AD6346AF80444D60C0F9A72EC38C498F09EBCC2006EE578885A9841CA03C012013DA36DD47ACAEA3A284CF572B6189BCB9C71F6E''; ',
'    i(19) := ''E80A2EAD2CA99AD7693B9ACA90F737FEB87CEF27E0AC2A5FBEDF454166AE8AF3D515B7579C0A781B050447911B8932498EEE215E4C460ACB2BF4698D7B215512F67F30E15636F1153BCC75198FB38F0A7CEE3BE1662F6F7E4E065724F253E0E88C53265D''; ',
'    i(20) := ''6E513D9AA270901FD272A8A764923DBA00D47927603E65573A391E4E096FC902A9CDA788BE790E9EC4F2A1549FEB6697AA3A574E74BD13E961AA9A46CEC3E6D2DE1C477F82D6B1801000C34701727E80EB5F06E469AADC23A39C3226349D985BB35FF5F5''; ',
'    i(21) := ''5D69A47D0AF4231518AA47049B7276EC7A4924A48124924808CEAE801C67FA84C37087DDC13F3540244E0F2ABB13444EB3EABB8DB218A3A1D2C92A0380988C8696E30003EA5736A8BD5755C9E25C677D44E33E679E33D9BC05D2AF169179B6C9479D328F''; ',
'    i(22) := ''DE40F3EEC8DF67E9DD729BAD355B277C3531186B60D9ECF470EEDEEAD1655A2E282F33DBEA60B845B984E2468F7A33ED3574C656415B491D553383E295A1CD23B15C6E8653237C370393B2D07485F26B6CCEB75464D33DDE4CFBA4ACB3F5B7C66B87BAFA''; ',
'    i(23) := ''6DA77E01547708BC4CF756B51335C72D3CF0AA6EF5D050D2BEAA73868E07A93D82F3DA72952E4EA4D256CA6B84B4F6F80CB31C761EA4F60B175D5F256CC6479C347B2DEC13EE771AAB95419A5C81EE33D1A144F0DC3720AEFC387456F991CF972ECE97F2''; ',
'    i(24) := ''398FC71B7C5754FC35EBAA895CDB2DD1CE958D1FC3549192D03DC90F6EC5730A3A2A9ADA965353465F2C870D1FE4AEADD3FD330596D8583CF5536F34BEB9EC3E0B572A32A3A2472C720D51BC3DBDDA7288B174D14D08D503DD1BFBB4AB7A4BB5646436A0''; ',
'    i(25) := ''78ADFD58C150A41A2F5251E1AEA69B66BC077E93B15215883FFFD9''; ',
'    l_blob := varchar2_to_blob(i);       ',
' ',
'    insert into demo_proj_team_members  ',
'      (  id ',
'       , full_name ',
'       , username  ',
'       , email     ',
'       , profile   ',
'       , photo_filename ',
'       , photo_blob          ',
'       , photo_mimetype      ',
'       , photo_last_updated ',
'      ) ',
'    values ',
'      (  4 ',
'       , ''Eva Jelinek'' ',
'       , ''eva'' ',
'       , ''eva.jelinek@email.com'' ',
'       , ''I will tell you directly what I think and expect you to tell me the same. If you are sensitive then it may be best you don''''t talk to me. '' ',
'       , ''team_member_04.jpg'' ',
'       , l_blob ',
'       , ''image/jpeg'' ',
'       , systimestamp ',
'      ); ',
'     ',
'    -- Load Team Member 5 ',
'    i := j; ',
'    i(1) := ''FFD8FFE000104A46494600010100000100010000FFDB0084000C08080809080C09090C110B0A0B11150F0C0C0F15181313151313181712141414141217171B1C1E1C1B1724242727242435333333353B3B3B3B3B3B3B3B3B3B010D0B0B0D0E0D100E0E10''; ',
'    i(2) := ''140E0F0E141410111110141D14141514141D251A171717171A2520231E1E1E232028282525282832323032323B3B3B3B3B3B3B3B3B3BFFC00011080080008003012200021101031101FFC400850000020301010100000000000000000000030401020506''; ',
'    i(3) := ''00071000020103030204040503030500000000010203000411122131054113225161067181B114324291A123527215C1E1338283D1F101000301010000000000000000000000000001020304110101000202020202030000000000000000010211122103''; ',
'    i(4) := ''31417151A12261F0FFDA000C03010002110311003F00D8AF5152095BF2A9A32F4EB87ED8A4CCAD7B35A5174727F3B5351F4BB74E46683D311558F009A6ED209BC656D24015A1752D8F4FB77B8947923196D23271F2AE6AFBE3CB5490C5671927F4920D07''; ',
'    i(5) := ''31AEA6FA21716C62CE32306B3AD7A0C28A32DAB1EF5C85C7C69D47567C41EC30284BF17F576756D4C0739031B7BD1CA2B8BE871D8DB443802AE65B5886E40AE153E2596E95478CCAD8F36FF6A5A69EE18E2595DF3FDC719A365A7753F5DE9F07E6917F7A''; ',
'    i(6) := ''CF9FE2DB71B42ACE7D8571E668C7CEBDF8A5ED4761D04DF135F49FF4D020F5269297AA75097F3CE547A2ED594D74DDAA9E33B500FBDCB9FCEE5FFC8E6A9F8953CAD27A8F7AF07A5C67E03E9AD736708DD80C5253FC45D3E1DB5827D06F5C4C933B9CC8EC''; ',
'    i(7) := ''FF00326A86451C0A367A75337C5C9B88519BF8ACFB9F8A6FDC1D01507BEE6B0A49D80DA828EF24A324E06E696C68FDCF52BBBB0CB24ACCBC691B64D085BDB787E65048D8B1193F4A52EAE8440C99DD78527BFBE2976BD608A84924F9893D89A5BED7AE8F''; ',
'    i(8) := ''FE02239291AA0CEED8CEFF005E4D5A4B18B3E10071C331DC93FA893ED42B7EA68AA10F2371F3F5A0C9D5F27CBC8F2A9F9F7AA9A4D351DA5BF8BC60260823D78C534444B1B447040DD47B1F4F4AC81D4000547A6F426BF2CCBB9FFED3E88D4A06A383B0FE''; ',
'    i(9) := ''2A9BD01A73AB58FAD191C38C8A528B1704D5941A8A9CD3258E3151519A8CD00C8556DC1A8643DABC8AA9CD4B4AA38A9D281656271B6FDCEC28B0DB98F70725C64FA0C50CC849DA88CED0DBB93904F27DA80C9BBC3C9A33FAB7C7B52B73365F6E327F8A31''; ',
'    i(10) := ''505D4E79249A466186DBB77A98AABC92B46AC7F539C28F4143473A864F1BD0D8BC84601DB614FDA747BC99D40898E4649C636FAD3DC85AB4B1918E00E49ABA6B0549E4735D074FE81024A5AF16456FD008F2EAF52453971F0B8718B720E8DCFBE7BD4DCE''; ',
'    i(11) := ''2B85734A58C67EA7F6A982E4A36FD8F1ED5B517449ADEDE459A3324CFE58D53D33C93EF5913F4DBB843BBC6408F01BBD1322B8B414EA008E0D5B07140B19354214F2BB6F4D815A4A8A10AB800D799707352B8A09054F7A835773B0CD54E28529920E455E''; ',
'    i(12) := ''E2537112A91A481B9F5C57BCA29E8EC6CCD809A694ACB20263451918E06A63EB539592774F196DEA6DCFC70B3CAA39D3D86F49CD1169CA229639E07B56C7873B4A0924A9007A0C7C8545842249EE3CB9624053E8067353BF95F1DF4258F4C862B7F160C4''; ',
'    i(13) := ''B778055251E41EA3B56CC7D57A7D8C49F8B93C49CA077541C67D02D52DAC2360048CC87B14A7A2F876D0F9955189EEEBA8D67CB7EFF4D38EA75FB0ADBE21E917AE23589E3CEC0B6D93CF6269DB46FEBE94CB0901C29C6401C9F95310F4508B93DB80AA14''; ',
'    i(14) := ''7FCD52D2D9A2EA3E26391A48ED8F6A2FB13D33AEFAB8B39A4530B4CC8405890649DB3927B73423D587518E6B57B27B56910E897074EAED93A462BA0B8E99024ECEE36971E7048E38E286D6B6F183A1C927D589A3D42D6EB85B499BC36121D4490013B907''; ',
'    i(15) := ''BFDA99A0F598058F593020C46EC251FF0093B0F91CD1C29ADB0BB8C73F6F632287C1A36863DAA0C0C793548025274D0B51A2CA76A06AA554B124D6C74F941E932B9C111623391C6E581FAE6B1324F15A3D12ED20964B6B93A6DEE80566FED607CA77FDAA''; ',
'    i(16) := ''33C778FD76BF1E5C72FBEAAF6211E2DF7652CB8F6519FE695B17315FC8BC86CE3EF5AD77691DBDCF8D6F088E1E0953B6DC9C52ED6812F7528CFEB5F7F51594BEDAD9DECCDBC850E09E6B56D2E186D9AC68C6B6F2FD0569DAB2AE3353F2BF869C97822859''; ',
'    i(17) := ''DF2748CE2B2A1EA561B3DD4845C4875261B007B607FBD12FAE412231C11B9A456CED99C6A7183DB9AAF64E824BF8E5811646C391FD32BB9C819AA4379E346322968FFD32D90389323F5120E00F73DABD6F8477C7E4CF948A2DA524FC39FF008BA00FD5AC''; ',
'    i(18) := ''9D7F54786FFB5FFE6A9A9168FD65FC7EA67FB604083E67CC7EF4A1535B78E6B18E7F25FE5562FE82AACED515524D68805C2E9DE8398C55E4421B14128476A636B1957B0A82EEDC0A2468AC714CADBA81B5206269E58ADADE7CEA8C105D0E082072B5A574''; ',
'    i(19) := ''B18F0A488F971943EAAC2B1DD18A3459F2B03B76AD0B725BA4C193931EA8F3FE278ACBC98C9DC6DE3CADEAA62016534EC7E6DAB3239B0C33C8A704F8C30E0F3F3AC2B767751BBBC8662E88934635064933804F0DB734F748EAF74EEBAAD2DB4AB160232D''; ',
'    i(20) := ''AB718ECA6BDE1A5CB919F37F0698B5E9A81B023C37B55E37FA4D93E76375596E2FAC93A6AC31C30DC6D3B0CEAD3A8300B9039ABC282DE03ACE1210773E8B4D5B582C4E1B4007D6B2BAEDD0CFE1233C9D52E3D3B0FF007A3572CA42B71C65B3FD59418BBB''; ',
'    i(21) := ''C8DF9A462C7EB50CDBD785477AE8934E5B7754A82289A7276E6A9202A704530116064AB945614203CF45C1AA200C655BCB478CC806F502360F9721073E6E7F6E6A93755B780794788E090723006D9A5A09BABD8ED5434BBB9FC89DCFB9F6A1F47EA1E35B''; ',
'    i(22) := ''5EDBB6CCB22CC9EDA8696FB0AC49E669AE5A590967639C9AB59CE6D6F91F3E49728FF26E3F9A9F24DE35785D651D1A3EB3EFDE9A4660B83B8348C390C0D68C7B2035C95D5130AB2B647079C56C5B4AC1776CE383DE938220D8603069B0BA172780327E94''; ',
'    i(23) := ''B675EBDEAEB6C846AD7391E44F4F76F6AC28C34D233C8753B1CB13DC9A5958B92EC72CC7249E77A6AD88CEF5D7861C7EDC99E772FA5E6895576A509C53B72C021C738ACF55763BD56902C52E96E2ACECAC738A9484F615716CDE9419558605F3B397FF00''; ',
'    i(24) := ''1D87EE6BC6E9231FD3014FB6E7F735CF25ECF16F92C9DD7DA9E4992550EBC1ED57349D1C79B2A4F73C9EF5853331B9913E47EF5A4D305524EC05645E4E55BC78D75A9F2BE391E868A70431E48F950E753818E455A09E294028C0E39F51F3AB4BA73EA6A4''; ',
'    i(25) := ''E37BA54BE3C4A7BE0647DEB7A0894C58EF5CAFC3927F5DA23DBCC3E5C1AEA6073E2683F4AE3F263ACAC75F8EEF194E40A02FBD0FAC5C7E17A55DCFDD226C7CC8D23EF468C8073E941EA56E6EFA55CDB8DCCD1B01F3C6D533DCFB3BEAB9CE9F7915C40A76''; ',
'    i(26) := ''D4A006C7DEB4628830CA1C8F6AE43A6CD245ECCA74B0AD787A9489279763C9FF00D577471D6FFE1C11E634258D0498AA5B751498696D9AAC14F8D9A548DAA281538F6A80C146F55370A280FFD9''; ',
'    l_blob := varchar2_to_blob(i);       ',
' ',
'    insert into demo_proj_team_members  ',
'      (  id ',
'       , full_name ',
'       , username  ',
'       , email     ',
'       , profile   ',
'       , photo_filename ',
'       , photo_blob          ',
'       , photo_mimetype      ',
'       , photo_last_updated ',
'      ) ',
'    values ',
'      (  5 ',
'       , ''Mei Yu'' ',
'       , ''meiyu'' ',
'       , ''mei.yu@email.com'' ',
'       , ''I have extensive experience in all aspects of application development. If you need help then come and see me.'' ',
'       , ''team_member_05.jpg'' ',
'       , l_blob ',
'       , ''image/jpeg'' ',
'       , systimestamp ',
'      ); ',
'     ',
'    -- Load Team Member 6 ',
'    i := j; ',
'    i(1) := ''FFD8FFE000104A46494600010100000100010000FFDB0084000C08080809080C09090C110B0A0B11150F0C0C0F15181313151313181712141414141217171B1C1E1C1B1724242727242435333333353B3B3B3B3B3B3B3B3B3B010D0B0B0D0E0D100E0E10''; ',
'    i(2) := ''140E0F0E141410111110141D14141514141D251A171717171A2520231E1E1E232028282525282832323032323B3B3B3B3B3B3B3B3B3BFFC00011080080008003012200021101031101FFC4008D0000010501010000000000000000000000050002030406''; ',
'    i(3) := ''010710000201030301070301060505000000000102030004111221310506132241516171328191141523244292B133437282A1445262C1F10100030101010000000000000000000000010203040005110002020103030305010000000000000000010211''; ',
'    i(4) := ''21031231044151618191132271A1D192FFDA000C03010002110311003F00D5E4D3A4CF70DF14CA7BFF0080DF15145595ED49C0DEAD02479D54B6DD46455AAAA119723CE81BD3DFE6A34FF0D69B77711409A9CFC0F33440936E912070A324E07BD481C693''; ',
'    i(5) := ''BE2B257FDACB4566B667EEB27058788EDBD01BDEB7DA296E3B8495522660A81460B12350CE78F0F348F511AA1D1C9A5BBED3D412EE01852E01F9A74922EC41041F3AF2587AADEA9944CC445130479D1885241C6DABDE8AAF5FBE4BCB7852625492591B24''; ',
'    i(6) := ''32AF207DB715CB57CA1E5D0BAFB65F27A1FEA117CF34C6BD51C502B7EA2D70AAD82356E314A4BA2A7C471E94EA56649E9383A6177BE3EB8AAF25E1F5A14F7A31B1CD566BA9643A6352DF0335D62D0525BD206C6A8CF7FE7AA98BD3FAADC1D90A2FAB6D53''; ',
'    i(7) := ''C7D9876F15CCF8F50A3FF6685868B74F3BC4DF14D229DFE537C1A921CAD6F228514F7B955A1B14A7814C9E723726A898B414FDA0D80A0E3D283769BA8B436E016F111E7E5525BCBF5CCC090832B9F5A03DA790BCF8393A0AE07ABB0DBF14B397634F4DA7''; ',
'    i(8) := ''4F730149329959A4E2262C73EC0125BE3D3ED45FA75E096ECC8FE1D1165B3B952FE2C7FA8ED9FC5029C16711019850879DBCDB0765FBB5693A2F4E91A5459064B1EF273EA4FD2BF039A9B66C727CBE1138B4EFE15674EEEDA421238B9DB39666F534F9ED''; ',
'    i(9) := ''D2D62670BA8AB9D3804E3BCC2802B451D845294DB4247B015753A2C3243A73F5306627DA8AC8ABA88C79665E2B8912631172AA802AE9CA8240E036E7EF463A6D88EA486479B214E96230483E9B6DFF001557AAF4826E5D5711BE352381A8AE49C7F6A87B''; ',
'    i(10) := ''35712233ADC4D872ECB206DB254E9463B798C514F22EBC633D36D735B8D2C5D23A6C1F57EF0FFE473560496F10C45181F6C5489647197702BBFA7B65E496AA1E6D959EEA53F4E147B540E26939D4D4434C43E88FF35C2246E30BF15C7034F1489FDCBFC1''; ',
'    i(11) := ''AEB715240E02E3009F5A98E05B6B0BD97E9888CF9B6D5717B3D2C9BCF2841E8373461589F3A64BB9A60640D7F6315AC290C449466CC8C79206E6B31DA03A4F7C795064FF00738D29F8AD7F5A0CB60CC83C7A5B1F8AC9F6862794C10A0D4F70E8028E4851''; ',
'    i(12) := ''B8FCB5248D9A0EE2BDC13D3ECCDE1B78554E92C2594FB20F083F7AD959DA770BA98788EE687423A8F4E8C22A5B424E0124966C0F2C0AB50DF5D4884CDA0B7918CF9549C879C9CB0B80D4122799A210CB08183228F92280FE9A49EDFBCC95461B9538340A''; ',
'    i(13) := ''5ED0F48E9B7A966B19B89C90B9397393E5FF00CA78B7E0CF28AF26DEF228A646950862469D437ACFDF5A24577134642A14605B1FCC4E00DBD688F4BEA769D41310A889D7EA41C1FC549140922491B0DD18B0F5A6EE3E9C9A59EC5AE8F37EA2C636901122''; ',
'    i(14) := ''8D2E0EFB8DAAFE9F6C557E9D66B0440C7B07DD8676CD5E1183E64FC5515D197536EF7B78B212290C7CD4E21F45FCD3C40DEC28D313067DB8AEC3CD71B8A50F353285C4A768CEE69B1D4A28A0153A8C0B25AE83E791F91593B85FE3AC6E0EE6289801E8C4''; ',
'    i(15) := ''D6D2ED4FE8DD8729E21F6A0315883D4DB23C21352FDE84D60D1A124A2EFB598BEA1D1FAB5E869A77922769331C63E9EEFD739E68C740E8F756F312CEC60036573935A696D63CEE38F335C592253DC2635E09C7B0F3A8B93781BD5725DE9D02BDA3438D85''; ',
'    i(16) := ''67E5EC959C579DF04DD64EF5093C3139DB6A3FD26E233AA30C3239A57B771ADD0858E188CAFB8AA2ADA89E549A196F636CAC6648C2CEFBCB20E58FAB7AD73053A815FE59109FBEF56E065036A6CF1867D63EAC607DE8BF218BA65BE8AA5ADB5B8F365D38''; ',
'    i(17) := ''E349C7FCD11AAF61198ED6353B9C6FF3566AD1E17E0CD37726FD454A952A229986E2945CD75B8A508DEA054B71D4AB51A7152A5320326081A120F9D0D9A016B7713EE464A6C09F0B9DBF19A2A322024552EA504D268962708F1EFE219076A66B07465B5B''; ',
'    i(18) := ''F5295FA321247159E104D34B3BF78D1B48A6352BC806B577CA1E365E750C83F3589EA27AB09DED6C34277832F2C848D23CF18F3ACF38D48D5A52B8D047A759E9CDB5E37EA2DA61A2472D87057046B2A41DE8E5D58DB4D6E318223C687072463DEB0F616F''; ',
'    i(19) := ''3C53E97963EF07858E1CE73EC58569E2ECFDA4D6D9FD55C091D7C41242884E31BAA6334D1580EA2A69B6D056DD580009CE3CE9D2ADDFED180AC6F25B346C18A0C8126469D5ED8CD2B48CA4488C7254004FAE28BDB29106FE7BD520ACCFA92A44C830807B''; ',
'    i(20) := ''53AB8BC576AA4054A952AE38CD30A50F34E61B57221BD40A96E3E2A44E0D449522F14C80CBB10FDCD47783C1F6A921FF000299763C1F6AA7610A05755BA0CF88640FB501BDB52CECEBB1CEF45EF0B2592B6770C71F8ACFDC7539D189C07FEF59F51ABA66''; ',
'    i(21) := ''9D152AB4558ACE05B80D21CB039AD458080C63BBD87A56366B859AE049E38CFF00DBCEF5A8E8D6CEE819890847AD2C0A6AF16D862040F2A8FE5CE09A2A400B81C50FB7004C8ABC03440F15A20B0CC937912F15DAE2F15DA71054A952AE38CE9E2B917D46''; ',
'    i(22) := ''9B2C891A17918222EECCC7000AC9DCF6F05BDE3C50DB2C90F11CA588C9F7C0A8A8B7C1549F836CB4F2C140D440CF1938AF35BEED8F59BB528AC2DD3D213A49FF0076334127BABBB86D52C92100F0497FBE49A750637D37DF07B9C2716D93B7B9AA77FD4E''; ',
'    i(23) := ''CE31A03F78F8C6177FF9AF35ECCF599C5C3D8DCCECEB363BA2E4ECC3F977F5AD0387539E69352728E12F73A1A29E5BF6417EA172AF668A0EE7248ACDDC23B1253CAACCF77A5304EFE94DB2612139FB545BDCED9A231D91C03E389A57C0186AD674332080''; ',
'    i(24) := ''46FCAD0BB7B3559C9C51AB2511FCF14F1426A4AD5052C8666CFB1ABCC70286C0E50EA0706AD0BAC8C38FB8AB45AAA334D3B2C21C8A7551B8EAFD32C828BBB8480370D26557FA8ED562DEEED6E4136F324C073A18363F14E2135736AED72B8E3C53B4BDA5''; ',
'    i(25) := ''97A8B0B723B8894ED1677CFAB7BD055D4CA573AD4F91E687C9346D9CF3EFCFE6B915C3C67C2723D0D726684D2EDEF0C3F80AC6D03C60B2946E1B19E46C69D95FE497F3BD51B7BE6D2F807EA3B7E0D3DFA82038643F8A7194A3E57F971FDA2D319B918246''; ',
'    i(26) := ''E083839AD5F40ED1C774AB67D4C886E7609336CAFF00EA3E4DFDEB143A9DB0E623F6C8A77ED4B16D9D2403E696518C95339B5CA967F3FD48F4EBCE90DA43AEE0FA55782D9A171E5595E91DAF9AC90476B744C43FE9EE06B4C7B1E47DAB476BDB5E937202''; ',
'    i(27) := ''DFC0D6EC7FCC88F789F8D9BFBD45F4F2E639FC03EAD624D7CD9A0860D481BF9AA5B7C9974F18A674DEABD1EE620B05EC3230E0160ADFD2D8353C2BFC610082A467237A0D35CAA05DD96D78A90714C2748E2A85EF58B0B65FE26EA2817CF2C357F48C9A2B''; ',
'    i(28) := ''D32296A775955E2D21D08C38619523D0D60239874EEA8FFB39CA4713BE8D27185F41EDAAAF759ED9C5340D69D2558A36CF70C31FD239FCD6656E201B19591CF278156D3D369EE9631540B4E962AEEDE3E2CF40E9DDB7923654EA31968CEDDEA0DC7C81B1''; ',
'    i(29) := ''AD4457D6F7112CD6F209627E194E6BC7D671A4689F57B1DE8AF67FAF5D74EBADFC7093FBC41C11F14D28F80CB4AD5AFEAFD1FFD9''; ',
'    l_blob := varchar2_to_blob(i);       ',
' ',
'    insert into demo_proj_team_members  ',
'      (  id ',
'       , full_name ',
'       , username  ',
'       , email     ',
'       , profile   ',
'       , photo_filename ',
'       , photo_blob          ',
'       , photo_mimetype      ',
'       , photo_last_updated ',
'      ) ',
'    values ',
'      (  6 ',
'       , ''Madison Smith'' ',
'       , ''mady'' ',
'       , ''madison.smith@email.com'' ',
'       , ''Mady to my friends - I love being creative and coming up with beautiful solutions.'' ',
'       , ''team_member_06.jpg'' ',
'       , l_blob ',
'       , ''image/jpeg'' ',
'       , systimestamp ',
'      ); ',
'     ',
'    -- Load Team Member 7 ',
'    i := j; ',
'    i(1) := ''FFD8FFE000104A46494600010100000100010000FFDB0084000C08080809080C09090C110B0A0B11150F0C0C0F15181313151313181712141414141217171B1C1E1C1B1724242727242435333333353B3B3B3B3B3B3B3B3B3B010D0B0B0D0E0D100E0E10''; ',
'    i(2) := ''140E0F0E141410111110141D14141514141D251A171717171A2520231E1E1E232028282525282832323032323B3B3B3B3B3B3B3B3B3BFFC00011080080008003012200021101031101FFC400800000020301010100000000000000000000000501040607''; ',
'    i(3) := ''030210000103030303030203080300000000000100020304051112213106416113225114714252910715233233A1B1C172819201010003010000000000000000000000000001020304110003010002020301010000000000000000010211032112313241''; ',
'    i(4) := ''516122FFDA000C03010002110311003F00EA108C4318F8681FD97DA803031F0A5002108400850E735AD2E71000DC9291DC3AAA8A989643FC570EE38403D50E7068C9380B0359D5978949F472C676D2123ACBA5E27CFA92CA5A7B64E146A2719D5FD463B8''; ',
'    i(5) := ''20A02E3D0DEEF146FD515448D23B1391FA14FACBFB42AA8DED65C9A2466777B7638FB2921AC3A3A17851D6D35753B2A695E2489E32085EE801084200421080108420042157AE94C703837F99DB04025B9D4545C67753424B29A3D9CE1F88AA22CB4D17B8''; ',
'    i(6) := ''8D4EF29A53C618D3B72A646642CA9B66B290A9D4D1346034054E7819F0309A4CC2014BA67765855346CA50A6A29227E72C095CF6D8F396FB7C2D0BC0C14BEAB014CF23FD0F8D32C7485D66B4567A13BCFD0CFB786B8F057496B839A1C370785C958F1C1D''; ',
'    i(7) := ''F2BA0749DC7EB6D61AE39969CFA6FF00B0FE53FA2E88BF230E48F163B4210AE6608421002108400AAD561CE0D3D82B2AA4E7F8C47808C151EDD3C2F8D5B1CAF778CE52EACAD829585D21E3B059D746B3D913386E12BA8D8AA7375650FA85A7503F65F4CB''; ',
'    i(8) := ''8415803A2390B9B937F0DE33D12E07097558298CEE11B727659FB9DEA28DFE9B46A3E1578E5B7D176D25D9F5C1F0B4FD0D3B995F2C79F6CACDC790561E3BA39E72633A4AD8F44B83EE2D23BB495D109CD2D30E569CBC3A021085B9CE0842100285284046''; ',
'    i(9) := ''72AA547F58790AC4CFD119236278549BA9CF2E7BB511B286C94BECF398B834E319F2B35577181B2988B3D4909C63B653CB842641DF1F19482AE30C6968601E561C9493ECDF8E5B4666E1738456BA9DF006B86E48C14E6C0D8EA18E7C6C181CFF00DAA125''; ',
'    i(10) := ''A23A9A82EFC6793DD6A2CF6B6515386B4792A9B0FD69A6525DE08BA87EA69C7B86187821645D5B1B642746B23B95D03A998DA8A72C0370B08FA36890823753C752B7454D62C27F78BB0D718B0D77C2DA7454903AAE22240C7E0939DB3E16522A53A34E36''; ',
'    i(11) := ''56EDD0C8DA86B19900F61F657573BD14A8A73DB3B087070CB4E47C852B37D0F2C8EB7D444F24FA33B9A33DB21AEFF6B48B64F52673D4F8B6BF01084292010A14A02B5764461C3F09DD2CB6CD24E6691C7DBACB5A3C04DEA181F0BDBE12CA186389AF11F0''; ',
'    i(12) := ''E7127EE55293F25F8692D7852FBD47B48D69072B3F75D0C04829DD4BF4B4F958FEA49E66370CE5C70163CED661AF02EF74A91571FA911C7BB89DF0B674F341053B5F33C0C8E0ACBD86CA626FAF36F23B7DD36A9820D3AA56EAD3C656712E569A5D2A782D''; ',
'    i(13) := ''EA0AA8C3CCBC465652496395DEA30A71799FEB2231B07B5AB3ED8FD3240EEA257B7F65B7D21A533F2CF2ADD9C075C1B9DB9FF09453CE43B4FCA636D974D6B0F182A65650A7FE59B6E880EF4AE24F1F5471FF0096AD3ACEF464D4EEA5AA8E3703289DCE91''; ',
'    i(14) := ''BDF70307FB2D12EB9F8A38AFE4C10842B150421420070D408F9547E90539739AE2438E7055E5E337B861435A4A6C57547DAB35D414FAE10F1CB4E42D1D4F707B2557167A94CF1CECB9F97BD3A38DE19F8AFF007261632960F5870427AC68ABA7D550F742''; ',
'    i(15) := ''F2376918C25FD3F4C227973C77D939BAD4C6CA627483B2886BC7B25FCBAE8CE575042D1218E7D87EAB2F5D23D8FD300D7BF2537A8A9797B8018694B64193B8DD154FD22F9FD6144C2FF73F62394DACD486B2E94F4FB8123F0E23903929542F2DCF6CAD9F''; ',
'    i(16) := ''ECF2DCF9AA65B9C8DC4710F4E2CF771E48FB0485B48AF2578CB35D6DB1DB6D8F7C9491689250048F249271F7298210BAB0E4DD042108010842020AF278DD7A954AB6B23A5607BF8270A502A57370E242592B73907829D4AC8EA23D6D3B11904251531CB0''; ',
'    i(17) := ''9396EA67C858F271BF68D62D6615A089A0168D8F6454D2EB84FA8ED82F092A1AD765AE19F82A9DCAE4F34E58321DE16399D61AADD1554451B8BB078E12B9400E39ECBE4D5CAC9497E71F0ABBA77B9C7E1554B2EE8B9414725757434716CE9DE199F80792''; ',
'    i(18) := ''BB1DBE869EDF4715253B74C713703E4FC93F75CC7A264A78EFD4AE9DC017170693F98B4E95D5D74F12EB4E6E56DB04210B43304210801413852BC64998DC927840134AC8E3748F386B46492B2951788EBAA1DA4E626ECDF3E5797565F9CE028E03A187FA''; ',
'    i(19) := ''A4EC48F803959C86A58C6E187729A0D153DE5D6C983253AA8DE79EEC27FD279EAC53C6248DC1EC70C82160A6ABCB4B6439076C2F3B55F6A2D13E89497513CEC3F2E55E59069EE76F8AA01FC0EECE1B2C9DCA0BC51125A7D7887EB85B41510D5442689C1C''; ',
'    i(20) := ''D70C821529DBAB23190A6B8A6BDAECB4DB473C92AA499D870D2E1CE57C8273EE2B5172B2D34F9786E87FE60B355F6EADA2F711AA2FCCB9EF86A7FA8D95E91F56E8E5618CE240E1A48E4105772B5558ADB753D4E72648DA5DFF002C6FFDD70BB4D2BE694C''; ',
'    i(21) := ''F2B7DADD9AB6947D55358A9A09B4FAB4AD768A88FBE93F89BE42985852FB3A5A157A0AFA4B8D247594720960946A6B87F83E5585733042141407FFD9''; ',
'    l_blob := varchar2_to_blob(i);       ',
' ',
'    insert into demo_proj_team_members  ',
'      (  id ',
'       , full_name ',
'       , username  ',
'       , email     ',
'       , profile   ',
'       , photo_filename ',
'       , photo_blob          ',
'       , photo_mimetype      ',
'       , photo_last_updated ',
'      ) ',
'    values ',
'      (  7 ',
'       , ''Tyson King'' ',
'       , ''tking'' ',
'       , ''alonso.king@email.com'' ',
'       , ''No problem too big, no problem too small!'' ',
'       , ''team_member_07.jpg'' ',
'       , l_blob ',
'       , ''image/jpeg'' ',
'       , systimestamp ',
'      ); ',
'     ',
'    -- Load Team Member 8 ',
'    i := j; ',
'    i(1) := ''FFD8FFE000104A46494600010100000100010000FFDB0084000C08080809080C09090C110B0A0B11150F0C0C0F15181313151313181712141414141217171B1C1E1C1B1724242727242435333333353B3B3B3B3B3B3B3B3B3B010D0B0B0D0E0D100E0E10''; ',
'    i(2) := ''140E0F0E141410111110141D14141514141D251A171717171A2520231E1E1E232028282525282832323032323B3B3B3B3B3B3B3B3B3BFFC00011080080008003012200021101031101FFC400890000010501010100000000000000000000000102030506''; ',
'    i(3) := ''04070810000103020404050107040300000000000100020304110512213106134151223261718114072333425291A11543B1C17282E101010003010100000000000000000000000001020304051100020202010303050000000000000000000102110321''; ',
'    i(4) := ''4112315104227113324261C1FFDA000C03010002110311003F00F534210801084200421239C1A0B9C6C06E4EC80542CD633C7784617998C0EAA9869923B5AFEAED965EA3ED63130EFB8C3E1637B48F738DBFEB95281E9A85E670FDAED535CDFA9C39859F''; ',
'    i(5) := ''98C521BFC073568687ED2B862B086BA49299E7A4ACB0BF6BB49406AD0A2A5AA82AE06CF4EF0F8DE2ED7052A0042108063C754D521D428CA9443254210A09042151716E293D05065A607992DC39C0795A806E33C5D4387668A1FBF9C69A7941FF006B0D8C''; ',
'    i(6) := ''F156278812D9252D8BA44CF0B7E6CABEA2626F2CAE2E71FF002AAA692491E6DF015E9204B512B1F96EDF101675BAAE47CACB11972FAA89E4B6F771BFA289F2B4696BFAA86D122BC8F851917D47F09BCC036052179ECA960D6705F18BF039DCCAA2E7D239''; ',
'    i(7) := ''BAB06BE2E96BAF5BC27138315A08ABA9C111CA2F95DB8F75F3A97382B0C2F1FC570E99AFA39DF1E4372DCC729F76EC96451F432166B82B8A99C4387B9EF0195301C93301BFB387A15A4BDD481531C354F48E170880A8421002C4FDA156BA211401DA3879''; ',
'    i(8) := ''2FBFA95B65E77C754EE9F1C00E8D6C6D373D91032DCA123338370372755D8DE1AA97527364BB5CFF002C7D403DD58E0F42D7100C632DEE2FD6CB4E21396C468B39CDF06B18AE4C13384A5F3480DBA0520E188468F67CADC65696D88D970D446D17E8B094''; ',
'    i(9) := ''A5E4DA2A3E0CA1C069997193F85CF2E0708E8B4C435CE3E8A0958D37B2AA9CBC96E95E0C9C98331A4E9A7454F57466092C763B2DA4CC05DA6CA8F1BA7063B81B2D2191DD3293C6AAD0FE00C65F84F11D382FCB4F5679130BE9E2F293EC57B887106CBE75''; ',
'    i(10) := ''C3E58A0C429A699B9E28E663A46F76870BAFA2839AE8DAF66AD7005A7D085D28E56878374AA303AA7837402A108400B0DC42EE6E3B367176B1AD6B41F40B655B54DA4A592A1C2F905C0EE7A2CA635472C9522A9CED486BA46F60555C92D168C5BDF03F0A''; ',
'    i(11) := ''C29F904D21B076A02B47C5A5829210042C036B04C9DC4B7247BF52AAD2A2CACE491AC17D6C57055B7427F65C58CB8539B9AE6C6FFD1985EEB8A9ABAAA5B379AD9877EAB1951B46C9E3CDCC2C3F09B3B72FB94E99E61B4AE160AAAAF13A9924E5523039C4''; ',
'    i(12) := ''F98ACD2BE4D1B249416EA02AEAD8B9D139A06B6D14B3458996932C8D07B029699B21FC4B661D7BA9AE9DA7645DF7463AA227B26746410E06D65F416012544982513AAADCEE4B3391B13946ABC4F198A3871C6E6697B486B8B5BB95ED7C3F5D4B5F83D3D4''; ',
'    i(13) := ''5282D8B2E4CAEDDA5BE12D3ECBAE0ED2F8397245A6FC161D128DD37AA51E60AE663D0912A824E5C4E9FEA28A58BA9171F06EB338955D44B5EFA28800DC9775FA8B2D7917165495D84B0D499C8B7848649D4159658B74E3E55FC1B619C55A96D53AF962D2''; ',
'    i(14) := ''5DD47177C83FC2E3AE839A32C8F788CF99AC396FF2355DF4CCE5C0C8EF7CA2D751D4C632136492B4445ECC6F12605415A20E535EDFA7D1AC60BDFF00E4772A1C1B07A98EAF98E05B1922CCF4571592BA379B6CBA3039592CCECC412D58DB93A66F5D316D''; ',
'    i(15) := ''11F12C0D8F0E040B158E86273CEFE1B1CC2DD4E83F65BBE2904E1E40171D1622966CB2E5BEFA1093D4B421B8ECE08F037439B2CEE91EE370F0082177D3C53C60735D73DFAAB76DB2DEDB85C530CCFB2ACA4E5DCB28A5D8AEAA8633C405F28D22801683DC''; ',
'    i(16) := ''85E99C114B2D370EC1CD195D339F3007A35E6EDFE162A8B069715E25C805E2CACE61ECC68D6FEFB2F516B5AD6B6360B35A000074016F8A3EE72E12E94639A494143993EA7FC16C4EC95A0EE5284AB639C46F947B2551C0E2E89A4EF65220114350C1234C''; ',
'    i(17) := ''6ED8F653A69683BA0385F1363B319A35A2C17355BAD1156154DB10475D155D6825842CE6EACD21BA3218AD59E7646DCB89B00AC7062FA1A6909839D23FC4D00DAE7B5CAA8C55CCA2AE6D44ED73E2602ECAD1724FB2BBC3AB59895036AA8607C8D71B06BA''; ',
'    i(18) := ''CD208EE16104DB6CE8949524263F89838634CAD11C8743103720AC58735E038332480DC9EEB4388D16292CF77D13AE41CA33023E567AB054D242EA8A88846C61CB96E2E4FA052D49BEC4C5C52AB45BD2CD9A105DB8DD42E95BCFCDF9415CD8397D4C2E9C''; ',
'    i(19) := ''831B5C3C8EDD3DB1BE6A86C31789F23831A3D49B2A2EF44B7AB3D1F86B0F652D089B474B57691CE035B11E16FC2B902CA2A5804104510FEDB1ADFD8594CBB52A5471376DB6084210823A71689A3D148A387F09BECA44008421011CCD0E8C83A7507D554D''; ',
'    i(20) := ''40CC0F7EAB83880623FD6B0BC42199DFD3A198C55708D80702D6C87E558D40D4B9AB3C8CBE36525661ED9DE1EF1E5D94CCA586180BA0BC2FFCD90DAE7BAEF1CB9343A15C956DC9A6C0E84AC96B6B9374EF465B10C47178E52D6CF23801604E559F929A49''; ',
'    i(21) := ''653254B8BCDEE038DD69AAA38DCE7177986CAA656B0B88ECAAF248D697848745372A03974BE8B4BC1381493540C5AA199618EFF4E1DBB9DFABD82CDD0C51D4D6C34EFD6227C43BDB5B2F54C3C814EC63406B5AD01A06C0057C10BB93E0C33CEBDAB93AD0''; ',
'    i(22) := ''842E839C108420190FE1B7D93D2016000E8950028EA24E5C2E70DC0D135F55131DCBBE692D7CA3FDAAEA7C5A2AB9EA299C5B9A23A341DDA7AFEE855C976BD9538963B4F87BDB04E3332A34907E969D3328FEBA7A101B25EA281E2F1CEDF11603D1F6DC7A''; ',
'    i(23) := ''ACB6370573B18929A4697CD23BEECF42D3B5BD16B3016B282919413BB3B5DF98EA013F97D9747AAF4F8A18614EF2495E8CB166FA6E98FF00A98DF67C4F041D8829956E9A48881672A7C7A925C127FAAA425D4721FBC846B909EA3D1329F1B6C8C1E2BAF2''; ',
'    i(24) := ''A5D51D35DCF420D492923871174F1CC5EF63B516006CAA8731F258DC02568AB6AE19203701C551699AF6B2AA6CD5323AA99F4548FAA8CDA58AC587D6EBD4385B158B15C229AB99A17B72C8DFD2F1A382F21E21A8228CC43791C02D97D98D7B63A6761D21''; ',
'    i(25) := ''0D79D433D47FE2E8C0E96FF267367FB97E8F47426B0DDA1396E640842101FFD9''; ',
'    l_blob := varchar2_to_blob(i);       ',
' ',
'    insert into demo_proj_team_members  ',
'      (  id ',
'       , full_name ',
'       , username  ',
'       , email     ',
'       , profile   ',
'       , photo_filename ',
'       , photo_blob          ',
'       , photo_mimetype      ',
'       , photo_last_updated ',
'      ) ',
'    values ',
'      (  8 ',
'       , ''Daniel James Lee'' ',
'       , ''dj'' ',
'       , ''daniel.lee@email.com'' ',
'       , ''I am a DJ, I am what I say. If you ask me a question and I don''''t answer, it is not because I''''m rude, it is probably because I have my earbuds in and am rocking out to some gangsta rap.'' ',
'       , ''team_member_08.jpg'' ',
'       , l_blob ',
'       , ''image/jpeg'' ',
'       , systimestamp ',
'      ); ',
'     ',
'    -- Load Team Member 9 ',
'    i := j; ',
'    i(1) := ''FFD8FFE000104A46494600010100000100010000FFDB0084000C08080809080C09090C110B0A0B11150F0C0C0F15181313151313181712141414141217171B1C1E1C1B1724242727242435333333353B3B3B3B3B3B3B3B3B3B010D0B0B0D0E0D100E0E10''; ',
'    i(2) := ''140E0F0E141410111110141D14141514141D251A171717171A2520231E1E1E232028282525282832323032323B3B3B3B3B3B3B3B3B3BFFC00011080080008003012200021101031101FFC400840000020301010101000000000000000000040502030607''; ',
'    i(3) := ''0100081000020103020503020406020300000000010203000411052106123141511322613271071442B123245262819116A13353C10100030101010000000000000000000000010203040005110002020105010003000000000000000000010211210312''; ',
'    i(4) := ''314151041361C1FFDA000C03010002110311003F00E9A16BE65F69A90F1522B918A6B144F20C3B0F068BB5B9CA7293B8AAEEE164939B190D40CD7315AFBE57080F93441D8D4B06CD4156938E2AD1613CB3DD227C9A9371970C47826FE3DFC6F42D068720''; ',
'    i(5) := ''62869DF2714BFF00E63C38FB477A8C4F4A0A7E2BD2BD41C9287407DCC0F4A16BD05335D07FE25FB559545A4B1CB6E9246C191802A41CE41ABE80C8ADC7B850B2FD6451846F9A12E061C9A28123DB5D9CD147A1A1A0752C31D68A3D2B828C5DC0E4E2297E''; ',
'    i(6) := ''483FF55A38240A549ED59ED507A7C41CC760C01A791EE14D7200C97EA156D45540A950184DC4BAC2E9B6CA117D4B894FF0D47603A935CE350D5E7BA669198FA99E8DDA9FF1C5FC53DFA4713106DC6E40272C6B29797B0CE9C8623CF8F70E841F22964C68''; ',
'    i(7) := ''C45B35E3ACA1AE9BD481F66D8654D0BA8410A9CAAE55B752BDC578E6577684A9747180DDEAD5B3BC36D1426324C4490DF149B90FB58A799E39151B747FA5AA7EACF1165C9F6F5FB51371632058FDA410E4FF008AA9EDA762C4A9DF635DB91DB5F81BA771''; ',
'    i(8) := ''3EB1A6B0FCB5'))
);
end;
/
begin
wwv_flow_api.append_to_install_script(
 p_id=>wwv_flow_api.id(19100931008454606173)
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'D48AA06D1924AE3EC6B57A17E286A115CA0D48196CCECE507B87F76FD6B02D1B8392A476DEAC47E518068EE15C133F44695AC69FAC5A8BAB0984D11D8F6653E1876AF6E47B8D713E15E24BED0F528E4B621D27611CB139F63027F715DB0B''; ',
'    i(9) := ''FA88B2118E65071F7A78BB27354516E196719E94CA814079C1A3874A6672323C50BC9A9DBB8DB23F634DECF78549F14B78B862E2D5FE48A3ECDBF8087E2B80C775E5785ABE2C31406307AEC51C777713CF84527A0EA680B0E167BCE5BB58BD24639064EA''; ',
'    i(10) := ''47DA9AEA964B7FC531DB4CA7F2D09121CF4773BE3EC2B5324602F28D80E8054E4ADB29174919C1C37A6A05CC4A1D7B8154DDE9B00521540A793AE0D0728C919DEA524562211A2DA81CCC809A1AE6C6D546C833F6DA9DDD3051B52A94F3641A84ECB468CF''; ',
'    i(11) := ''6A3A545346DC8B838276AC8CD118E52A7620E37AE8338E58D8D62F5451EA96237269F464F8626AC5728111D91D5C6FC84363CE0E6BBF695791DF693697316CB244A71FE2BF3EABF29C575DFC33D496E74136A4E64B572BBFF49DC56A863065D457936B1C''; ',
'    i(12) := ''60A66AE1D2AA8A550B835683919A71119AE305F6DBB787A26C8E6D53ED55F182FF00291B78715E698F9B45FB514063E26A7818A8559DA80C25D45952FE221464756A35DB2334BF5B6315CC6F8D9F607E451B1E4C6A4F8A47CB19708A271DE819451D7240''; ',
'    i(13) := ''14B669D15BAFC54A6CB4016E2266D80DBC9A0A6842E70451377A8C31292E718ED59AB9E2459AE3D28936CF5359E59E0B2745F7113B1393B567B57D31E552F1EE7B8A75F9D247D6A4FF004E6A1CE1B7C7F8A116E2EC6694953304E8D1B9561823CD6EBF09''; ',
'    i(14) := ''EF39757B8B6270258F20792A690EA1A7ACBA8A28180FD698DAC2749B886EECFD92C0E0E47707A8AD2B556199FF000B7B97876A851797A55A287B197D5B68E43D5D437FB14456833A11716AE74ECF860687D14735AAFDA8CE295E6D2E4F8C1FFBA0F403FC''; ',
'    i(15) := ''A2D142B3446A63A5448A90E940600D56D92E6DF0C3DC8C190FC8A848E56DC15D8E28BB988CB0BA0D891B507CA268590F6F69A590D1FE9CFB89F89192568AD1E69DD0F2B7A2A7901F1CDDEACE14B8BFD4E722F62648D3A31DB7AD8C9A6DB88BD2445441D8''; ',
'    i(16) := ''015ED969D6F6FEE8C609A83D3B6ACBA9D2325C630244E823FD5D4567A3D016E9B9DA56084744D8D6A78CA0E599250723B8A53A7DD2F3E01DC76A94AE3275E954AE29F38048B85A38F0503EDFAD8EF449B358472824E3BD3A33868F73834A2F1C02467AD2''; ',
'    i(17) := ''49B7DD862ABA146A0989A2901C107AD7DEF4BE8E22C64121048F00D4AF97D48B63B8EF46F0F598BEBF81231CCC483237855A68A78EFA0B695B78C59D5F4F18B78D7C28FDA883D6A9B6C0F68EC31569EB5BCF3859C44BCDA64C3FB734B3875B36C3E29B6B''; ',
'    i(18) := ''639B4E9C7F61A45C3B21F48AF834572066C2BCAF6A06451406258141CB188E47E5FD7BD106427A556EBCFF007AE68E4F22F772720D41275473CE7000C9AB5D40908343828AECC7193E6A4ECB2AA10F195C5B3DBABE720EE08EF5898EF9A460234E4E53B3''; ',
'    i(19) := ''1EF5B1E2BB3FCD47106758903743B6D598BC5D320B82B685E5551EE7C7B73F1519C6E4FBB2F06F6AF0656D72648F0C77A12F5886F8E942596A114F3B4102B617EA246D9A2AF010AB9EB5269A791D3066018729E87AD748E1AD22CAC34D8A482302595433''; ',
'    i(20) := ''BF739AE6AE71BD758D250AE996C0FF00EB5FDAB47CEB2CCFF4B7490643B1CD5B9C9AA94EF530726B499503EA639ACE51E50FED48B86A0E6859FE715A0BD1CD6EE3CA9FDA92F0A1FE148BE18D71CCD2382460552C08D8D5EC7009F15433731AE41678A77A''; ',
'    i(21) := ''974A88DABDCD70016E97079C77D8D67B567BD32471D9B0472DBB11900569E550CA41A4D776EC25CF71D2A3AB17D16D292ECCFDEE81CCC6E6EEF649A6C7EAC041F6148AE61D3E2464694CB20C855CEC3E76ADACF6EB2AF249F49EB48AEF4FD3E37F4E38C0''; ',
'    i(22) := ''3D7353726BAA34C649FECCFD8C7E9B654614EF9E99AFAEA5249DF61D28ABA290E4038F14A647776201CD4A9B6DB0B91366C8AE9FC2DAADADEE97040B2AFE66140248B3EE18EF8F15CC2343B6698E8DEB43AE5BDE404810A9F57E54F634FA73DB35E327AB''; ',
'    i(23) := ''0DD1BED1D5C75A9AF5A59A6EB565A8C8D142F89E319785B6603CFDA9981BD6C4D3CA32553A642E066261F069170B3624B84F0E7F7A7D2EE87ED59FE1B045FDDAF873FBD7019A795B0BF7AA06C2AC90E4D566B82784D7AA73506206E4E07934AAFF0089B4''; ',
'    i(24) := ''EB1C807D7907E94E9FEEB80386E9415DA8273D73DE952710DCCF6935D4C8208D14B041B9F8C9A6F1219B4F85BF5940DFEC6684E36A868BA626D405CAC64C2BEA1F02B2B7EFAAC6E5DEDDA307A135B7825432321D9D7EA53D450BAE2A9B56720600EF59E4''; ',
'    i(25) := ''B17E1A22E9D1CE6579666F76DE6A2B10518EF477A285988E955244F34E23452EDFD23FFB53B6F08A576C8AC2E79513DCEDD00A77676C2D62E4CE643BC8DF3E2A569622D973F54BDDBC7C0AB0EDD6AD0D2DAADF2465AB6E97029D76E6E74D96D756B17F4A''; ',
'    i(26) := ''E607E5E61D0A9FD2C3B8AD7F0DFE20E9BAC72DB5EF2D95F74C31C46E7FB58FED58DE2705B4E1BE007159AE452BBD14DC4128A91FA018732646E0F71B8ACDE8D21875BBC8CF76CD732B2D6F58B1216D2F258D7FA79895FF00469DE8FC67716777EBDF47F9''; ',
'    i(27) := ''80DF5B2ECDF7AA29F1827283E8FFD9''; ',
'    l_blob := varchar2_to_blob(i);       ',
' ',
'    insert into demo_proj_team_members  ',
'      (  id ',
'       , full_name ',
'       , username  ',
'       , email     ',
'       , profile   ',
'       , photo_filename ',
'       , photo_blob          ',
'       , photo_mimetype      ',
'       , photo_last_updated ',
'      ) ',
'    values ',
'      (  9 ',
'       , ''Brock Shilling'' ',
'       , ''thebrock'' ',
'       , ''brock.shilling@email.com'' ',
'       , ''I am your man! Let me solve that for you.'' ',
'       , ''team_member_09.jpg'' ',
'       , l_blob ',
'       , ''image/jpeg'' ',
'       , systimestamp ',
'      ); ',
'     ',
'    -- Load Team Member 10 ',
'    i := j; ',
'    i(1) := ''FFD8FFE000104A46494600010100000100010000FFDB0084000C08080809080C09090C110B0A0B11150F0C0C0F15181313151313181712141414141217171B1C1E1C1B1724242727242435333333353B3B3B3B3B3B3B3B3B3B010D0B0B0D0E0D100E0E10''; ',
'    i(2) := ''140E0F0E141410111110141D14141514141D251A171717171A2520231E1E1E232028282525282832323032323B3B3B3B3B3B3B3B3B3BFFC00011080080008003012200021101031101FFC400910000020301010100000000000000000000000503040607''; ',
'    i(3) := ''020110000201030204020704080407000000000102030004110521061231411351142232617181C1072342914452627273A1B1D1152463E12533368292A2B201000301010000000000000000000000000001030204110002020104010403010000000000''; ',
'    i(4) := ''000000010211310312214151133242612271A191FFDA000C03010002110311003F00EA9451903A9AF25D075603E7401EA957141C68971FF6FF00F429919E01D6451F16148B8BB50B55D1E4852557965650A8A413B10C49C7C285903C705366C661E4FF00''; ',
'    i(5) := ''415A3AC7F03DFDB470CF0CD2AA3B10CAAC719006F4FF0050E20D2EC2D9EE259D0F2025501DD88FC22879018D1919C7715CCAF3ED3AE675956D545BB123C3CFAD8E5F6813EFAA36FC61A9FA58BA17456575E5C49ECFC3C8FB8D143A3ADD15CC74FE2BD5AD''; ',
'    i(6) := ''6E5247733000868CEEA416CFC88ED5B0D3F8B2CAE2106E3EEE43FABBA907A1F3145050FA8A4D73C57A4DB4A6299995C007A0E87B8DEA06E37D1867058E3E1FDE8A11A0A2B34DC77A58E88C7E62A27E3FD3C7B3113F3FF6A2981AAA2B1EFF006876E3D983''; ',
'    i(7) := ''3F33FDAA17FB465DB92DC6FE79A2805ED65C46C49F45988FDD342E8DC4926E2DA419FD6007F5AE8D453B039C0E1BE2493F472BFBC547D6AA6ABA06B9A74226B98FEE9885251836E7A038AEA54BB5F447D38871CCBE24671F060451B98CE70E8748D3DA59''; ',
'    i(8) := ''8817328DFA828ADF87DC6B2775A85C4AA6291CB286247CE986BB757135CCB1CCC485761D7DF4A046EC76527CEB366BE888BE362723B1EF409F2394F4ED9ED527A34C5B9421C9ED8AB36FA25F4E46232A3CC8C52724B2C145BC20B5D4E5460C0E181DE9EE''; ',
'    i(9) := ''9F7F15C480630B91965D9918F63FB27B1A4D26857B09C95CF7C8A96DE331CEACE1A2CFAAC41C75D8FCA929AE98DC64B28DD456D05C72DB5E278F08071274743E40F51FD29CC3C07A13A2C81E6756008F580D8FCAB033EA77366F1A2B09554679BA3820E7''; ',
'    i(10) := ''070771F4ADF7026B0350D3E587047A33FAB93BE1B7C7CAB7661961782340518F0DCFC5CD48383787C7E8E4FC58D3BA28B109D7847879463D101CF9B37F7AF6BC2DC3E3F428C91DCE4FD69AD140051451400550D6A38E4B06126C819598E71B29CD5FA55C''; ',
'    i(11) := ''539FF01BCC1C1F0CEE2931AC9CEEDB49835DD62E660B8B656259BCFCB14FD345D3ED139638976EE46F517084623D195B1EB3B3163F3C5329B2C0E2A332F11635AC01B21147CABC488AB561D4E6A09D0E6A0CBC4AEC88DD466A396C2DE64F5863E15ED811''; ',
'    i(12) := ''5247CC7D5F3A6872104F612CD72563C6DB1627A0FAD31E0B9CE9FC551C24315B8568863CFAE4F37C3B50394DD346DB0077A87918EB3653C039889D3192463046C4D74C1F08E49AE59D6E8A28AA120A28A2800A28A2800AA1AE056D32646D848393FF002D''; ',
'    i(13) := ''AAFD50D6D15EC4F3FB2AE8C40DB3CAC1B1FCA93C31ACA31DC3EC967A3734EDCABE2385F91C7D2A61AE58B9E45E7CF994603F3C559B38120D36232264F3CAF80327776D8521D52F35C13A8F428960277224CB28F79DB7F9542474450D5A40C39874EB54EE''; ',
'    i(14) := ''2E3D5CA8E66ECBE75369A5A7B76322F29233CA7720F96452F9DA55793C0C0900C465812A0F99C548B2EFE88A4BCD4013FE54728EE5A9868F7B1CD21B79E231BB0F51BAE0F952986DB54F58DCEA064240C058C6063AF5F3AB96F0DC06570C9CCA766195FE''; ',
'    i(15) := ''4738A769781536B9B435D47465103DDC4B878CE5BDEB4A34A758EF964950C88240E71D1429EA4D6E2D617B8B22926C654C1EF8C8ACCDD4296B34B6F11CFA3901DB18E62055A4F646D11D38FA93DACDCDA5DC37902CF09251BCF6208EC6A6A57C391F2695''; ',
'    i(16) := ''1B7694971F03D29A5522DB8A6FB23A8929C92C27C0514515A321451450014AB89E578345B89D3DA8B95C0F3C30C8A6B4A78A86787AFBF87F51498D64A520E6B58C28E55C7D696496A8CFEC83F1DEA7D3B534BFD16DEE011E272F2CAA3B3AEC73F1EB54BC''; ',
'    i(17) := ''79A4B908A70AA72D5CDA8B948EAD3E5365E112A40DCA31B525910A3E4ED9A67757B1451C8A10A96EE371FCA9149AB4C1CAC51E7B066C8ACC9748DC3B65B8E7B7762818161D6AC4491BBA827049D88A4C81412E767624E7DE6A7B7BAFBE404F43BD6769B3''; ',
'    i(18) := ''71A72BC2862E6E64EA9EEF3159A9966B9BC9A145D9D9FD71ED3316D94538D16F8CF71344770A7D5A6F69A2D95ACBE3282F2E490CC7A13E43A55DC77A8D61339E3A9E94A4DFB9AE09B4DB77B6B08207F691402076F7559A28AB254A8E76EDB7E428A28A62''; ',
'    i(19) := ''0A28A2800A57C5071C3F7DFC3FA8A694AF8A3FE9FBEFE11FEB40189E08859EDEFC8DC272311F98ABF7732D846D726369157D6654F688F215F3ECD0066BE52320AA023DD934CB56B3304C626198DBD643E6BE5F2A8EB2AFC917D197C58BA27BAD56CA2BAB''; ',
'    i(20) := ''7B5E586E17994330E7032460E3BED555F48D4F1CEB0A28E52C031C9D8F4F8D5F920B982157B0B992D8024945E564C9DCE5181A477DFE257788EEAFA6755CEC988C1E6EA08402B0D472CB477FC76D7F4ABAAFA5DADD25B878A47661944072177CB1DF6E95''; ',
'    i(21) := ''3222A4808EDBFCEBCC3630DAA16030C73EF3BF52C7BD496D0B4B20037E6358935D1B4BCB347C2B1133990FE2AD8D67F43856DE5483F18196F8F95682BA349544E3D67720A28A2A84C28A28A0028A28A002957149C70F5F9FF48D35A41C59A9D945A5CB6F''; ',
'    i(22) := ''32BCB14D88E531301CA09EEC41C50067BECC58FA45E2FF00A6A7F9D3CD56F9AF6E2E628C2FA3D8720E7FC4D2BE723E016975949A5E9361E269B17A3BCEB876662EC479966FA543C353ACD73A9DAC9BF8BC928F78C143F4A251B4D791C5D493F04F231317''; ',
'    i(23) := ''AA72A4528946189AB1A82DD584A63EA8DEC3763FEF4A279AECE761BF715C4EEE9F0CEE8555AE532C105CE09DCEC29CE976F0C00DC49D106547D6B2F14B70AFB2EFE677AD65B44F368EDCDB484669ACFF00453C7EF82EF0EDC78F772CEE7001CE7DD5A8EB''; ',
'    i(24) := ''B8AC8E8188BC283ABCF2631FB0BEB39FA559E18D625BAB39ED59B9AE74E9A481C75256362AA77F70AE8D1E6272EB7B8D2D14B86B11280651EA1DBC45DD73EFF2AB71DDDBCA328E0D5299326A28041E9BD1401813F6A1233F870E9BCEE4E154484927DC02''; ',
'    i(25) := ''53ED2F5AE20BC026BDD3E3D3ADBCE590994FC230A3FF006C54773AA2C249B78522C670E1403F9D20D4756964E62D29C9CF7DAB4A3E42CD06ADC4D6D0A940F8CEDB0AC3EAFC4707DE340D287618607014823BA906AA5F4BE2125A4CF97E74927E67748C9E''; ',
'    i(26) := ''6E660286E970091A517BCCBC83611AA2A8DF6C28DAA4D3F52165AB4174C796373E14C7F65F6CFC8E0D298A51CC4F6249FA0EF5F6EA40D0EE3AFC295F033A35D471CF198E550E8DD8FF005A4177A74D6E4B479962F2FC63E23BD4DC2FAB9BED2D165399ED''; ',
'    i(27) := ''FEE9C9EFCBEC9F98A64F1CAFD76ACCF4E335CFFA521A928631E0CD19631BE3A5314D4D61D3DF99B03181EE1562EB4786E72DFF002E53D1D7BFEF0EF4B34DD30DF4FCD33AB5AC0FEC2E4872A76CE7A2E47CEB9DE8C94A977D97F56328DBEBA343C310C981''; ',
'    i(28) := ''7F7039649801121EAB1F5FCDBAD63346D7DB4CE2FD4DB76826BA90B81E4CC4E6B7F1B98E39253B08D4E07BEB935E23C1C41739CE1F0DCDEF3BD7424A2925D1CD26E4DB674ED504A9FF0012D3889229579A6B73ECBFBC7EAB52B8B548E4065B3728C9BC90''; ',
'    i(29) := ''1D993E5E55574FD5A78ACE48428930A1BC33B86524648C77A526EACD75282705ADBEF007CFACA037AAC038EDFBC2B774628D7D9712E48576DFCE9B2EA50DCAF84EC4730C7AAC54FC994835CD659C73928D9193B8E86AED9EA4E3954B1D8EC73BD16828FF''; ',
'    i(30) := ''D9''; ',
'    l_blob := varchar2_to_blob(i);       ',
' ',
'    insert into demo_proj_team_members  ',
'      (  id ',
'       , full_name ',
'       , username  ',
'       , email     ',
'       , profile   ',
'       , photo_filename ',
'       , photo_blob          ',
'       , photo_mimetype      ',
'       , photo_last_updated ',
'      ) ',
'    values ',
'      (  10 ',
'       , ''Miyazaki Yokohama'' ',
'       , ''miyazaki'' ',
'       , ''miyazaki.yokohama@email.com'' ',
'       , ''My motto is to lead by example. I run a tight ship where everyone knows where we are heading.'' ',
'       , ''team_member_10.jpg'' ',
'       , l_blob ',
'       , ''image/jpeg'' ',
'       , systimestamp ',
'      ); ',
'     ',
'    -- Load Team Member 11 ',
'    i := j; ',
'    i(1) := ''FFD8FFE000104A46494600010100000100010000FFDB0084000C08080809080C09090C110B0A0B11150F0C0C0F15181313151313181712141414141217171B1C1E1C1B1724242727242435333333353B3B3B3B3B3B3B3B3B3B010D0B0B0D0E0D100E0E10''; ',
'    i(2) := ''140E0F0E141410111110141D14141514141D251A171717171A2520231E1E1E232028282525282832323032323B3B3B3B3B3B3B3B3B3BFFC00011080080008003012200021101031101FFC4008F0000010501010100000000000000000000050102030406''; ',
'    i(3) := ''0700081000020103020304070504090500000000010203000411052112314106135161222332718191A1071452B1E14292B2D11516336282A2C1F0F124253472D20100030101000000000000000000000000000102030411000202020203000300000000''; ',
'    i(4) := ''000000000001021121310312224151617181FFDA000C03010002110311003F0039939A424F8D2F53498AC0D469CF8D46C4E0EF52106A36077A0656958E0EF55A063DF9DEACCA2ABDBA335D600DBA9F0A4B636178C9E21EEA7B64A36F5E86091B040DB1CE''; ',
'    i(5) := ''A416D338655524D6841A5D37FF000A1FFD455850C06E686C77D1D958A09012EA02F08F1A8E4D797BAF571979BF09D803E66B5320AB48AAB963803A9A1977AE41192B09EF1BC472ACC6A47B417F2112CA047CC449955FD6870D3F54032B9F9D4393F48A4B''; ',
'    i(6) := ''E9A49AFE59CE646DBC072A609C78D678DB6B71E3009CF9D2675D519EE891536FE32B06904A3C69CB20F1ACC8BCD6154936EE71D40A60D63515DDAD9F03C8D1DBF0180E75A5A4EA696A4A10D46D4F351B52023484CD27760E09E5F0E744EC7474477623DB''; ',
'    i(7) := ''00EFBE06738AA568BC3711CDCD51C7111D01E746EE6F22B6B70388271AE50F4DAAA096C526F48ABA96A969A7621247101C58E671F0F1AA4FDA18A3B569514A9DB3E3BE71E3E140755963BBBB49525E2915830C024EC796DD3DF4A96B031658662CA41564''; ',
'    i(8) := ''6C865E2DC73F03CA9B9FC1288FD47B5F2DB81DDE2573B9076037C73ABFA7EB62EE352F1E24382DC3B9DFE5F2ACAB691713DF157C844D80181D73CAB4169A5359A02D2388F18381B8F8834BB32BA9A18F0CC48E58EB4917B3556D3822546825EF5399C9C1''; ',
'    i(9) := ''19E791D6ADC4C8C5B87A1E5571764B458C03C3EEA5455E11B520E4BEEA747ECFC6A891D146A51B6A54862EECFA22961F65A9C87D5D3100FAD7A933BD7B3581A886A334F634C3D69302F6924012B01C4CAA763D7341B59BD796E58B0181B2273A2297A2D7''; ',
'    i(10) := ''4DBA9387F0A291CF89B90FA134122EF1905CCC32EE7D13E18A272A860AE38F690C83449A7713C87849DFCE8B45A680E3BC3C6DECE4F3C799A4B59C95C0157637EA40C63C6B9D4ECE8714BD093E9F0B11E86F8F6B9D5730C683824C61B62576A231CE4A8C''; ',
'    i(11) := ''E36DB9D32548DC10C39D5B78C1096728CEDD8FB84D1C81BD51380C3903E144ACA4992E56451C514E012390C9EA0D2DDD8C73C0D10DB3C874CD47A3319ACDA23ED439F448E5C3B7D6AB8A4C8E58A5A0FA8D852C7B0F8D36160F1238EA338A7272F8D751CE''; ',
'    i(12) := ''491726A54FECE922E6D4A9EC1A6201E37AF629B9DE96B9CD4F114C2295A999A00B96F0C72E93725972636E203C4F0E07E74366B76FB95B3630AA0E4F21CE8C696A1B4DBCDF2572787FC3B1FA566FB52CF0CB0DBF7A6182DE15E3C7E26DCD39AF0FDAA2B8''; ',
'    i(13) := ''DF9FF6C23692DB210BC684F87335782C2573B0FD6B9BBEA1696D70122697BCC839707193BD6ABB397F71A8ABA2F38BDA279561D1C7D1BF6EDEC3B1B5B21C49C200E64D48ED038CC4EA479500D5EE2042C27DC8E6A3F4A19A76A7A61BA284BC3267077FCF''; ',
'    i(14) := ''7A2AD684F7766ACE78A99A7DB325C4E53D9719C7BCD2AE70003C58DC378E6A5B6668C81CB7CE7DDD29F12F22395DC4BB6A9DDC7C19CE09E5C8795489D7DF4D80E501F1269CBD7DF5D6B48E664B10F49ABD1FB2D5E8FDB6F75793D935420075A5CD373B9A''; ',
'    i(15) := ''535CECD446E54CA7B62A3EB4022CE8F76CBA9AD9A8F55342DDE93D5B24AFF0D05D62DD350D4E5330668D589E11B648D864F955D82E60B6D66C647382A198FF0089BBBFA0A6DF4C23D4678D40C719C1F8D4CE550FD3358457658DC4193F672C27F5850F78''; ',
'    i(16) := ''060396DFE945FB31671D95ACC918E6725CF33B62A2BA9D1620AAC10BFED78789A974CD42CD331249946042B673CBAE6B3ECDFB3571493C135E68D6B74E676525F6C8CE320552FEAAE9B2DC3DCB2BA4CFB96D88CF88A356F730BA8915C3467F69771F4A95''; ',
'    i(17) := ''B857D24E4798AA4F043D94EDE0EE235873C4B18C063D4530C8EC244887AC0D95CEC370399A9E6938467C6AACAAE21EF01E0E39151BC873A852A6E86E3749FB614D3EE229A1C2307689B8242397175C55853BB0F3AA3A35A8B6B77EA6599DC9F79DAAE03E''; ',
'    i(18) := ''9B0AEC836E116F7472F224A724B49922B62423C45393D96A8C1F59EF14F4E46AC833F9049C10690CB12F3751EF602B9B99DB2C38C8C9DF73E351B4A08C1DCD65D0BEC7496B9B61CE68FF00797F9D33BF83A489FBC2B9BF783AED9FF9A5E303AE71D3FDF9''; ',
'    i(19) := ''D1D3F21D8DD6A72C620EF51E32E08518C160325BE46BDAAB96D4D9872238C9F7E2B0EB3BA86EEC940460F0F515BCB98809125971BC08CD8F101723E7513878BFE1AC392DAFAACADA8AE2C89CFA6E3047509FA9A09A77791CA2DD5B2B3B7060E36F134977''; ',
'    i(20) := ''717935CB90155338532677F3AB5A6DAEA8A43412D9E49C8673B839E9B564960DBC99AAD22D60B6B6781482B273D82A83FDDC72AB28CEB989CE5936CF88E8684A2EB2A8415B699B1906272873E182B8A256EED3431CCFB3F0F0BAF518A4C594F3EC7CBBA6''; ',
'    i(21) := ''4FC29C908923591D4B2A9E244F127A9A8E670A8491B01922B0F75DAED4A5B396D158223B11DE8CF1F067D918E5E19A708393265351DB3A3BDDDB5959ACD7522C31AF36638DCF878D66EFFB7D670BB7DCE069CF20EE7817E5CEB052DE4AE305D8E3C4E7F3''; ',
'    i(22) := ''AACF2B3733BD76691C976ECDAAFDA0EA6D3822DA1E1E5C3E979733C5D7956A7B39DA4B5D6E291554C1770FF6D6EC7240FC4A7AAD729B32E093CF20EDB7BF3F0C7D28B767AF5ED7B556732E51669442EBCBD171DD918DBAE284C006EE788FBCD34BF88A57''; ',
'    i(23) := ''D98FBCD3581EB4804E3F7D7B8CE2931B57B18A009AD834B71145CBBC754FDE2056D92EFEF4B716FCBB9909561CFBB76FF423EB403B1DA4FF0048EAC24907FD3DA0EFA527916E51AFC5BF2AB305D9B1D4668AEC70E43C4EDD373B1FF5ACF92F1F1DD9B712''; ',
'    i(24) := ''552FB8A0D5DE946E1477785C6092D9C63EB56ADB4431A8512C6CBCF707355A3BD7781042C1BA646F91E5562DB519B0015E59F98E958CA2D68D632C642D6D68D17A200C1E646F4E9156397854FB5BE292DAEF8E30DC97A93542E6F95262788176D9533923''; ',
'    i(25) := ''CE8EB4856DBA22ED05F7DDF4FB871EDF76D8F2C8C0FCEB99C921E1553BEF9AE9375A15DEA7613F7A4C31B2973236C4F08E201579F4EB5CC1DB2C0F956DC516936D55B32E66AD24EE90FC9C578649F752676A55E75A1897ED98C68CF9C708246FBE790FAF''; ',
'    i(26) := ''E95369619F5ED3D4678BEF3080080B8F497A0C81502FA3110C41CE063AFC3E03F21E344FB1B6E6E3B5764A3D2489DA638181845241C74DF1401A68BECAC193371A8FA39C911C401F9B31FCA8A43F671D9A89712A4D70DF89E423E9185AD412739A50734E''; ',
'    i(27) := ''8A31B79F66BA0C9BDBC9716DE418483FCE33F5A1D75F66F6283D55E4E3CD915BE8386BA195CD67FB41AC5EDB2B5AE8F6AD757C7632953DCC39EAEDC99BFBA3E345060ADA669BA3F6574B31CF7186B96EF19E5C71B9C602AA28E238AC5F68750B2BCBCEF6''; ',
'    i(28) := ''D15959766EFD781241E5D411E74FB6B2B86B996FB51B937370DB493925863AA29FE550EAB2D93C2D146849E8D8A9924F1B1C64D6B03ACED75065E34B66891B054F1AF09F318CD16B55BD2EB10396F02C5BF9505ECD6AAD0CFF00D1F3E4DB487D5B9E51B7''; ',
'    i(29) := ''FF0026B75636622264E1DFA50B8D21BE46C4B7D325740B752B153FB2A787F8688D9D85A407D4C2A87AB637F9F3A582DA57391F5ABD0C0CBCC6F5692F4896DFD21BF5FF00B7DC8EBDCC9FC26B830DEBE829A3E38991B9302A7E3B5712D63B35AC68D70F1D''; ',
'    i(30) := ''DDB3F74A7D0B8505A2607961C0C7C28648300A9A3504EFCBFDFF00BFF8A6AC6E7F64FCAA68E27E8BF31450136400BCD82FA5C3B74CE31CFC76FD456AFECC6CCC9A8DEDF30C8862112B1FC521E26FA2D646657008C631C86373E39F9EFF002E95D3BECFF4''; ',
'    i(31) := ''E365A046EE3125DB19DBC707D14FF28A407FFFD9''; ',
'    l_blob := varchar2_to_blob(i);       ',
' ',
'    insert into demo_proj_team_members  ',
'      (  id ',
'       , full_name ',
'       , username  ',
'       , email     ',
'       , profile   ',
'       , photo_filename ',
'       , photo_blob          ',
'       , photo_mimetype      ',
'       , photo_last_updated ',
'      ) ',
'    values ',
'      (  11 ',
'       , ''Bernard Jackman'' ',
'       , ''bernie'' ',
'       , ''bernard.jackman@email.com'' ',
'       , ''I am a great believer in the fact there is no "i" in TEAM.'' ',
'       , ''team_member_11.jpg'' ',
'       , l_blob ',
'       , ''image/jpeg'' ',
'       , systimestamp ',
'      ); ',
'     ',
'    -- Load Team Member 12 ',
'    i := j; ',
'    i(1) := ''FFD8FFE000104A46494600010100000100010000FFDB0084000C08080809080C09090C110B0A0B11150F0C0C0F15181313151313181712141414141217171B1C1E1C1B1724242727242435333333353B3B3B3B3B3B3B3B3B3B010D0B0B0D0E0D100E0E10''; ',
'    i(2) := ''140E0F0E141410111110141D14141514141D251A171717171A2520231E1E1E232028282525282832323032323B3B3B3B3B3B3B3B3B3BFFC00011080080008003012200021101031101FFC4008C0000010501010000000000000000000000050002030406''; ',
'    i(3) := ''01071000020103030204050204050500000000010203000411051221314106132251143261718123914252A1D1336282B1C124437292E1010003010101000000000000000000000000020301040511000202000601040203000000000000000001021103''; ',
'    i(4) := ''12213141510413226171429181A1C1FFDA000C03010002110311003F00F4C906086A89FDEAC30CAE2A16195FB506A20BB5DF6E71D46686432EF8C73EA1C1145F1BA365A01223ACF228E306925C1A896E9FD21077E6A389F1DEB8B1B39CB734E4F2C1C938''; ',
'    i(5) := ''00E327DE919A895739C8C9A64D1CDF15130076AB0CFE6A482E2D55F707DC54F4FAD4925F990670AA53920F6FB7DE8CCBB372BE8B762A7E318F6087FDE89567A2D60C12B4AA9E6C7260103AAFE6AE41AEC37120445C0DFB4B139E338AAC649EC2CA2D6E15''; ',
'    i(6) := ''A55041796F3BBA44E19E23871DC54D5A29DA54A9500707071513839A949C1149C71401DA8CAF352D35FB1A00882D08B88C0BB6CF19C5196E0D0BBE65F3095E4E3FDA927A21A3B95DA48E3CE78C7BD67F57D46340DB080D9C9008E4549AB5DCD1C6431E0E''; ',
'    i(7) := ''7F1590D42E965C7661C13EFF005A9A4E4574885AD7C482271BD46C2C71EC0D5CBAF114623F321DB8E9264E0F4F49158DDCA23C364E79C542D2480FF97B56FA4AC33B35ABE2771179301246E258B003239E33F4A1F71A8BC444F6D336490CD9E39CE791DE''; ',
'    i(8) := ''8089C8E471DAA659464338CE3A532856A8572BDCD7E8BE2D961959DC65E4237B038EBD4B7BD6F34DD6AD2FC058D879873C020F4AF1469B0095E828B683ACCB672968F196F4E4F38FB535B5B8B953D8F66AED0DD0F518EF6C6260D99146D704E4E477A234''; ',
'    i(9) := ''C9D8822334ABB485002AE1E95DA6B8C8A008A724AFA3E6A0BA9CA3CB63228DC01E41F6157F509668D7F4B918F50C73F8AC8EB1AA048D9655241E036EC102A588F82B86B9333AAEB32B4CE80E4741FBD54B0D36EF5594AC2A485E59BB0AAB74C5E462A0E0''; ',
'    i(10) := ''9E09EF5E9BA0E95169FA5450A8FD475DF2BF7248CD6D52A41BBD763212787553E76CB01CD529F4950719AD8EA117522825D2F3C8A867927B9D6A116B64679F4BFE5E0D30E9F70A870A5A8EA440B0A256F6F116000C922B7D5921258313052C840319183D''; ',
'    i(11) := ''E9F0484631C11D28CF8A34D48409D46D6271C504894E3918C77ABC64A51B39A51CB2A3D17C017D2B4DF0EFEA420B06CE31F73ED5BF15E43E13D452DAE76CC1CC4E307676E41FF8AF55D3E7866B6530E422F183FDEB63D0B3DECB54A952A61455C63815DA''; ',
'    i(12) := ''6BFCA6802ACE88E0871902B23E21481A376C1057E5F63F7AD8AFA9B06B37AE58C72C721CAEFC92B93939FA8A8E2F0CAE17279EBA179977F765CE7B02715EA850470281D940FE95E597DFF4D2AA39FD66E76F3CE0E3FDC56D2EFC4EDE447F036B34EC5402''; ',
'    i(13) := ''5D4A007F6269F80E6892F6542C57A505B93926AADC6BF77E6EEBBB46857DF07FB526D5AC0A643E4B741839CFDAB9E5095EC75C271ADFF67577678ABDA6976B80A7BF4FC567E6BFD464602DA27C1E41DB91FB9E2A6B1D435A826591EDDA6507951B41FC73''; ',
'    i(14) := ''5BE9BED7EC57889F0FEE825E318775BC7C746EB593D840C8E4FB568F52D49F58963B086DE586E98F0B2E00E84F247DAB3F708F1B98E45F5AB61B1D38AAE1A695339E6ED843414737F0A2BAAB48C0296E809F7E0D7B0E9A245B55494A965EEB8231F80057''; ',
'    i(15) := ''947856DE33A9C0673B630D93819CD7AD59AC6B1663E14F4E7B76A68EEC49F058A54A953882A6499C714FA6BFCB40114609249ED426FA2DD23BA8CF07F87A1CF7A319DB1B37D284191B21981C39E47BD2622B43C254ECC96A7A2B49ADE9D13B836F70C51F''; ',
'    i(16) := ''0A0306C963EAC67041E28ADF406DA336D02E577A8695D802A01EC3A9AB7ACD8B5D247E548D0BC53218A54C655F2023107A81CD09F120D506D5996DE665382D1974CFD76B06C7EF53AD35E0B47755F95B74069AEAE44DE590C12400A230C919EA73FCB40A''; ',
'    i(17) := ''4B23E47C61188BCC668D47740719AD0596977FA8C8624C4509216690649087A8CF62454DA9DA869440802C318D9181D028E05666AD57253266F6BB79573F20BBDB96987E936D898ABC2A47001EA09F63DAA4B5925888732271C85C1249F618E2A8B5A5ED''; ',
'    i(18) := ''BB7E9B0F273B5370C819ED9157A187513B63DF120CF5D85BAFFAA86D715A828BAD6F40A58593EA1E21B69C66216B6FE6C8ABD198B1540DF4E4D52BEB45175E42FA6EE55790EE1C33EE3E95FBE2B59E1ED3BE0E392692569E7B8DBBE470070A30A8AABC05''; ',
'    i(19) := ''19A0F242BAA6B2E546F8ED4FE973B71286FA7247A6B1BD8582599B655F0ED9B0B88A2DA18BF42067031D71F9AF48B68041108C12D8EE7AD0ED2B4AB68C094A7A8105474E7DE8BD5B0E35ABE4E7C4926F4D854A952A71054C734E2714D1C9A0082F6431DB''; ',
'    i(20) := ''311D718FDE87E0B46A08AB7A93FCB1FB9C9FC557C12005A591A862AC6F8494164C8FE8723F6A13E225F5838C924E07D68B7953EEE14FED506A768F240599487C12B91CF4A8CE3ED68BE0CEA6ACCA41AAC16D1C91F9C56390E5C26776471C1C550BDF1189''; ',
'    i(21) := ''15E3446DC0EDDC38623F9BA55DD1EDF55B5B591C6D92CD49F322C289327BABE33564CDA04872E6747C1DC3673C74F528A5A54B4CDFC9D55276DBAFA8D99C3AC8963114D9D8A77608E723DCD13B29E39CA18DB774E299753ABA325840C49EAF3052071CF1''; ',
'    i(22) := ''CD73C3F62639CB30F94E73D064D124AAF6F816E49B4F55DB546E6CC858D53D80EBEF5774CD06CAC3128F5CED92D27D4F27140A6BD16F6373724FF851B3FF00EA3354F50D59DF4B32063E5BC4AC003C8DC38E9EC6AB8294AFE0E4C66E2EBB376060002BB5''; ',
'    i(23) := ''89D1BC5CABA646D34F89117D608DDF2F07AD72CBC757B7D7170B1A2470C28591B196247BD5F2B2366DEB8C70A4D07D13C496DA9DB6F7C47321C4807201F7A2EC432654E41EE2959A84F5C4EE69C466A26BAB68DC46641BFB81CE31EFED4014AE21633497''; ',
'    i(24) := ''13FA2DE15C973EC3938ACB0D66E758D5174EB4B816509279048381CF2472C6ADF8BBC42935BB59599CA7FDD907723F8456374C9BE17508A7233B7713F5F4914D155F6FFA069B3D06D6E23DD2C96C5BC98066E2F1F991F1FC31FB6686695AECB35D6A53DD''; ',
'    i(25) := ''B6E8C491AAC7D955996318FB03402E75CBAB889A356F2E1639F2D385A658D86A13497B14313959E20F1CA46D8F7020E0BB617B512A699B18D51B06896D5E54C7E9484F3DB359AD42748A7F23E1F927E7078C7ED46E6BDB58E15F88B8569D9479D0C5FA80''; ',
'    i(26) := ''3639C3F0B412E278EE64DBBF613D24619FB020570C953D36EBA3D2C29B4ADDA7DF646D34691945032C3E51D6A7B17548307873CB2F719AA17969756D189616F383B6CDD8C6382411827DAADC2A23801CFA88F51F73471BD8B26E52DB425BFB863A3EA1BB''; ',
'    i(27) := ''A7C3C800FBAD67DAF49F0F5BE4F3E52C67FD2C6ACEBF7E20D2A6841F5CE3601F43D684DE0F2F4CB1B61F338C91F9CFFCD7478A9D49F67279559A28884EC96EB083FE21DEFF006EC2ADE9D72F6E2461D1B87EFC50E5219D9FA81C2FD87156603E920F735D''; ',
'    i(28) := ''04033A4EA46D2E5A643B436720F008F6AD1699E2478D8867CAE73F6AC623050475ED4EF33D4A0707B9A0C68F4FD52F049A5CF756D3348832F83E929C81B48F6AC8DC6A173244803968F9214703279ABD7F79E419217C9B7986D940FA746FC50892DFCBB6''; ',
'    i(29) := ''6C10CAAE0A30E855875AD94696810D5EA5794EF560D9C91D68786659918F2030FEB5755C8241FB543247BD4638CF0290ABD82BE18B48A6D465927C186CA3795C30C8C8E138EFC9CD49717B14B293309A519E374B8FE81689F8534E3269778EDE937722C7''; ',
'    i(30) := ''BFFCB12F3FD5A856AF05B4374F142A7647C724927EA6B9BC86ED7474F8ED53EFFC2098C121F4218D7EAE4FF6A87C8B7CE73CFF00E47FBD4423B7CE78FC9FFED744168E707613F7A896B082C8D6B1C1363CCB5998C7321390187231ED91D299A9B1B47DB9''; ',
'    i(31) := ''CA30DF1B7BA9E86ADD8C51ADAFC2BA80B74AE1549C8DE9828C33D39ACBEADAC49791C302A05F2772A8072C4B11FDA9A31BD0CB4AD94AEE492FEF52207233934FD525DD7BB47CB6D1851F72314D884D67776D1C637CD21DF7000C9C7F2FE055766323339E''; ',
'    i(32) := ''B2B96FC0E95D9871CB1A3831659A563E0004407B55A8F85E3DEA0897D247D6AC2F0BF6F6A7429301CF5C52895A49D5179624018F73C5461BA9F6A7C570F6B878C0F39F3B58F3B4742C07BFB56D18CFFFD9''; ',
'    l_blob := varchar2_to_blob(i);       ',
' ',
'    insert into demo_proj_team_members  ',
'      (  id ',
'       , full_name ',
'       , username  ',
'       , email     ',
'       , profile   ',
'       , photo_filename ',
'       , photo_blob          ',
'       , photo_mimetype      ',
'       , photo_last_updated ',
'      ) ',
'    values ',
'      (  12 ',
'       , ''Harold Youngblood'' ',
'       , ''harry'' ',
'       , ''harold.youngblood@email.com'' ',
'       , ''Providing I have my soy latte, falafel, and my MacBook - Bring It!'' ',
'       , ''team_member_12.jpg'' ',
'       , l_blob ',
'       , ''image/jpeg'' ',
'       , systimestamp ',
'      ); ',
'     ',
' ',
'    --*******************************************-- ',
'    --*** Load Projects, Milestones and Tasks ***--  ',
'    --*******************************************-- ',
'    -- Need to insert a project and all of its releated child records at once and then move to the next project ',
' ',
'    ----------------------------------- ',
'    --<< Determine the data offset >>-- ',
'    ----------------------------------- ',
'    l_add_days := sysdate - to_date(''20150101'',''YYYYMMDD''); ',
' ',
'    -------------------------- ',
'    --<< Insert Project 1 >>-- ',
'    -------------------------- ',
'    insert into demo_projects ',
'      (  id ',
'       , name ',
'       , description ',
'       , project_lead ',
'       , completed_date ',
'       , status_cd ',
'      ) ',
'      values ',
'      (  1 ',
'       , ''Configure Web Development Tool Environment'' ',
'       , ''Determine the hardware and software required to develop with Web development tool.'' ',
'       , 13 ',
'       , to_date(''20141205'', ''YYYYMMDD'') + l_add_days ',
'       , ''COMPLETED'' ',
'      ); ',
' ',
'    -- Insert Tasks for Project 1  ',
'    insert into demo_proj_tasks ',
'      (  id ',
'       , project_id ',
'       , assignee ',
'       , name ',
'       , description ',
'       , milestone_id ',
'       , is_complete_yn ',
'       , start_date ',
'       , end_date ',
'      ) ',
'    values ',
'      (  51 ',
'       , 1 ',
'       , 13 ',
'       , ''Identify Server Requirements'' ',
'       , ''Determine which databases will be used to install Web development tool for Development, QA, and Production.  ',
'          Also specify which Web Listeners will be used for the three environments.'' ',
'       , null ',
'       , ''Y'' ',
'       , to_date(''20141201'', ''YYYYMMDD'') + l_add_days ',
'       , to_date(''20141202'', ''YYYYMMDD'') + l_add_days ',
'      ); ',
'',
'    insert into demo_proj_tasks ',
'      (  id ',
'       , project_id ',
'       , assignee ',
'       , name ',
'       , description ',
'       , milestone_id ',
'       , is_complete_yn ',
'       , start_date ',
'       , end_date ',
'      ) ',
'    values ',
'      (  52 ',
'       , 1 ',
'       , 5 ',
'       , ''Install Web development tool'' ',
'       , ''Install the latest version of Web development tool from the vendor into the databases for Development, QA, and Production. ',
'          Note: For QA and Production, Web development tool should be configured as "run time" only.'' ',
'       , null ',
'       , ''Y'' ',
'       , to_date(''20141203'', ''YYYYMMDD'') + l_add_days ',
'       , to_date(''20141203'', ''YYYYMMDD'') + l_add_days ',
'      ); ',
' ',
'    insert into demo_proj_task_todos',
'      (  id',
'       , project_id',
'       , task_id',
'       , assignee',
'       , name',
'       , description',
'       , is_complete_yn',
'      )',
'    values',
'      (  1',
'       , 1',
'       , 52',
'       , 13',
'       , ''Download tool from vendor''',
'       , ''Download the latest available version of the Web development tool from the vendor site.''',
'       , ''Y''',
'      );',
'',
'    insert into demo_proj_task_links',
'      (  id',
'       , project_id',
'       , task_id',
'       , link_type',
'       , url',
'       , application_id',
'       , application_page',
'       , description',
'      )',
'    values',
'      (  1',
'       , 1',
'       , 52',
'       , ''URL''',
'       , ''http://Web-tool.download.com''',
'       , null',
'       , null',
'       , ''Fictico'))
);
wwv_flow_api.append_to_install_script(
 p_id=>wwv_flow_api.id(19100931008454606173)
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'us download page for Web development tool'' ',
'      );',
' ',
'    insert into demo_proj_task_links',
'      (  id',
'       , project_id',
'       , task_id',
'       , link_type',
'       , url',
'       , application_id',
'       , application_page',
'       , description',
'      )',
'    values',
'      (  2',
'       , 1',
'       , 52',
'       , ''URL''',
'       , ''http://Web-tool.install.com''',
'       , null',
'       , null',
'       , ''Ficticous installation guide for Web development tool'' ',
'      );',
' ',
'    insert into demo_proj_tasks ',
'      (  id ',
'       , project_id ',
'       , assignee ',
'       , name ',
'       , description ',
'       , milestone_id ',
'       , is_complete_yn ',
'       , start_date ',
'       , end_date ',
'      ) ',
'    values ',
'      (  53 ',
'       , 1 ',
'       , 12 ',
'       , ''Configure Web Listeners'' ',
'       , ''Configure the three Web Listeners for Web development tool to support the Dev, QA, and Prod environments.'' ',
'       , null ',
'       , ''Y'' ',
'       , to_date(''20141203'', ''YYYYMMDD'') + l_add_days ',
'       , to_date(''20141203'', ''YYYYMMDD'') + l_add_days ',
'      ); ',
' ',
'    insert into demo_proj_task_todos',
'      (  id',
'       , project_id',
'       , task_id',
'       , assignee',
'       , name',
'       , description',
'       , is_complete_yn',
'      )',
'    values',
'      (  2',
'       , 1',
'       , 53',
'       , 12',
'       , ''Download Web Listener from vendor''',
'       , ''Download the latest available version of the Web Listener from the vendor site.''',
'       , ''Y''',
'      );',
' ',
'    insert into demo_proj_task_links',
'      (  id',
'       , project_id',
'       , task_id',
'       , link_type',
'       , url',
'       , application_id',
'       , application_page',
'       , description',
'      )',
'    values',
'      (  3',
'       , 1',
'       , 53',
'       , ''URL''',
'       , ''http://Web-Listener.download.com''',
'       , null',
'       , null',
'       , ''Ficticous download page for Web Listener'' ',
'      );',
' ',
'    insert into demo_proj_task_links',
'      (  id',
'       , project_id',
'       , task_id',
'       , link_type',
'       , url',
'       , application_id',
'       , application_page',
'       , description',
'      )',
'    values',
'      (  4',
'       , 1',
'       , 53',
'       , ''URL''',
'       , ''http://Web-Listener.install.com''',
'       , null',
'       , null',
'       , ''Ficticous installation guide for Web Listener'' ',
'      );',
' ',
'    insert into demo_proj_tasks ',
'      (  id ',
'       , project_id ',
'       , assignee ',
'       , name ',
'       , description ',
'       , milestone_id ',
'       , is_complete_yn ',
'       , start_date ',
'       , end_date ',
'      ) ',
'    values ',
'      (  54 ',
'       , 1 ',
'       , 11 ',
'       , ''Configure Web development tool Instance Administration Settings'' ',
'       , ''Set the appropriate security and configuration settings for the development instance using specified tools. ',
'          Also set instance settings for QA and Production using the available APIs.'' ',
'       , null ',
'       , ''Y'' ',
'       , to_date(''20141204'', ''YYYYMMDD'') + l_add_days ',
'       , to_date(''20141204'', ''YYYYMMDD'') + l_add_days ',
'      ); ',
' ',
'    insert into demo_proj_task_links',
'      (  id',
'       , project_id',
'       , task_id',
'       , link_type',
'       , url',
'       , application_id',
'       , application_page',
'       , description',
'      )',
'    values',
'      (  6',
'       , 1',
'       , 54',
'       , ''URL''',
'       , ''https://Web-tool.admin.com''',
'       , null',
'       , null',
'       , ''Ficticous administration guide for Web development tool'' ',
'      );',
' ',
'    insert into demo_proj_tasks ',
'      (  id ',
'       , project_id ',
'       , assignee ',
'       , name ',
'       , description ',
'       , milestone_id ',
'       , is_complete_yn ',
'       , start_date ',
'       , end_date ',
'      ) ',
'    values ',
'      (  55 ',
'       , 1 ',
'       , 5 ',
'       , ''Define Workspaces'' ',
'       , ''Define workspaces needed for different application development teams. ',
'          It is important that access be granted to the necessary schemas and/or new schemas created as appropriate. ',
'          Then export these workspaces and import them into QA and Production environments.'' ',
'       , null ',
'       , ''Y'' ',
'       , to_date(''20141205'', ''YYYYMMDD'') + l_add_days ',
'       , to_date(''20141205'', ''YYYYMMDD'') + l_add_days ',
'      ); ',
' ',
'    insert into demo_proj_tasks ',
'      (  id ',
'       , project_id ',
'       , assignee ',
'       , name ',
'       , description ',
'       , milestone_id ',
'       , is_complete_yn ',
'       , start_date ',
'       , end_date ',
'      ) ',
'    values ',
'      (  56 ',
'       , 1 ',
'       , 12 ',
'       , ''Assign Workspace Administrators'' ',
'       , ''In development assign a minimum of two Workspace administators to each workspace. ',
'          These administrators will then be responsible for maintaining developer access within their own workspaces.'' ',
'       , null ',
'       , ''N'' ',
'       , to_date(''20141205'', ''YYYYMMDD'') + l_add_days ',
'       , to_date(''20141205'', ''YYYYMMDD'') + l_add_days ',
'      ); ',
' ',
'    -- Insert Project Comments for Project 1 ',
'    insert into demo_proj_comments ',
'      (  id ',
'       , project_id ',
'       , comment_text ',
'      ) ',
'    values ',
'      (  1 ',
'       , 1 ',
'       , ''We have decided to use the Web Listener included with the database for Dev Only and a separate Web Listener for QA and Prod.'' ',
'      ); ',
'    update demo_proj_comments ',
'      set created = to_date(''20141202'', ''YYYYMMDD'') + l_add_days ',
'      where id = 1; ',
' ',
'    insert into demo_proj_comments ',
'      (  id ',
'       , project_id ',
'       , comment_text ',
'      ) ',
'    values ',
'      (  2 ',
'       , 1 ',
'       , ''Installed latest version of Web development tool.'' ',
'      ); ',
'    update demo_proj_comments ',
'      set created = to_date(''20141204'', ''YYYYMMDD'') + l_add_days ',
'      ,   created_by = ''MEIYU'' ',
'      where id = 2; ',
' ',
'    insert into demo_proj_comments ',
'      (  id ',
'       , project_id ',
'       , comment_text ',
'      ) ',
'    values ',
'      (  3 ',
'       , 1 ',
'       , ''Installed latest version of Web Listener in QA and Prod environments'' ',
'      ); ',
'    update demo_proj_comments ',
'      set created = to_date(''20141204'', ''YYYYMMDD'') + l_add_days ',
'      ,   created_by = ''HARRY'' ',
'      where id = 3; ',
'    commit;',
'',
' ',
'    -------------------------- ',
'    --<< Insert Project 2 >>-- ',
'    -------------------------- ',
'    insert into demo_projects ',
'      (  id ',
'       , name ',
'       , description ',
'       , project_lead ',
'       , completed_date ',
'       , status_cd ',
'      ) ',
'      values ',
'      (  2 ',
'       , ''Train Developers on Web development tool'' ',
'       , ''Ensure all developers who will be developing with the new tool get the appropriate training.'' ',
'       , 1 ',
'       , to_date(''20141220'', ''YYYYMMDD'') + l_add_days ',
'       , ''COMPLETED'' ',
'      ); ',
' ',
'    -- Insert Milestone 1 for Project 2 ',
'    insert into demo_proj_milestones ',
'      (  id ',
'       , project_id ',
'       , name ',
'       , description ',
'       , due_date ',
'      ) ',
'    values ',
'      (  11 ',
'       , 2 ',
'       , ''Train the Trainers'' ',
'       , ''Rather than all developers being trained centrally, a select group will be trained. ',
'          These people will then be responsible for training other developers in their group.'' ',
'       , to_date(''20141211'', ''YYYYMMDD'') + l_add_days ',
'      ); ',
' ',
'    -- Insert Tasks for Project 2 / Milestone 1 ',
'    insert into demo_proj_tasks ',
'      (  id ',
'       , project_id ',
'       , assignee ',
'       , name ',
'       , description ',
'       , milestone_id ',
'       , is_complete_yn ',
'       , start_date ',
'       , end_date ',
'      ) ',
'    values ',
'      (  57 ',
'       , 2 ',
'       , 6 ',
'       , ''Prepare Course Outline'' ',
'       , ''Creation of the training syllabus'' ',
'       , 11 ',
'       , ''Y'' ',
'       , to_date(''20141201'', ''YYYYMMDD'') + l_add_days ',
'       , to_date(''20141205'', ''YYYYMMDD'') + l_add_days ',
'      ); ',
' ',
'    insert into demo_proj_tasks ',
'      (  id ',
'       , project_id ',
'       , assignee ',
'       , name ',
'       , description ',
'       , milestone_id ',
'       , is_complete_yn ',
'       , start_date ',
'       , end_date ',
'      ) ',
'    values ',
'      (  58 ',
'       , 2 ',
'       , 6 ',
'       , ''Write Training Guide'' ',
'       , ''Produce the powerpoint deck (with notes) for the training instructor.'' ',
'       , 11 ',
'       , ''N'' ',
'       , to_date(''20141206'', ''YYYYMMDD'') + l_add_days ',
'       , to_date(''20141208'', ''YYYYMMDD'') + l_add_days ',
'      ); ',
' ',
'    insert into demo_proj_task_todos',
'      (  id',
'       , project_id',
'       , task_id',
'       , assignee',
'       , name',
'       , description',
'       , is_complete_yn',
'      )',
'    values',
'      (  4',
'       , 2',
'       , 58',
'       , 6',
'       , ''Review the online examples hosted by the vendor''',
'       , ''Run through the numerous examples available from the vendor to get course content.''',
'       , ''Y''',
'      );',
' ',
'    insert into demo_proj_task_links',
'      (  id',
'       , project_id',
'       , task_id',
'       , link_type',
'       , url',
'       , application_id',
'       , application_page',
'       , description',
'      )',
'    values',
'      (  7',
'       , 2',
'       , 58',
'       , ''URL''',
'       , ''https://Web-tool.examples.com''',
'       , null',
'       , null',
'       , ''Ficticous examples page for Web development tool'' ',
'      );',
' ',
'    insert into demo_proj_tasks ',
'      (  id ',
'       , project_id ',
'       , assignee ',
'       , name ',
'       , description ',
'       , milestone_id ',
'       , is_complete_yn ',
'       , start_date ',
'       , end_date ',
'      ) ',
'    values ',
'      (  59 ',
'       , 2 ',
'       , 6 ',
'       , ''Develop Training Exercises'' ',
'       , ''Create scripts for sample data and problem statements with solutions.'' ',
'       , 11 ',
'       , ''Y'' ',
'       , to_date(''20141202'', ''YYYYMMDD'') + l_add_days ',
'       , to_date(''20141208'', ''YYYYMMDD'') + l_add_days ',
'      ); ',
' ',
'    insert into demo_proj_tasks ',
'      (  id ',
'       , project_id ',
'       , assignee ',
'       , name ',
'       , description ',
'       , milestone_id ',
'       , is_complete_yn ',
'       , start_date ',
'       , end_date ',
'      ) ',
'    values ',
'      (  60 ',
'       , 2 ',
'       , 13 ',
'       , ''Conduct Train-the-Trainer session'' ',
'       , ''Give the training material to the selected developers.'' ',
'       , 11 ',
'       , ''Y'' ',
'       , to_date(''20141209'', ''YYYYMMDD'') + l_add_days ',
'       , to_date(''20141211'', ''YYYYMMDD'') + l_add_days ',
'      ); ',
' ',
'    -- Insert Milestone 2 for Project 2 ',
'    insert into demo_proj_milestones ',
'      (  id ',
'       , project_id ',
'       , name ',
'       , description ',
'       , due_date ',
'      ) ',
'    values ',
'      (  12 ',
'       , 2 ',
'       , ''All Developers Trained'' ',
'       , ''Train the Trainers will have successfully trained the remaining development team members.'' ',
'       , to_date(''20141215'', ''YYYYMMDD'') + l_add_days ',
'      ); ',
' ',
'    -- Insert Tasks for Project 2 / Milestone 2 ',
'    insert into demo_proj_tasks ',
'      (  id ',
'       , project_id ',
'       , assignee ',
'       , name ',
'       , description ',
'       , milestone_id ',
'       , is_complete_yn ',
'       , start_date ',
'       , end_date ',
'      ) ',
'    values ',
'      (  61 ',
'       , 2 ',
'       , 7 ',
'       , ''Train Developers I'' ',
'       , ''Give the training to developers within your group.'' ',
'       , 12 ',
'       , ''Y'' ',
'       , to_date(''20141212'', ''YYYYMMDD'') + l_add_days ',
'       , to_date(''20141214'', ''YYYYMMDD'') + l_add_days ',
'      ); ',
' ',
'    insert into demo_proj_tasks ',
'      (  id ',
'       , project_id ',
'       , assignee ',
'       , name ',
'       , description ',
'       , milestone_id ',
'       , is_complete_yn ',
'       , start_date ',
'       , end_date ',
'      ) ',
'    values ',
'      (  62 ',
'       , 2 ',
'       , 8 ',
'       , ''Train Developers II'' ',
'       , ''Give the training to developers within your group.'' ',
'       , 12 ',
'       , ''Y'' ',
'       , to_date(''20141214'', ''YYYYMMDD'') + l_add_days ',
'       , to_date(''20141216'', ''YYYYMMDD'') + l_add_days ',
'      ); ',
' ',
'    -- Insert Project Comments for Project 2 ',
'    insert into demo_proj_comments ',
'      (  id ',
'       , project_id ',
'       , comment_text ',
'      ) ',
'    values ',
'      (  4 ',
'       , 2 ',
'       , ''The exercises had some errors that need correcting ASAP.'' ',
'      ); ',
'    update demo_proj_comments ',
'      set created = to_date(''20141211'', ''YYYYMMDD'') + l_add_days ',
'      where id = 4; ',
' ',
'    insert into demo_proj_comments ',
'      (  id ',
'       , project_id ',
'       , comment_text ',
'      ) ',
'    values ',
'      (  5 ',
'       , 2 ',
'       , ''Thanks for the feedback, Exercises corrected.'' ',
'      ); ',
'    update demo_proj_comments ',
'      set created = to_date(''20141212'', ''YYYYMMDD'') + l_add_days ',
'      ,   created_by = ''TKING'' ',
'      where id = 5; ',
'    commit;',
' ',
' ',
'    -------------------------- ',
'    --<< Insert Project 3 >>-- ',
'    -------------------------- ',
'    insert into demo_projects ',
'      (  id ',
'       , name ',
'       , description ',
'       , project_lead ',
'       , completed_date ',
'       , status_cd ',
'      ) ',
'      values ',
'      (  3 ',
'       , ''Migrate Legacy Applications'' ',
'       , ''Move the data and redevelop the applications currently running on top of legacy servers'' ',
'       , 10 ',
'       , null ',
'       , ''IN-PROGRESS'' ',
'      ); ',
' ',
'    -- Insert Milestone 1 for Project 3 ',
'    insert into demo_proj_milestones ',
'      (  id ',
'       , project_id ',
'       , name ',
'       , description ',
'       , due_date ',
'      ) ',
'    values ',
'      (  13 ',
'       , 3 ',
'       , ''Move Data Structures'' ',
'       , ''Move all of the tables and program logic across to the new database'' ',
'       , to_date(''20141220'', ''YYYYMMDD'') + l_add_days ',
'      ); ',
' ',
'    -- Insert Tasks for Project 3 / Milestone 1 ',
'    insert into demo_proj_tasks ',
'      (  id ',
'       , project_id ',
'       , assignee ',
'       , name ',
'       , description ',
'       , milestone_id ',
'       , is_complete_yn ',
'       , start_date ',
'       , end_date ',
'      ) ',
'    values ',
'      (  63 ',
'       , 3 ',
'       , 3 ',
'       , ''Create New Tables'' ',
'       , ''Create table scripts to replicate the legacy tables'' ',
'       , 13 ',
'       , ''Y'' ',
'       , to_date(''20141214'', ''YYYYMMDD'') + l_add_days ',
'       , to_date(''20141214'', ''YYYYMMDD'') + l_add_days ',
'      ); ',
' ',
'    insert into demo_proj_task_todos',
'      (  id',
'       , project_id',
'       , task_id',
'       , assignee',
'       , name',
'       , description',
'       , is_complete_yn',
'      )',
'    values',
'      (  5',
'       , 3',
'       , 63',
'       , 3',
'       , ''Reverse engineer the legacy tables into the data modeling tool''',
'       , ''Connect the data modeling tool to the legacy dev instance and suck in all of the required DB objects.''',
'       , ''Y''',
'      );',
' ',
'    insert into demo_proj_task_links',
'      (  id',
'       , project_id',
'       , task_id',
'       , link_type',
'       , url',
'       , application_id',
'       , application_page',
'       , description',
'      )',
'    values',
'      (  8',
'       , 3',
'       , 63',
'       , ''URL''',
'       , ''http://Web-data-modeler.info.com''',
'       , null',
'       , null',
'       , ''Ficticous information site for the data mdoeling tool'' ',
'      );',
' ',
'    insert into demo_proj_task_todos',
'      (  id',
'       , project_id',
'       , task_id',
'       , assignee',
'       , name',
'       , description',
'       , is_complete_yn',
'      )',
'    values',
'      (  6',
'       , 3',
'       , 63',
'       , 3',
'       , ''Add proper integrity constraints to the entities''',
'       , ''Add foreign keys as needed to correctly integrate referential integrity.''',
'       , ''Y''',
'      );',
' ',
'    insert into demo_proj_task_todos',
'      (  id',
'       , project_id',
'       , task_id',
'       , assignee',
'       , name',
'       , description',
'       , is_complete_yn',
'      )',
'    values',
'      (  7',
'       , 3',
'       , 63',
'       , 3',
'       , ''Generate DDL Scripts for new tables''',
'       , ''Generate the DDL scripts from the data modeling tool to create the DB objects in the new database.''',
'       , ''Y''',
'      );',
' ',
'    insert into demo_proj_tasks ',
'      (  id ',
'       , project_id ',
'       , assignee ',
'       , name ',
'       , description ',
'       , milestone_id ',
'       , is_complete_yn ',
'       , start_date ',
'       , end_date ',
'      ) ',
'    values ',
'      (  64 ',
'       , 3 ',
'       , 2 ',
'       , ''Migrate data from Legacy Server'' ',
'       , ''Develop scripts to populate the new database tables from the legacy database.'' ',
'       , 13 ',
'       , ''Y'' ',
'       , to_date(''20141215'', ''YYYYMMDD'') + l_add_days ',
'       , to_date(''20141218'', ''YYYYMMDD'') + l_add_days ',
'      ); ',
' ',
'    insert into demo_proj_tasks ',
'      (  id ',
'       , project_id ',
'       , assignee ',
'       , name ',
'       , description ',
'       , milestone_id ',
'       , is_complete_yn ',
'       , start_date ',
'       , end_date ',
'      ) ',
'    values ',
'      (  65 ',
'       , 3 ',
'       , 3 ',
'       , ''Convert transaction logic'' ',
'       , ''Convert the legacy database transactional objects across to the new database'' ',
'       , 13 ',
'       , ''Y'' ',
'       , to_date(''20141215'', ''YYYYMMDD'') + l_add_days ',
'       , to_date(''20141217'', ''YYYYMMDD'') + l_add_days ',
'      ); ',
' ',
'    -- Insert Milestone 2 for Project 3 ',
'    insert into demo_proj_milestones ',
'      (  id ',
'       , project_id ',
'       , name ',
'       , description ',
'       , due_date ',
'      ) ',
'    values ',
'      (  14 ',
'       , 3 ',
'       , ''Redevelop HR Applications'' ',
'       , ''Build applications to replace the HR functionality currently implemented in older technologies'' ',
'       , to_date(''20141228'', ''YYYYMMDD'') + l_add_days ',
'      ); ',
' ',
'    -- Insert Tasks for Project 3 / Milestone 2 ',
'    insert into demo_proj_tasks ',
'      (  id ',
'       , project_id ',
'       , assignee ',
'       , name ',
'       , description ',
'       , milestone_id ',
'       , is_complete_yn ',
'       , start_date ',
'       , end_date ',
'      ) ',
'    values ',
'      (  66 ',
'       , 3 ',
'       , 4 ',
'       , ''Redevelop Timesheet App'' ',
'       , ''Develop desktop and mobile app for entering timesheets'' ',
'       , 14 ',
'       , ''Y'' ',
'       , to_date(''20141217'', ''YYYYMMDD'') + l_add_days ',
'       , to_date(''20141222'', ''YYYYMMDD'') + l_add_days ',
'      ); ',
' ',
'    insert into demo_proj_tasks ',
'      (  id ',
'       , project_id ',
'       , assignee ',
'       , name ',
'       , description ',
'       , milestone_id ',
'       , is_complete_yn ',
'       , start_date ',
'       , end_date ',
'      ) ',
'    values ',
'      (  67 ',
'       , 3 ',
'       , 8 ',
'       , ''Create Shift Schedule App'' ',
'       , ''Create an app for defining when people are scheduled to work different shifts.'' ',
'       , 14 ',
'       , ''Y'' ',
'       , to_date(''20141217'', ''YYYYMMDD'') + l_add_days ',
'       , to_date(''20141225'', ''YYYYMMDD'') + l_add_days ',
'      ); ',
' ',
'    insert into demo_proj_tasks ',
'      (  id ',
'       , project_id ',
'       , assignee ',
'       , name ',
'       , description ',
'       , milestone_id ',
'       , is_complete_yn ',
'       , start_date ',
'       , end_date ',
'      ) ',
'    values ',
'      (  68 ',
'       , 3 ',
'       , 8 ',
'       , ''Reengineer Employee App'' ',
'       , ''Create an app for employee details and benefits.'' ',
'       , 14 ',
'       , ''N'' ',
'       , to_date(''20141226'', ''YYYYMMDD'') + l_add_days ',
'       , to_date(''20141228'', ''YYYYMMDD'') + l_add_days ',
'      ); ',
' ',
'    -- Insert Milestone 3 for Project 3 ',
'    insert into demo_proj_milestones ',
'      (  id ',
'       , project_id ',
'       , name ',
'       , description ',
'       , due_date ',
'      ) ',
'    values ',
'      (  15 ',
'       , 3 ',
'       , ''Redevelop Project Tracking Applications'' ',
'       , ''Build applications to replace the project tracking functionality currently running on legacy servers'' ',
'       , to_date(''20150103'', ''YYYYMMDD'') + l_add_days ',
'      ); ',
' ',
'    -- Insert Tasks for Project 3 / Milestone 3 ',
'    insert into demo_proj_tasks ',
'      (  id ',
'       , project_id ',
'       , assignee ',
'       , name ',
'       , description ',
'       , milestone_id ',
'       , is_complete_yn ',
'       , start_date ',
'       , end_date ',
'      ) ',
'    values ',
'      (  69 ',
'       , 3 ',
'       , 9 ',
'       , ''Customize Customer Tracker Packaged App'' ',
'       , ''Install Customer Tracker and use flex fields to meet requirements.'' ',
'       , 15 ',
'       , ''Y'' ',
'       , to_date(''20141228'', ''YYYYMMDD'') + l_add_days ',
'       , to_date(''20141228'', ''YYYYMMDD'') + l_add_days ',
'      ); ',
' ',
'    insert into demo_proj_tasks ',
'      (  id ',
'       , project_id ',
'       , assignee ',
'       , name ',
'       , description ',
'       , milestone_id ',
'       , is_complete_yn ',
'       , start_date ',
'       , end_date ',
'      ) ',
'    values ',
'      (  70 ',
'       , 3 ',
'       , 9 ',
'       , ''Migrate data into Customer Tracker tables'' ',
'       , ''Move previous project tracking data into the Customer Tracker CUST_xxx tables.'' ',
'       , 15 ',
'       , ''Y'' ',
'       , to_date(''20141229'', ''YYYYMMDD'') + l_add_days ',
'       , to_date(''20141230'', ''YYYYMMDD'') + l_add_days ',
'      ); ',
' ',
'    insert into demo_proj_tasks ',
'      (  id ',
'       , project_id ',
'       , assignee ',
'       , name ',
'       , description ',
'       , milestone_id ',
'       , is_complete_yn ',
'       , start_date ',
'       , end_date ',
'      ) ',
'    values ',
'      (  71 ',
'       , 3 ',
'       , 11 ',
'       , ''Pilot new Customer Tracker application'' ',
'       , ''Use Customer Tracker to ensure it meets requirements.'' ',
'       , 15 ',
'       , ''N'' ',
'       , to_date(''20141231'', ''YYYYMMDD'') + l_add_days ',
'       , to_date(''20150109'', ''YYYYMMDD'') + l_add_days ',
'      ); ',
' ',
'    -- Insert Project Comments for Project 3 ',
'    insert into demo_proj_comments ',
'      (  id ',
'       , project_id ',
'       , comment_text ',
'      ) ',
'    values ',
'      (  6 ',
'       , 3 ',
'       , ''Bernie - I have migrated all of the projects data across, so you can start your pilot now.'' ',
'      ); ',
'    update demo_proj_comments ',
'      set created = to_date(''201412310100'', ''YYYYMMDDHH24MI'') + l_add_days ',
'      ,   created_by = ''THEBROCK'' ',
'      where id = 6; ',
' ',
'    insert into demo_proj_comments ',
'      (  id ',
'       , project_id ',
'       , comment_text ',
'      ) ',
'    values ',
'      (  7 ',
'       , 3 ',
'       , ''I''''m telling you now, this Customer Tracker thing had better be good'' ',
'      ); ',
'    update demo_proj_comments ',
'      set created = to_date(''201412310200'', ''YYYYMMDDHH24MI'') + l_add_days ',
'      ,   created_by = ''BERNIE'' ',
'      where id = 7; ',
' ',
'    insert into demo_proj_comments ',
'      (  id ',
'       , project_id ',
'       , comment_text ',
'      ) ',
'    values ',
'      (  8 ',
'       , 3 ',
'       , ''This guy Mike told me this app is brilliant.'' ',
'      ); ',
'    update demo_proj_comments ',
'      set created = to_date(''201412310300'', ''YYYYMMDDHH24MI'') + l_add_days ',
'      ,   created_by = ''THEBROCK'' ',
'      where id = 8; ',
' ',
'    insert into demo_proj_comments ',
'      (  id ',
'       , project_id ',
'       , comment_text ',
'      ) ',
'    values ',
'      (  9 ',
'       , 3 ',
'       , ''So far Customer Tracker is working out great - better than the old apps. Brocky, my boy, you are the man!'' ',
'      ); ',
'    update demo_proj_comments ',
'      set created = to_date(''201501010100'', ''YYYYMMDDHH24MI'') + l_add_days ',
'      ,   created_by = ''BERNIE'' ',
'      where id = 9; ',
' ',
'    insert into demo_proj_comments ',
'      (  id ',
'       , project_id ',
'       , comment_text ',
'      ) ',
'    values ',
'      (  10 ',
'       , 3 ',
'       , ''Bernie, I told you that you were going to be impressed.'' ',
'      ); ',
'    update demo_proj_comments ',
'      set created = to_date(''201501010200'', ''YYYYMMDDHH24MI'') + l_add_days ',
'      ,   created_by = ''THEBROCK'' ',
'      where id = 10; ',
' ',
'    insert into demo_proj_comments ',
'      (  id ',
'       , project_id ',
'       , comment_text ',
'      ) ',
'    values ',
'      (  11 ',
'       , 3 ',
'       , ''All of the old tables and transactional logic now migrated and ready for developers to use in the new database.'' ',
'      ); ',
'    update demo_proj_comments ',
'      set created = to_date(''20141217'', ''YYYYMMDD'') + l_add_days ',
'      ,   created_by = ''THALL'' ',
'      where id = 11; ',
'    commit;',
' ',
' ',
'    -------------------------- ',
'    --<< Insert Project 4 >>-- ',
'    -------------------------- ',
'    insert into demo_projects ',
'      (  id ',
'       , name ',
'       , description ',
'       , project_lead ',
'       , completed_date ',
'       , status_cd ',
'      ) ',
'      values ',
'      (  4 ',
'       , ''Develop Partner Portal POC'' ',
'       , ''Develop a proof of concept that partners can use to work more collaboratively with us.'' ',
'       , 13 ',
'       , null ',
'       , ''IN-PROGRESS'' ',
'      ); ',
' ',
'    -- Insert Milestone 1 for Project 4 ',
'    insert into demo_proj_milestones ',
'      (  id ',
'       , project_id ',
'       , name ',
'       , description ',
'       , due_date ',
'      ) ',
'    values ',
'      (  16 ',
'       , 4 ',
'       , ''Define Requirements'' ',
'       , ''Work with key stakeholders to define the scope of the project, and design screen flow and data requirements.'' ',
'       , to_date(''20150106'', ''YYYYMMDD'') + l_add_days ',
'      ); ',
' ',
'    -- Insert Tasks for Project 4 / Milestone 1 ',
'    insert into demo_proj_tasks ',
'      (  id ',
'       , project_id ',
'       , assignee ',
'       , name ',
'       , description ',
'       , milestone_id ',
'       , is_complete_yn ',
'       , start_date ',
'       , end_date ',
'      ) ',
'    values ',
'      (  72 ',
'       , 4 ',
'       , 13 ',
'       , ''Define scope of Partner Portal App.'' ',
'       , ''Meet with internal and external SMEs and define the requirements'' ',
'       , 16 ',
'       , ''N'' ',
'       , to_date(''20141228'', ''YYYYMMDD'') + l_add_days ',
'       , to_date(''20150104'', ''YYYYMMDD'') + l_add_days ',
'      ); ',
' ',
'    insert into demo_proj_task_todos',
'      (  id',
'       , project_id',
'       , task_id',
'       , assignee',
'       , name',
'       , description',
'       , is_complete_yn',
'      )',
'    values',
'      (  8',
'       , 4',
'       , 72',
'       , 13',
'       , ''Meet key Partners for input''',
'       , ''Determine the most important functionality for Partners.''',
'       , ''Y''',
'      );',
' ',
'    insert into demo_proj_task_todos',
'      (  id',
'       , project_id',
'       , task_id',
'       , assignee',
'       , name',
'       , description',
'       , is_complete_yn',
'      )',
'    values',
'      (  9',
'       , 4',
'       , 72',
'       , 13',
'       , ''Meet internal Partner liason reps''',
'       , ''Determine the most important functionality for internal stakeholders.''',
'       , ''Y''',
'      );',
' ',
'    insert into demo_proj_task_todos',
'      (  id',
'       , project_id',
'       , task_id',
'       , assignee',
'       , name',
'       , description',
'       , is_complete_yn',
'      )',
'    values',
'      (  10',
'       , 4',
'       , 72',
'       , 13',
'       , ''Develop inital screen designs''',
'       , ''Prototype new screens using Web development tool to get buy-in from SMEs.''',
'       , ''Y''',
'      );',
' ',
'    insert into demo_proj_tasks ',
'      (  id ',
'       , project_id ',
'       , assignee ',
'       , name ',
'       , description ',
'       , milestone_id ',
'       , is_complete_yn ',
'       , start_date ',
'       , end_date ',
'      ) ',
'    values ',
'      (  73 ',
'       , 4 ',
'       , 8 ',
'       , ''Define Partner App Data Structures'' ',
'       , ''Design the data model for new and existing entities required to support the Partner Portal.'' ',
'       , 16 ',
'       , ''N'' ',
'       , to_date(''20150104'', ''YYYYMMDD'') + l_add_days ',
'       , to_date(''20150107'', ''YYYYMMDD'') + l_add_days ',
'      ); ',
' ',
'    insert into demo_proj_tasks ',
'      (  id ',
'       , project_id ',
'       , assignee ',
'       , name ',
'       , description ',
'       , milestone_id ',
'       , is_complete_yn ',
'       , start_date ',
'       , end_date ',
'      ) ',
'    values ',
'      (  74 ',
'       , 4 ',
'       , 6 ',
'       , ''Design User Experience'' ',
'       , ''Define how partners will interact with the application.'' ',
'       , 16 ',
'       , ''N'' ',
'       , to_date(''20150105'', ''YYYYMMDD'') + l_add_days ',
'       , to_date(''20150106'', ''YYYYMMDD'') + l_add_days ',
'      ); ',
' ',
' ',
'    -- Insert Milestone 2 for Project 4 ',
'    insert into demo_proj_milestones ',
'      (  id ',
'       , project_id ',
'       , name ',
'       , description ',
'       , due_date ',
'      ) ',
'    values ',
'      (  17 ',
'       , 4 ',
'       , ''Build Proof-of-Concept'' ',
'       , ''Create the initial screens and populate with data so key stakeholders can review proposed solution.'' ',
'       , to_date(''20150113'', ''YYYYMMDD'') + l_add_days ',
'      ); ',
' ',
'    -- Insert Tasks for Project 4 / Milestone 2 ',
'    insert into demo_proj_tasks ',
'      (  id ',
'       , project_id ',
'       , assignee ',
'       , name ',
'       , description ',
'       , milestone_id ',
'       , is_complete_yn ',
'       , start_date ',
'       , end_date ',
'      ) ',
'    values ',
'      (  75 ',
'       , 4 ',
'       , 2 ',
'       , ''Develop Admin Screens for Partner Portal'' ',
'       , ''Develop the screens needed to maintain all of the base tables for the Partner Portal app.'' ',
'       , 17 ',
'       , ''N'' ',
'       , to_date(''20150108'', ''YYYYMMDD'') + l_add_days ',
'       , to_date(''20150110'', ''YYYYMMDD'') + l_add_days ',
'      ); ',
' ',
'    insert into demo_proj_tasks ',
'      (  id ',
'       , project_id ',
'       , assignee ',
'       , name ',
'       , description ',
'       , milestone_id ',
'       , is_complete_yn ',
'       , start_date ',
'       , end_date ',
'      ) ',
'    values ',
'      (  76 ',
'       , 4 ',
'       , 12 ',
'       , ''Populate Data Structures for Partner Portal'' ',
'       , ''Upload sample data provided by key partner, and ensure existing tables accessible.'' ',
'       , 17 ',
'       , ''N'' ',
'       , to_date(''20150108'', ''YYYYMMDD'') + l_add_days ',
'       , to_date(''20150109'', ''YYYYMMDD'') + l_add_days ',
'      ); ',
' ',
'    insert into demo_proj_tasks ',
'      (  id ',
'       , project_id ',
'       , assignee ',
'       , name ',
'       , description ',
'       , milestone_id ',
'       , is_complete_yn ',
'       , start_date ',
'       , end_date ',
'      ) ',
'    values ',
'      (  77 ',
'       , 4 ',
'       , 6 ',
'       , ''Design first-cut of main Partner Portal app'' ',
'       , ''Implement the major functional areas and ensure navigation between pag'))
);
end;
/
begin
wwv_flow_api.append_to_install_script(
 p_id=>wwv_flow_api.id(19100931008454606173)
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'es is working correctly.'' ',
'       , 17 ',
'       , ''N'' ',
'       , to_date(''20150107'', ''YYYYMMDD'') + l_add_days ',
'       , to_date(''20150111'', ''YYYYMMDD'') + l_add_days ',
'      ); ',
' ',
'    insert into demo_proj_tasks ',
'      (  id ',
'       , project_id ',
'       , assignee ',
'       , name ',
'       , description ',
'       , milestone_id ',
'       , is_complete_yn ',
'       , start_date ',
'       , end_date ',
'      ) ',
'    values ',
'      (  78 ',
'       , 4 ',
'       , 13 ',
'       , ''Present POC to Key Stakeholders'' ',
'       , ''Walk key stakeholders through the proof of concept and obtain their feedback.'' ',
'       , 17 ',
'       , ''N'' ',
'       , to_date(''20150112'', ''YYYYMMDD'') + l_add_days ',
'       , to_date(''20150112'', ''YYYYMMDD'') + l_add_days ',
'      ); ',
' ',
' ',
'    -------------------------- ',
'    --<< Insert Project 5 >>-- ',
'    -------------------------- ',
'    insert into demo_projects ',
'      (  id ',
'       , name ',
'       , description ',
'       , project_lead ',
'       , completed_date ',
'       , status_cd ',
'      ) ',
'      values ',
'      (  5 ',
'       , ''Develop Production Partner Portal'' ',
'       , ''Develop the production app that partners can use to work more collaboratively with us.'' ',
'       , 1 ',
'       , null ',
'       , ''ASSIGNED'' ',
'      ); ',
' ',
'    -- Insert Milestone 1 for Project 5 ',
'    insert into demo_proj_milestones ',
'      (  id ',
'       , project_id ',
'       , name ',
'       , description ',
'       , due_date ',
'      ) ',
'    values ',
'      (  18 ',
'       , 5 ',
'       , ''Define Production App Scope'' ',
'       , ''Based on the results of the POC, define the requirements for the production app.'' ',
'       , to_date(''20150114'', ''YYYYMMDD'') + l_add_days ',
'     ); ',
' ',
'    -- Insert Tasks for Project 5 / Milestone 1 ',
'    insert into demo_proj_tasks ',
'      (  id ',
'       , project_id ',
'       , assignee ',
'       , name ',
'       , description ',
'       , milestone_id ',
'       , is_complete_yn ',
'       , start_date ',
'       , end_date ',
'      ) ',
'    values ',
'      (  79 ',
'       , 5 ',
'       , 13 ',
'       , ''Define production scope of Partner Portal App.'' ',
'       , ''Define the scope and timelines for the development of the production app.'' ',
'       , 18 ',
'       , ''N'' ',
'       , to_date(''20150113'', ''YYYYMMDD'') + l_add_days ',
'       , to_date(''20150114'', ''YYYYMMDD'') + l_add_days ',
'      ); ',
' ',
'    insert into demo_proj_tasks ',
'      (  id ',
'       , project_id ',
'       , assignee ',
'       , name ',
'       , description ',
'       , milestone_id ',
'       , is_complete_yn ',
'       , start_date ',
'       , end_date ',
'      ) ',
'    values ',
'      (  80 ',
'       , 5 ',
'       , 8 ',
'       , ''Finalize Partner App Data Model'' ',
'       , ''Refine the data model for new and existing entities required to support the Partner Portal.'' ',
'       , 18 ',
'       , ''N'' ',
'       , to_date(''20150113'', ''YYYYMMDD'') + l_add_days ',
'       , to_date(''20150114'', ''YYYYMMDD'') + l_add_days ',
'      ); ',
' ',
'    insert into demo_proj_tasks ',
'      (  id ',
'       , project_id ',
'       , assignee ',
'       , name ',
'       , description ',
'       , milestone_id ',
'       , is_complete_yn ',
'       , start_date ',
'       , end_date ',
'      ) ',
'    values ',
'      (  81 ',
'       , 5 ',
'       , 6 ',
'       , ''Finalize User Experience'' ',
'       , ''Write developer standards on UX and development standards on how partners will interact with the application.'' ',
'       , 18 ',
'       , ''N'' ',
'       , to_date(''20150113'', ''YYYYMMDD'') + l_add_days ',
'       , to_date(''20150114'', ''YYYYMMDD'') + l_add_days ',
'      ); ',
' ',
' ',
'    -- Insert Milestone 2 for Project 5 ',
'    insert into demo_proj_milestones ',
'      (  id ',
'       , project_id ',
'       , name ',
'       , description ',
'       , due_date ',
'      ) ',
'    values ',
'      (  19 ',
'       , 5 ',
'       , ''Build Phase 1 of Production Partner Portal App'' ',
'       , ''Develop the modules defined in the first phase of the application.'' ',
'       , to_date(''20150121'', ''YYYYMMDD'') + l_add_days ',
'      ); ',
' ',
'    -- Insert Tasks for Project 5 / Milestone 2 ',
'    insert into demo_proj_tasks ',
'      (  id ',
'       , project_id ',
'       , assignee ',
'       , name ',
'       , description ',
'       , milestone_id ',
'       , is_complete_yn ',
'       , start_date ',
'       , end_date ',
'      ) ',
'    values ',
'      (  82 ',
'       , 5 ',
'       , 6 ',
'       , ''Refine Admin Screens for Partner Portal'' ',
'       , ''Refine screens developed in the POC to be fully operational to maintain all of the base tables for the Partner Portal app.'' ',
'       , 19 ',
'       , ''N'' ',
'       , to_date(''20150115'', ''YYYYMMDD'') + l_add_days ',
'       , to_date(''20150118'', ''YYYYMMDD'') + l_add_days ',
'      ); ',
' ',
'    insert into demo_proj_tasks ',
'      (  id ',
'       , project_id ',
'       , assignee ',
'       , name ',
'       , description ',
'       , milestone_id ',
'       , is_complete_yn ',
'       , start_date ',
'       , end_date ',
'      ) ',
'    values ',
'      (  83 ',
'       , 5 ',
'       , 5 ',
'       , ''Populate Data Structures for Production Partner Portal'' ',
'       , ''Upload actual data provided by key partner, and ensure existing tables accessible.'' ',
'       , 19 ',
'       , ''N'' ',
'       , to_date(''20150115'', ''YYYYMMDD'') + l_add_days ',
'       , to_date(''20150117'', ''YYYYMMDD'') + l_add_days ',
'      ); ',
' ',
'    insert into demo_proj_tasks ',
'      (  id ',
'       , project_id ',
'       , assignee ',
'       , name ',
'       , description ',
'       , milestone_id ',
'       , is_complete_yn ',
'       , start_date ',
'       , end_date ',
'      ) ',
'    values ',
'      (  84 ',
'       , 5 ',
'       , 7 ',
'       , ''Design production screens for main Partner Portal app'' ',
'       , ''Implement fully functional and complete screens to cover the major functional areas in Phase 1.'' ',
'       , 19 ',
'       , ''N'' ',
'       , to_date(''20150117'', ''YYYYMMDD'') + l_add_days ',
'       , to_date(''20150123'', ''YYYYMMDD'') + l_add_days ',
'      ); ',
' ',
'    -- Insert Milestone 3 for Project 5 ',
'    insert into demo_proj_milestones ',
'      (  id ',
'       , project_id ',
'       , name ',
'       , description ',
'       , due_date ',
'      ) ',
'    values ',
'      (  20 ',
'       , 5 ',
'       , ''Perform Beta testing with select Partners'' ',
'       , ''Work with a few key partners to trial Phase 1 of the Partner Portal app.'' ',
'       , to_date(''20150129'', ''YYYYMMDD'') + l_add_days ',
'      ); ',
' ',
'    -- Insert Tasks for Project 5 / Milestone 3 ',
'    insert into demo_proj_tasks ',
'      (  id ',
'       , project_id ',
'       , assignee ',
'       , name ',
'       , description ',
'       , milestone_id ',
'       , is_complete_yn ',
'       , start_date ',
'       , end_date ',
'      ) ',
'    values ',
'      (  85 ',
'       , 5 ',
'       , 10 ',
'       , ''Train Partners'' ',
'       , ''Train selected partners in how to use the Partner Portal app.'' ',
'       , 20 ',
'       , ''N'' ',
'       , to_date(''20150122'', ''YYYYMMDD'') + l_add_days ',
'       , to_date(''20150122'', ''YYYYMMDD'') + l_add_days ',
'      ); ',
' ',
'    insert into demo_proj_tasks ',
'      (  id ',
'       , project_id ',
'       , assignee ',
'       , name ',
'       , description ',
'       , milestone_id ',
'       , is_complete_yn ',
'       , start_date ',
'       , end_date ',
'      ) ',
'    values ',
'      (  86 ',
'       , 5 ',
'       , 4 ',
'       , ''Monitor Partners'' ',
'       , ''Monitor partners selected for the Beta and provide assistance as necessary.'' ',
'       , 20 ',
'       , ''N'' ',
'       , to_date(''20150123'', ''YYYYMMDD'') + l_add_days ',
'       , to_date(''20150128'', ''YYYYMMDD'') + l_add_days ',
'      ); ',
' ',
'    insert into demo_proj_tasks ',
'      (  id ',
'       , project_id ',
'       , assignee ',
'       , name ',
'       , description ',
'       , milestone_id ',
'       , is_complete_yn ',
'       , start_date ',
'       , end_date ',
'      ) ',
'    values ',
'      (  87 ',
'       , 5 ',
'       , 13 ',
'       , ''Review Beta Feedback'' ',
'       , ''Analyse feedback from the partners who participated in the Beta program.'' ',
'       , 20 ',
'       , ''N'' ',
'       , to_date(''20150129'', ''YYYYMMDD'') + l_add_days ',
'       , to_date(''20150129'', ''YYYYMMDD'') + l_add_days ',
'      ); ',
' ',
'    -- Insert Milestone 4 for Project 5 ',
'    insert into demo_proj_milestones ',
'      (  id ',
'       , project_id ',
'       , name ',
'       , description ',
'       , due_date ',
'      ) ',
'    values ',
'      (  21 ',
'       , 5 ',
'       , ''Complete Phase 1 Development of Partner Portal app'' ',
'       , ''Based on the results of the Beta program, enhance the application to make production ready.'' ',
'       , to_date(''20150225'', ''YYYYMMDD'') + l_add_days ',
'      ); ',
' ',
'    -- Insert Tasks for Project 5 / Milestone 4 ',
'    insert into demo_proj_tasks ',
'      (  id ',
'       , project_id ',
'       , assignee ',
'       , name ',
'       , description ',
'       , milestone_id ',
'       , is_complete_yn ',
'       , start_date ',
'       , end_date ',
'      ) ',
'    values ',
'      (  88 ',
'       , 5 ',
'       , 5 ',
'       , ''Improve existing feature functions'' ',
'       , ''Enhance existing features based on responses from Beta partners.'' ',
'       , 21 ',
'       , ''N'' ',
'       , to_date(''20150201'', ''YYYYMMDD'') + l_add_days ',
'       , to_date(''20150220'', ''YYYYMMDD'') + l_add_days ',
'      ); ',
' ',
'    insert into demo_proj_tasks ',
'      (  id ',
'       , project_id ',
'       , assignee ',
'       , name ',
'       , description ',
'       , milestone_id ',
'       , is_complete_yn ',
'       , start_date ',
'       , end_date ',
'      ) ',
'    values ',
'      (  89 ',
'       , 5 ',
'       , 3 ',
'       , ''Add required feature functions'' ',
'       , ''Add missing features outlined in responses from Beta partners.'' ',
'       , 21 ',
'       , ''N'' ',
'       , to_date(''20150201'', ''YYYYMMDD'') + l_add_days ',
'       , to_date(''20150220'', ''YYYYMMDD'') + l_add_days ',
'      ); ',
' ',
'    insert into demo_proj_tasks ',
'      (  id ',
'       , project_id ',
'       , assignee ',
'       , name ',
'       , description ',
'       , milestone_id ',
'       , is_complete_yn ',
'       , start_date ',
'       , end_date ',
'      ) ',
'    values ',
'      (  90 ',
'       , 5 ',
'       , 12 ',
'       , ''Load full production data'' ',
'       , ''Ensure all data required for production roll out are inserted and maintained.'' ',
'       , 11 ',
'       , ''N'' ',
'       , to_date(''20150215'', ''YYYYMMDD'') + l_add_days ',
'       , to_date(''20150220'', ''YYYYMMDD'') + l_add_days ',
'      ); ',
' ',
'    insert into demo_proj_tasks ',
'      (  id ',
'       , project_id ',
'       , assignee ',
'       , name ',
'       , description ',
'       , milestone_id ',
'       , is_complete_yn ',
'       , start_date ',
'       , end_date ',
'      ) ',
'    values ',
'      (  91 ',
'       , 5 ',
'       , 8 ',
'       , ''Test Production Partner Portal'' ',
'       , ''Do full scale testing on the Partner Portal application.'' ',
'       , 21 ',
'       , ''N'' ',
'       , to_date(''20150221'', ''YYYYMMDD'') + l_add_days ',
'       , to_date(''20150225'', ''YYYYMMDD'') + l_add_days ',
'      ); ',
' ',
'    -- Insert Milestone 5 for Project 5 ',
'    insert into demo_proj_milestones ',
'      (  id ',
'       , project_id ',
'       , name ',
'       , description ',
'       , due_date ',
'      ) ',
'    values ',
'      (  22 ',
'       , 5 ',
'       , ''Roll out Phase 1 of Partner Portal app'' ',
'       , ''Go-Live for the Partner Portal application to all partners.'' ',
'       , to_date(''20150301'', ''YYYYMMDD'') + l_add_days ',
'      ); ',
' ',
'    -- Insert Tasks for Project 5 / Milestone 5 ',
'    insert into demo_proj_tasks ',
'      (  id ',
'       , project_id ',
'       , assignee ',
'       , name ',
'       , description ',
'       , milestone_id ',
'       , is_complete_yn ',
'       , start_date ',
'       , end_date ',
'      ) ',
'    values ',
'      (  92 ',
'       , 5 ',
'       , 3 ',
'       , ''Install Partner Portal app onto Production Server'' ',
'       , ''Install the database objects and application(s) into the production environment.'' ',
'       , 22 ',
'       , ''N'' ',
'       , to_date(''20150226'', ''YYYYMMDD'') + l_add_days ',
'       , to_date(''20150226'', ''YYYYMMDD'') + l_add_days ',
'      ); ',
' ',
'    insert into demo_proj_tasks ',
'      (  id ',
'       , project_id ',
'       , assignee ',
'       , name ',
'       , description ',
'       , milestone_id ',
'       , is_complete_yn ',
'       , start_date ',
'       , end_date ',
'      ) ',
'    values ',
'      (  93 ',
'       , 5 ',
'       , 12 ',
'       , ''Configure production data load procedures'' ',
'       , ''Install and test data load procedures from internal and external data sources into production environment.'' ',
'       , 22 ',
'       , ''N'' ',
'       , to_date(''20150227'', ''YYYYMMDD'') + l_add_days ',
'       , to_date(''20150228'', ''YYYYMMDD'') + l_add_days ',
'      ); ',
' ',
'    insert into demo_proj_tasks ',
'      (  id ',
'       , project_id ',
'       , assignee ',
'       , name ',
'       , description ',
'       , milestone_id ',
'       , is_complete_yn ',
'       , start_date ',
'       , end_date ',
'      ) ',
'    values ',
'      (  94 ',
'       , 5 ',
'       , 13 ',
'       , ''Provide user credentials for partners'' ',
'       , ''Define user credentials for each partner to allow access to the Partner Portal app.'' ',
'       , 22 ',
'       , ''N'' ',
'       , to_date(''20150228'', ''YYYYMMDD'') + l_add_days ',
'       , to_date(''20150228'', ''YYYYMMDD'') + l_add_days ',
'      ); ',
' ',
'    insert into demo_proj_tasks ',
'      (  id ',
'       , project_id ',
'       , assignee ',
'       , name ',
'       , description ',
'       , milestone_id ',
'       , is_complete_yn ',
'       , start_date ',
'       , end_date ',
'      ) ',
'    values ',
'      (  95 ',
'       , 5 ',
'       , 1 ',
'       , ''Announce Partner Portal app to all partners'' ',
'       , ''Email or call partners to inform them of the new application and instructions on how to get started.'' ',
'       , 22 ',
'       , ''N'' ',
'       , to_date(''20150301'', ''YYYYMMDD'') + l_add_days ',
'       , to_date(''20150301'', ''YYYYMMDD'') + l_add_days ',
'      ); ',
' ',
'  end load_sample_data; ',
' ',
'  procedure remove_sample_data is ',
'  begin ',
'    delete from demo_proj_team_members where id < 15; ',
'    delete from demo_projects where id < 10; ',
'      -- Cascade delete will delete Milestones, Tasks, Task ToDos, Task Links and Comment records ',
'  end remove_sample_data; ',
' ',
'end demo_projects_data_pkg; ',
'/',
'',
'',
'-----------------------',
'--<< Load the Data >>--',
'-----------------------',
'begin',
'  demo_projects_data_pkg.load_sample_data;',
'end;',
'/'))
);
null;
end;
/
prompt --application/deployment/checks
begin
null;
end;
/
prompt --application/deployment/buildoptions
begin
null;
end;
/
prompt --application/end_environment
begin
wwv_flow_api.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done
