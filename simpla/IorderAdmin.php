<?PHP

require_once('api/Simpla.php');

############################################
# Class Properties displays a list of product parameters
############################################
class IorderAdmin extends Simpla
{
	function fetch()
	{
		$iorder = new stdClass;
		if($this->request->method('post'))
		{
			$iorder->id = $this->request->post('id', 'integer');
			$iorder->name = $this->request->post('name');
			echo $iorder->id;
			echo $iorder->name;
		}

		return $this->body = $this->design->fetch('iorder.tpl');
	}
}