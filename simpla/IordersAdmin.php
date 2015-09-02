<?PHP

require_once('api/Simpla.php');

############################################
# Class Properties displays a list of product parameters
############################################
class IordersAdmin extends Simpla
{
	function fetch()
	{
		return $this->body = $this->design->fetch('iorders.tpl');
	}
}