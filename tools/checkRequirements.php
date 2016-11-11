<?php

function check_requirement($library) {
	if (!extension_loaded($library)) {
		return "[PROBLEM] You need install this \033[31m$library\033[0m." . PHP_EOL;
	}
}

function check_to_disable_function($library, $functions) {
	if (array_search($library, $functions)) {
		return "[WARNING] You need to disable this \033[33m$library\033[0m at you php.ini." . PHP_EOL;
	}
}


$functions = get_defined_functions()['internal'];
$requirements = array('mcrypt', 'mysql', 'gd');
$todisable = array('finfo_open');

foreach ($requirements as $requirement) {
	echo check_requirement($requirement);
}

foreach ($todisable as $library) {
	echo check_to_disable_function($library, $functions);
}

?>