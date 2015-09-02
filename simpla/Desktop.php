<?PHP

require_once('api/Simpla.php');

############################################
# Class Properties displays a list of product parameters
############################################
class Desktop extends Simpla
{
	function fetch()
	{


	}

	$hello = 'Test';
	echo "123";

	$this->design->assign('hello', $hello);
	return $this->design->fetch('desktop.tpl');

}
