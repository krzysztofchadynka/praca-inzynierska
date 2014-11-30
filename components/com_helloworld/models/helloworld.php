<?php
defined('_JEXEC') or die('Restricted access');

jimport('joomla.application.component.modelitem');

class HelloWorldModelHelloWorld extends JModelItem
{
	protected $messages;
	
	public function getTable($type="HelloWorld", $prefix="HelloWorldTable", $config=array())
	{
		return JTable::getInstance($type, $prefix, $config);
	}
	
	public function getMsg($id = 1)
	{
		if (!is_array($this->messages))
			$this->messages = array();
		
		if (!isset($this->messages[$id]))
		{
			$jinput = JFactory::getApplication()->input;
			$id = $jinput->get('id', 1, 'INT');
			
			$table = $this->getTable();
			$table->load($id);
			
			$this->messages[$id] = $table->greeting;
		}
		
		return $this->messages[$id];
	}
}