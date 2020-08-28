<<<<<<< HEAD
# sql file for Openmeeting module

# Table for openmeetings
CREATE TABLE `openmeetings_rooms` (
   `om_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
   `course_id` mediumint(8) unsigned NOT NULL,
   `owner_id` mediumint(8) unsigned NOT NULL,
   `rooms_id` bigint( 20 ) NOT NULL ,
   PRIMARY KEY ( `om_id` )
);

CREATE TABLE `openmeetings_groups` (
   `om_id` mediumint(8) unsigned NOT NULL,
   `group_id` mediumint(8) unsigned NOT NULL,
   PRIMARY KEY ( `om_id`, `group_id` )
);

INSERT INTO `language_text` VALUES ('en', '_module', 'openmeetings_missing_url', 'You must supply the URL to your Openmeetings installation in the field below.', NOW(), '');
INSERT INTO `language_text` VALUES ('en', '_module','openmeetings','Openmeetings',NOW(),'');
INSERT INTO `language_text` VALUES ('en', '_module','openmeetings_open','Open Openmeetings Admin',NOW(),'');
INSERT INTO `language_text` VALUES ('en', '_module','openmeetings_location','The location of your Openmeetings installation. This should be the base URL of your Openmeetings installation (e.g. http://www.myserver.com:5080/openmeetings).',NOW(),'');
INSERT INTO `language_text` VALUES ('en', '_module','openmeetings_own_window','Open Openmeetings in a New Window:',NOW(),'');
INSERT INTO `language_text` VALUES ('en', '_module','openmeetings_course_meetings','Course Openmeetings',NOW(),'');
INSERT INTO `language_text` VALUES ('en', '_module','openmeetings_view_meetings','View Openmeetings',NOW(),'');
INSERT INTO `language_text` VALUES ('en', '_module','openmeetings_grp_meetings','Group Openmeetings',NOW(),'');
INSERT INTO `language_text` VALUES ('en', '_module','openmeetings_existing_room','You already have started a <a href="%s">room</a>, would you like to edit your room or to start a new one?',NOW(),'');
INSERT INTO `language_text` VALUES ('en', '_module','openmeetings_deleting_warning','(Note, starting a new room will close your current room.  Once the room is closed, <strong>all chat logs and associated room materials will be deleted</strong>.)',NOW(),'');
INSERT INTO `language_text` VALUES ('en', '_module','openmeetings_no_course_meetings','There is no course meeting at the moment.  Instructor can add a course meeting.',NOW(),'');
INSERT INTO `language_text` VALUES ('en', '_module','openmeetings_no_group_meetings','There is no group meeting at the moment.  You have to be assigned to a group in order to start a group meeting.',NOW(),'');
INSERT INTO `language_text` VALUES ('en', '_module','openmeetings_course_conference','Course conference:',NOW(),'');
INSERT INTO `language_text` VALUES ('en', '_module','openmeetings_group_conference','Group conference(s):',NOW(),'');
INSERT INTO `language_text` VALUES ('en', '_module','openmeetings_num_of_participants','Number of participants',NOW(),'');
INSERT INTO `language_text` VALUES ('en', '_module','openmeetings_ispublic','Public meeting?',NOW(),'');
INSERT INTO `language_text` VALUES ('en', '_module','openmeetings_vid_w','Video Width (in pixel)',NOW(),'');
INSERT INTO `language_text` VALUES ('en', '_module','openmeetings_vid_h','Video Height (in pixel)',NOW(),'');
INSERT INTO `language_text` VALUES ('en', '_module','openmeetings_show_wb','Display whiteboard?',NOW(),'');
INSERT INTO `language_text` VALUES ('en', '_module','openmeetings_wb_w','Whiteboard Width (in pixel)',NOW(),'');
INSERT INTO `language_text` VALUES ('en', '_module','openmeetings_wb_h','Whiteboard Height (in pixel)',NOW(),'');
INSERT INTO `language_text` VALUES ('en', '_module','openmeetings_show_fp','Display file panel?',NOW(),'');
INSERT INTO `language_text` VALUES ('en', '_module','openmeetings_fp_w','File Panel Width (in pixel)',NOW(),'');
INSERT INTO `language_text` VALUES ('en', '_module','openmeetings_fp_h','File Panel Height (in pixel)',NOW(),'');
INSERT INTO `language_text` VALUES ('en', '_module','openmeetings_username','Openmeeting Username (Must have admin-rights)', NOW(),'');
INSERT INTO `language_text` VALUES ('en', '_module','openmeetings_userpass','Openmeeting Password',NOW(),'');
INSERT INTO `language_text` VALUES ('en', '_module','openmeetings_grp_meetings','Openmeeting Group Meetings',NOW(),'');
INSERT INTO `language_text` VALUES ('en', '_module','openmeetings_delete','Delete Meeting Room',NOW(),'');
INSERT INTO `language_text` VALUES ('en', '_module','openmeetings_confirm_delete','Are you sure you want to delete this conference room?  All the associated chats and files will be deleted.',NOW(),'');
INSERT INTO `language_text` VALUES ('en', '_module','openmeetings_roomtype','Room Mode',NOW(),'');
INSERT INTO `language_text` VALUES ('en', '_module','openmeetings_conference','Conference Mode',NOW(),'');
INSERT INTO `language_text` VALUES ('en', '_module','openmeetings_audience','Audience Mode',NOW(),'');
INSERT INTO `language_text` VALUES ('en', '_module','openmeetings_create_room_instr','Adjust the following settings, then click "Create" to start the conference/audience room.  For more information on the settings, please see the <a href="http://code.google.com/p/openmeetings/wiki/SoapMethods#addRoom" target="_new">Openmeetings documentation</a>.',NOW(),'');
INSERT INTO `language_text` VALUES ('en', '_module','openmeetings_edit_room','Edit room',NOW(),'');
INSERT INTO `language_text` VALUES ('en', '_module','openmeetings_create_room','Create new room',NOW(),'');
INSERT INTO `language_text` VALUES ('en', '_module','openmeetings_delete_room','Remove room',NOW(),'');

INSERT INTO `language_text` VALUES ('en', '_msgs','AT_FEEDBACK_OPENMEETINGS_URL_ADD_SAVED','Openmeetings configuration options were successfully saved.',NOW(),'');
INSERT INTO `language_text` VALUES ('en', '_msgs','AT_FEEDBACK_OPENMEETINGS_CANCELLED','Successfully cancelled without saving any changes.',NOW(),'');
INSERT INTO `language_text` VALUES ('en', '_msgs','AT_FEEDBACK_OPENMEETINGS_DELETE_SUCEEDED','The room has been successfully deleted.',NOW(),'');
INSERT INTO `language_text` VALUES ('en', '_msgs','AT_FEEDBACK_OPENMEETINGS_ADDED_SUCEEDED','The room has been added successfully.',NOW(),'');
INSERT INTO `language_text` VALUES ('en', '_msgs','AT_FEEDBACK_OPENMEETINGS_UPDATE_SUCEEDED','The room has been updated successfully.',NOW(),'');

INSERT INTO `language_text` VALUES ('en', '_msgs','AT_ERROR_OPENMEETINGS_NOT_SETUP','Openmeetings has not been setup yet, please contact your administrator.',NOW(),'');
INSERT INTO `language_text` VALUES ('en', '_msgs','AT_ERROR_OPENMEETINGS_ADD_FAILED','The room cannot be created.  You must be belong to this group or you must have the permission to create a room.',NOW(),'');
INSERT INTO `language_text` VALUES ('en', '_msgs','AT_ERROR_OPENMEETINGS_DELETE_FAILED','An error has occured while deleting the room, please contact the administrator.',NOW(),'');
INSERT INTO `language_text` VALUES ('en', '_msgs','AT_ERROR_OPENMEETINGS_URL_ADD_EMPTY','You must enter a URL to the location of your Openmeetings installation.',NOW(),'');
INSERT INTO `language_text` VALUES ('en', '_msgs','AT_ERROR_OPENMEETINGS_USERNAME_ADD_EMPTY','You must enter an username to the account of your Openmeetings installation.',NOW(),'');
INSERT INTO `language_text` VALUES ('en', '_msgs','AT_ERROR_OPENMEETINGS_USERPASS_ADD_EMPTY','You must enter a password to the account of your Openmeetings installation.',NOW(),'');
=======

/*
CREATE TABLE IF NOT EXISTS `AT_calendar_courses` (
   `id` int(5) NOT NULL AUTO_INCREMENT,
   `member_id` mediumint(8) unsigned NOT NULL,
   `course_id` mediumint(8) unsigned NOT NULL,
    PRIMARY KEY ( `id` )
);

CREATE TABLE IF NOT EXISTS `AT_calendar_assignments` (
    `id` int(5) NOT NULL AUTO_INCREMENT,
    `course_id` mediumint(8) unsigned NOT NULL,
    `assignment_id` mediumint(8) unsigned NOT NULL,
    PRIMARY KEY ( `id` )
);

CREATE TABLE IF NOT EXISTS `AT_calendar_tests` (
    `id` int(5) NOT NULL AUTO_INCREMENT,
    `course_id` mediumint(8) unsigned NOT NULL,
    `test_id` mediumint(8) unsigned NOT NULL,
    PRIMARY KEY ( `id` )
);

CREATE TABLE IF NOT EXISTS `AT_calendar_update_information` (
    `id` int(5) NOT NULL AUTO_INCREMENT,
    `last_updated` TIMESTAMP NOT NULL,
    `AT_calendar_timezone_offset_name` text NOT NULL,
    PRIMARY KEY ( `id` ) 

);

 CREATE TABLE IF NOT EXISTS `personalised_calendar` (
   `id` int(5) NOT NULL AUTO_INCREMENT,
   'datetimestamp' DATETIME NOT NULL,
   `description`text NOT NULL,
    PRIMARY KEY ( `id` )
);
 */ 
/* DUMP TIMEZONE DATA */
 CREATE TABLE IF NOT EXISTS `AT_calendar_timezone_offset` (
   `id` int(5) NOT NULL AUTO_INCREMENT,
   `time_zone` varchar(60) NOT NULL,
   `offset` varchar(5) NOT NULL,
   PRIMARY KEY (`id`)
);
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Africa/Abidjan','0');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Africa/Accra','0');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Africa/Addis_Ababa','3');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Africa/Algiers','1');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Africa/Asmara','3');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Africa/Bamako','0');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Africa/Bangui','1');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Africa/Banjul','0');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Africa/Bissau','0');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Africa/Blantyre','2');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Africa/Brazzaville','1');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Africa/Bujumbura','2');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Africa/Cairo','3');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Africa/Casablanca','0');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Africa/Ceuta','2');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Africa/Conakry','0');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Africa/Dakar','0');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Africa/Dar_es_Salaam','3');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Africa/Djibouti','3');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Africa/Douala','1');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Africa/El_Aaiun','0');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Africa/Freetown','0');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Africa/Gaborone','2');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Africa/Harare','2');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Africa/Johannesburg','2');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Africa/Kampala','3');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Africa/Khartoum','3');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Africa/Kigali','2');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Africa/Kinshasa','1');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Africa/Lagos','1');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Africa/Libreville','1');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Africa/Lome','0');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Africa/Luanda','1');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Africa/Lubumbashi','2');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Africa/Lusaka','2');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Africa/Malabo','1');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Africa/Maputo','2');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Africa/Maseru','2');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Africa/Mbabane','2');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Africa/Mogadishu','3');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Africa/Monrovia','0');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Africa/Nairobi','3');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Africa/Ndjamena','1');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Africa/Niamey','1');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Africa/Nouakchott','0');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Africa/Ouagadougou','0');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Africa/Porto-Novo','1');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Africa/Sao_Tome','0');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Africa/Tripoli','2');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Africa/Tunis','1');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Africa/Windhoek','1');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('America/Adak','-9');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('America/Anchorage','-8');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('America/Anguilla','-4');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('America/Antigua','-4');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('America/Araguaina','-3');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('America/Argentina/Buenos_Aires','-3');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('America/Argentina/Catamarca','-3');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('America/Argentina/Cordoba','-3');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('America/Argentina/Jujuy','-3');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('America/Argentina/La_Rioja','-3');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('America/Argentina/Mendoza','-3');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('America/Argentina/Rio_Gallegos','-3');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('America/Argentina/Salta','-3');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('America/Argentina/San_Juan','-3');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('America/Argentina/San_Luis','-3');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('America/Argentina/Tucuman','-3');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('America/Argentina/Ushuaia','-3');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('America/Aruba','-4');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('America/Asuncion','-4');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('America/Atikokan','-5');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('America/Bahia','-3');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('America/Bahia_Banderas','-5');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('America/Barbados','-4');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('America/Belem','-3');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('America/Belize','-6');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('America/Blanc-Sablon','-4');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('America/Boa_Vista','-4');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('America/Bogota','-5');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('America/Boise','-6');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('America/Cambridge_Bay','-6');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('America/Campo_Grande','-4');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('America/Cancun','-5');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('America/Caracas','-4.5');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('America/Cayenne','-3');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('America/Cayman','-5');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('America/Chicago','-5');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('America/Chihuahua','-6');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('America/Costa_Rica','-6');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('America/Cuiaba','-4');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('America/Curacao','-4');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('America/Danmarkshavn','0');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('America/Dawson','-7');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('America/Dawson_Creek','-7');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('America/Denver','-6');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('America/Detroit','-4');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('America/Dominica','-4');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('America/Edmonton','-6');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('America/Eirunepe','-4');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('America/El_Salvador','-6');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('America/Fortaleza','-3');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('America/Glace_Bay','-3');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('America/Godthab','-2');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('America/Goose_Bay','-3');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('America/Grand_Turk','-4');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('America/Grenada','-4');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('America/Guadeloupe','-4');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('America/Guatemala','-6');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('America/Guayaquil','-5');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('America/Guyana','-4');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('America/Halifax','-3');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('America/Havana','-4');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('America/Hermosillo','-7');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('America/Indiana/Indianapolis','-4');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('America/Indiana/Knox','-5');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('America/Indiana/Marengo','-4');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('America/Indiana/Petersburg','-4');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('America/Indiana/Tell_City','-5');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('America/Indiana/Vevay','-4');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('America/Indiana/Vincennes','-4');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('America/Indiana/Winamac','-4');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('America/Inuvik','-6');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('America/Iqaluit','-4');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('America/Jamaica','-5');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('America/Juneau','-8');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('America/Kentucky/Louisville','-4');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('America/Kentucky/Monticello','-4');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('America/La_Paz','-4');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('America/Lima','-5');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('America/Los_Angeles','-7');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('America/Maceio','-3');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('America/Managua','-6');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('America/Manaus','-4');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('America/Marigot','-4');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('America/Martinique','-4');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('America/Matamoros','-5');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('America/Mazatlan','-6');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('America/Menominee','-5');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('America/Merida','-5');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('America/Metlakatla','-7');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('America/Mexico_City','-5');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('America/Miquelon','-2');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('America/Moncton','-3');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('America/Monterrey','-5');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('America/Montevideo','-3');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('America/Montreal','-4');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('America/Montserrat','-4');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('America/Nassau','-4');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('America/New_York','-4');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('America/Nipigon','-4');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('America/Nome','-8');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('America/Noronha','-2');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('America/North_Dakota/Beulah','-5');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('America/North_Dakota/Center','-5');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('America/North_Dakota/New_Salem','-5');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('America/Ojinaga','-6');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('America/Panama','-5');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('America/Pangnirtung','-4');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('America/Paramaribo','-3');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('America/Phoenix','-7');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('America/Port-au-Prince','-5');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('America/Port_of_Spain','-4');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('America/Porto_Velho','-4');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('America/Puerto_Rico','-4');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('America/Rainy_River','-5');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('America/Rankin_Inlet','-5');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('America/Recife','-3');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('America/Regina','-6');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('America/Resolute','-5');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('America/Rio_Branco','-4');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('America/Santa_Isabel','-7');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('America/Santarem','-3');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('America/Santiago','-4');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('America/Santo_Domingo','-4');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('America/Sao_Paulo','-3');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('America/Scoresbysund','0');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('America/Shiprock','-6');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('America/Sitka','-8');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('America/St_Barthelemy','-4');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('America/St_Johns','-2.5');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('America/St_Kitts','-4');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('America/St_Lucia','-4');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('America/St_Thomas','-4');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('America/St_Vincent','-4');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('America/Swift_Current','-6');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('America/Tegucigalpa','-6');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('America/Thule','-3');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('America/Thunder_Bay','-4');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('America/Tijuana','-7');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('America/Toronto','-4');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('America/Tortola','-4');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('America/Vancouver','-7');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('America/Whitehorse','-7');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('America/Winnipeg','-5');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('America/Yakutat','-8');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('America/Yellowknife','-6');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Antarctica/Casey','8');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Antarctica/Davis','7');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Antarctica/DumontDUrville','10');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Antarctica/Macquarie','11');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Antarctica/Mawson','5');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Antarctica/McMurdo','12');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Antarctica/Palmer','-4');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Antarctica/Rothera','-3');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Antarctica/South_Pole','12');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Antarctica/Syowa','3');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Antarctica/Vostok','6');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Arctic/Longyearbyen','2');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Asia/Aden','3');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Asia/Almaty','6');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Asia/Amman','3');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Asia/Anadyr','12');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Asia/Aqtau','5');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Asia/Aqtobe','5');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Asia/Ashgabat','5');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Asia/Baghdad','3');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Asia/Bahrain','3');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Asia/Baku','5');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Asia/Bangkok','7');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Asia/Beirut','3');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Asia/Bishkek','6');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Asia/Brunei','8');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Asia/Choibalsan','8');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Asia/Chongqing','8');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Asia/Colombo','5.5');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Asia/Damascus','3');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Asia/Dhaka','6');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Asia/Dili','9');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Asia/Dubai','4');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Asia/Dushanbe','5');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Asia/Gaza','3');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Asia/Harbin','8');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Asia/Ho_Chi_Minh','7');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Asia/Hong_Kong','8');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Asia/Hovd','7');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Asia/Irkutsk','9');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Asia/Jakarta','7');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Asia/Jayapura','9');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Asia/Jerusalem','3');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Asia/Kabul','4.5');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Asia/Kamchatka','12');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Asia/Karachi','5');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Asia/Kashgar','8');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Asia/Kathmandu','5.75');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Asia/Kolkata','5.5');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Asia/Krasnoyarsk','8');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Asia/Kuala_Lumpur','8');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Asia/Kuching','8');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Asia/Kuwait','3');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Asia/Macau','8');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Asia/Magadan','12');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Asia/Makassar','8');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Asia/Manila','8');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Asia/Muscat','4');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Asia/Nicosia','3');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Asia/Novokuznetsk','7');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Asia/Novosibirsk','7');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Asia/Omsk','7');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Asia/Oral','5');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Asia/Phnom_Penh','7');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Asia/Pontianak','7');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Asia/Pyongyang','9');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Asia/Qatar','3');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Asia/Qyzylorda','6');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Asia/Rangoon','6.5');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Asia/Riyadh','3');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Asia/Sakhalin','11');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Asia/Samarkand','5');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Asia/Seoul','9');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Asia/Shanghai','8');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Asia/Singapore','8');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Asia/Taipei','8');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Asia/Tashkent','5');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Asia/Tbilisi','4');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Asia/Tehran','4.5');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Asia/Thimphu','6');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Asia/Tokyo','9');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Asia/Ulaanbaatar','8');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Asia/Urumqi','8');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Asia/Vientiane','7');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Asia/Vladivostok','11');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Asia/Yakutsk','10');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Asia/Yekaterinburg','6');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Asia/Yerevan','5');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Atlantic/Azores','0');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Atlantic/Bermuda','-3');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Atlantic/Canary','1');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Atlantic/Cape_Verde','-1');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Atlantic/Faroe','1');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Atlantic/Madeira','1');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Atlantic/Reykjavik','0');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Atlantic/South_Georgia','-2');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Atlantic/St_Helena','0');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Atlantic/Stanley','-4');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Australia/Adelaide','9.5');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Australia/Brisbane','10');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Australia/Broken_Hill','9.5');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Australia/Currie','10');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Australia/Darwin','9.5');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Australia/Eucla','8.75');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Australia/Hobart','10');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Australia/Lindeman','10');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Australia/Lord_Howe','10.5');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Australia/Melbourne','10');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Australia/Perth','8');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Australia/Sydney','10');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Europe/Amsterdam','2');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Europe/Andorra','2');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Europe/Athens','3');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Europe/Belgrade','2');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Europe/Berlin','2');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Europe/Bratislava','2');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Europe/Brussels','2');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Europe/Bucharest','3');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Europe/Budapest','2');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Europe/Chisinau','3');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Europe/Copenhagen','2');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Europe/Dublin','1');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Europe/Gibraltar','2');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Europe/Guernsey','1');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Europe/Helsinki','3');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Europe/Isle_of_Man','1');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Europe/Istanbul','3');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Europe/Jersey','1');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Europe/Kaliningrad','3');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Europe/Kiev','3');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Europe/Lisbon','1');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Europe/Ljubljana','2');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Europe/London','1');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Europe/Luxembourg','2');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Europe/Madrid','2');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Europe/Malta','2');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Europe/Mariehamn','3');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Europe/Minsk','3');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Europe/Monaco','2');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Europe/Moscow','4');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Europe/Oslo','2');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Europe/Paris','2');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Europe/Podgorica','2');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Europe/Prague','2');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Europe/Riga','3');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Europe/Rome','2');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Europe/Samara','4');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Europe/San_Marino','2');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Europe/Sarajevo','2');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Europe/Simferopol','3');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Europe/Skopje','2');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Europe/Sofia','3');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Europe/Stockholm','2');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Europe/Tallinn','3');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Europe/Tirane','2');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Europe/Uzhgorod','3');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Europe/Vaduz','2');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Europe/Vatican','2');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Europe/Vienna','2');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Europe/Vilnius','3');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Europe/Volgograd','4');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Europe/Warsaw','2');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Europe/Zagreb','2');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Europe/Zaporozhye','3');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Europe/Zurich','2');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Indian/Antananarivo','3');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Indian/Chagos','6');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Indian/Christmas','7');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Indian/Cocos','6.5');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Indian/Comoro','3');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Indian/Kerguelen','5');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Indian/Mahe','4');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Indian/Maldives','5');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Indian/Mauritius','4');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Indian/Mayotte','3');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Indian/Reunion','4');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Pacific/Apia','-11');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Pacific/Auckland','12');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Pacific/Chatham','12.75');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Pacific/Chuuk','10');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Pacific/Easter','-6');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Pacific/Efate','11');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Pacific/Enderbury','13');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Pacific/Fakaofo','-10');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Pacific/Fiji','12');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Pacific/Funafuti','12');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Pacific/Galapagos','-6');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Pacific/Gambier','-9');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Pacific/Guadalcanal','11');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Pacific/Guam','10');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Pacific/Honolulu','-10');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Pacific/Johnston','-10');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Pacific/Kiritimati','14');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Pacific/Kosrae','11');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Pacific/Kwajalein','12');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Pacific/Majuro','12');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Pacific/Marquesas','-9.5');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Pacific/Midway','-11');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Pacific/Nauru','12');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Pacific/Niue','-11');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Pacific/Norfolk','11.5');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Pacific/Noumea','11');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Pacific/Pago_Pago','-11');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Pacific/Palau','9');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Pacific/Pitcairn','-8');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Pacific/Pohnpei','11');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Pacific/Port_Moresby','10');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Pacific/Rarotonga','-10');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Pacific/Saipan','10');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Pacific/Tahiti','-10');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Pacific/Tarawa','12');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Pacific/Tongatapu','13');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Pacific/Wake','12');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('Pacific/Wallis','12');
INSERT INTO AT_calendar_timezone_offset(`time_zone`,`offset`) VALUES('UTC','0');
/**********************/

INSERT INTO `language_text` VALUES ('en', '_module','calendar','Calendar',NOW(),'');
INSERT INTO `language_text` VALUES ('en', '_module','AT_ERROR_GOES_HERE','Calendar Error Message',NOW(),'');

>>>>>>> old_b/master
