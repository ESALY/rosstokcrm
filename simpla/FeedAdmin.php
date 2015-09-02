<?PHP

require_once('api/Simpla.php');

############################################
# Class Properties displays a list of product parameters
############################################
class FeedAdmin extends Simpla
{
	function fetch()
	{

		/*Заметки по покупателю*/
		$id = "";
		$row_fillter = 'note';

		$user_note = $this->users->get_uprice(array('userid'=>$id, 'rowtype'=>$row_fillter));

		echo $user_note->date;

		$this->design->assign('user_note', $user_note);

		/*Заметки по покупателю@*/

		/*Лента новостей*/

		/* Основная переменная для ленты новостей */
		$feed = array();

		$this->design->assign('feed', $feed);

		/*Лента новостей@*/

		/*Дизайн*/
		return $this->body = $this->design->fetch('feed.tpl');
	}
}