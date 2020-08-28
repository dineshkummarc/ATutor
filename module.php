<?php
/*******
 * doesn't allow this file to be loaded with a browser.
 */
if (!defined('AT_INCLUDE_PATH')) { exit; }

/******
 * this file must only be included within a Module obj
 */
if (!isset($this) || (isset($this) && (strtolower(get_class($this)) != 'module'))) { exit(__FILE__ . ' is not a Module'); }

<<<<<<< HEAD
/*******
 * assign the instructor and admin privileges to the constants.
 */
define('AT_PRIV_OPENMEETINGS',       $this->getPrivilege());
define('AT_ADMIN_PRIV_OPENMEETINGS', $this->getAdminPrivilege());
=======

/******
* modules sub-content to display on course home detailed view
*/
$this->_list['calendar'] = array('title_var'=>'ATutor Calendar','file'=>'mods/calendar/sublinks.php');

/*******
 * assign the instructor and admin privileges to the constants.
 */
define('AT_PRIV_CALENDAR',       $this->getPrivilege());
define('AT_ADMIN_PRIV_CALENDAR', $this->getAdminPrivilege());
global $_custom_head;
$_custom_head .='<link href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/themes/base/jquery-ui.css" rel="stylesheet" type="text/css"/><link href="'.AT_BASE_HREF.'mods/calendar/css/jquery.tooltip.css" rel="stylesheet" type="text/css"/><script src="http://ajax.googleapis.com/ajax/libs/jquery/1.5/jquery.min.js"></script><script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js"></script>'."\n".'<script type="text/javascript" src="'.AT_BASE_HREF.'mods/calendar/js/date.js"></script>'."\n".'<script type="text/javascript" src="'.AT_BASE_HREF.'mods/calendar/js/datePicker.js"></script>'."\n".'<script type="text/javascript" src="'.AT_BASE_HREF.'mods/calendar/js/unserialize.js"></script>'."\n".'<script type="text/javascript" src="'.AT_BASE_HREF.'mods/calendar/js/calendar.js"></script>'."\n".'<script type="text/javascript" src="'.AT_BASE_HREF.'mods/calendar/js/jquery.tools.min.js"></script>'."\n".'<script type="text/javascript" src="'.AT_BASE_HREF.'mods/calendar/js/strtotime.js"></script>'."\n".'<script type="text/javascript" src="'.AT_BASE_HREF.'mods/calendar/js/phpdate.js"></script>'."\n";
/*******
 * create a side menu box/stack.
 */
$this->_stacks['calendar'] = array('title_var'=>'ATutor Calendar', 'file'=>'mods/calendar/side_menu.inc.php');
// ** possible alternative: **
// $this->addStack('calendar', array('title_var' => 'calendar', 'file' => './side_menu.inc.php');
>>>>>>> old_b/master

/*******
 * if this module is to be made available to students on the Home or Main Navigation.
 */
<<<<<<< HEAD
$_group_tool = $_student_tool = 'mods/openmeetings/index.php';

/*******
 * add the admin pages when needed.
 */
if (admin_authenticate(AT_ADMIN_PRIV_OPENMEETINGS, TRUE) || admin_authenticate(AT_ADMIN_PRIV_ADMIN, TRUE)) {
	$this->_pages[AT_NAV_ADMIN] = array('mods/openmeetings/openmeetings.php');
	$this->_pages['mods/openmeetings/openmeetings.php']['title_var'] = 'openmeetings';
	$this->_pages['mods/openmeetings/openmeetings.php']['parent']    = AT_NAV_ADMIN;
}

/*******
 * instructor Manage section:
 */
$this->_pages['mods/openmeetings/openmeetings_instructor.php']['title_var'] = 'openmeetings_course_meetings';
$this->_pages['mods/openmeetings/openmeetings_instructor.php']['parent']   = 'tools/index.php';
=======
$_student_tool = 'mods/calendar/index.php';
// ** possible alternative: **
// $this->addTool('./index.php');

/*******
 * add the admin pages when needed.
 
if (admin_authenticate(AT_ADMIN_PRIV_CALENDAR, TRUE) || admin_authenticate(AT_ADMIN_PRIV_ADMIN, TRUE)) {

	$this->_pages[AT_NAV_ADMIN] = array('mods/calendar/index_admin.php');
	$this->_pages['mods/calendar/index_admin.php']['title_var'] = 'ATutor Calendar';
	$this->_pages['mods/calendar/index_admin.php']['parent']    = AT_NAV_ADMIN;
}*/

/*******
 * instructor Manage section:
 
$this->_pages['mods/calendar/index_instructor.php']['title_var'] = 'ATutor Calendar';
$this->_pages['mods/calendar/index_instructor.php']['parent']   = 'tools/index.php';
*/

>>>>>>> old_b/master

/*******
 * student page.
 */
<<<<<<< HEAD
$this->_pages['mods/openmeetings/index.php']['title_var'] = 'openmeetings';
$this->_pages['mods/openmeetings/index.php']['img']       = 'mods/openmeetings/openmeetings_logo.png';

$this->_pages['mods/openmeetings/view_meetings.php']['title_var'] = 'openmeetings_view_meetings';
$this->_pages['mods/openmeetings/view_meetings.php']['parent'] = 'mods/openmeetings/index.php';
$this->_pages['mods/openmeetings/add_group_meetings.php']['title_var'] = 'openmeetings_grp_meetings';
$this->_pages['mods/openmeetings/add_group_meetings.php']['parent'] = 'mods/openmeetings/index.php';
$this->_pages['mods/openmeetings/openmeetings_delete.php']['title_var'] = 'openmeetings_delete';
$this->_pages['mods/openmeetings/openmeetings_delete.php']['parent'] = 'mods/openmeetings/index.php';
$this->_pages['mods/openmeetings/openmeetings_group.php']['title_var'] = 'openmeetings_grp_meetings';
$this->_pages['mods/openmeetings/openmeetings_group.php']['parent'] = 'mods/openmeetings/index.php';

/*******
 * Group functions
 */
function openmeetings_get_group_url($group_id) {
	return 'mods/openmeetings/openmeetings_group.php?gid='.$group_id;
}
?>
=======
$this->_pages['mods/calendar/index.php']['title_var'] = 'ATutor Calendar';
$this->_pages['mods/calendar/index.php']['img']       = 'mods/calendar/img/calendar.png';

/*******
 * export_import page
 */
$this->_pages['mods/calendar/export_import.php']['title_var']='Export Calendar to iCal Format';

/*TODO my start page pages 
$this->_pages[AT_NAV_START]  = array('mods/calendar/index_mystart.php');
$this->_pages['mods/calendar/index_mystart.php']['title_var'] = 'calendar';
$this->_pages['mods/calendar/index_mystart.php']['parent'] = 'users/index.php';
$this->_pages['users/index.php']['children'] = array('mods/calendar/index_mystart.php');
*/

?>
>>>>>>> old_b/master
