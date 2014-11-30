<?php
defined('_JEXEC') or die('Restricted access');

jimport('joomla.database.table');

class HelloWorldTableHelloWorld extends JTable
{
	function __construct(&$db)
	{
		parent::__construct('#__helloworld', 'id', $db);
	}
}