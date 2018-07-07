<?php

class Users Extends CI_Controller{

	function __construct(){
		parent::__construct();
		$this->load->model('User');
	}

	function index(){
		/*$data['users']=$this->User->get_users();//sto model post tha kalesei tin sinartisi get_posts
		$this->load->view('Post_index',$data);*/
		//redirect(base_url().'index.php/Users/guser');

	}

	
	function guser(){

		if($_POST)
		{ 
			$user=$this->input->post('user',true);
			$data['user']=$this->User->get_user($user);
			echo $data['user']['name'].','.$data['user']['level'].','.$data['user']['attack'].','.$data['user']['defence'].','.$data['user']['money'].','.$data['user']['health'].','.$data['user']['user']; //painei apo tin unity to username apo tin global metavliti pou exo orisei(LoggedInUsername) apo to arxeio (displaydatafromphp) me tin post request methodo kai elegxei an iparxei stin database kai meta ektupono ola to row apo to sugkekrimeno username

		}
	}

	function login(){
		$data['error'] = 0; // simenei oti den exei errors

		if($_POST){ 
			$user=$this->input->post('user',true);//pairnei to username p edose o xristis(einai idio me to $_POST)
			$password=$this->input->post('password',true);//pairnei to password p edose o xristis
			//$type=$this->input->post('charact',true);
			$user1=$this->User->login($user,$password);//,$type);
			if(!$user1){
				$data['error']=1;
				echo"lathos";

			}else{

				$this->session->set_userdata('id',$user1['id']);
				$this->session->set_userdata('user',$user1['user']);
				$this->session->set_userdata('name',$user1['name']);
				$this->session->set_userdata('money',$user1['money']);
				$this->session->set_userdata('attack',$user1['attack']);
				$this->session->set_userdata('defence',$user1['defence']);
				$this->session->set_userdata('level',$user1['level']);
				$this->session->set_userdata('xp',$user1['xp']);
				//redirect(base_url().'index.php/Users'); 
				$data['id'] = $user1['id'];
				$this->load->view('Post_index',$data);

			}

		}
		else {
		$this->load->view('Login',$data);
			
		}
	}

	


	function registerSam(){
		if($_POST){
			$data=array(
				'user'=>$_POST['user'],
				'name'=>$_POST['name'],
				'password'=>$_POST['password'],
				'charact'=>"Samurai",
				'money'=>400,
				'attack'=>10,
				'defence'=>5,
				'level'=>0,
				'health'=>400,
				'xp'=>0
				);
			$userid=$this->User->create_user($data);
			

		}
		
	}

	function registerKnight(){
		if($_POST){
			$data=array(
				'user'=>$_POST['user'],
				'name'=>$_POST['name'],
				'password'=>$_POST['password'],
				'charact'=>"Knight",
				'money'=>400,
				'attack'=>5,
				'defence'=>10,
				'level'=>0,
				'health'=>400,
				'xp'=>0
				);
			$userid=$this->User->create_user($data);
			

		}
		
	}

	function registerCol(){
		if($_POST){
			$duser=$this->input->post('user',true);
			$data=array('fight' =>1 );
			$cuser=$this->User->regcol($duser,$data);
		}
		
	}

	function displayCol(){
		if($_POST){
			$duser=$this->input->post('user',true);
			$data['users']=$this->User->get_users();
			$this->load->view('Post_index',$data);
			}
		}

		
	function fightCol(){
		if($_POST){
			$fuser=$this->input->post('user',true);
			$opponentUser=$this->input->post('opponent',true);
			$data['user']=$this->User->get_user($fuser);
			$data['opUser']=$this->User->get_user($opponentUser);
			//echo $fuser.','.$opponentUser;
			$userStat=$data['user']['attack']+$data['user']['defence']+$data['user']['health'];
			$opStat=$data['opUser']['attack']+$data['opUser']['defence']+$data['opUser']['health'];

			
			if($userStat==$opStat || $userStat>$opStat){
				$changeXp = $data['user']['xp']+1;
				$changeMoney = $data['user']['money']+200;
				$changeHealth = $data['user']['health']+100;
				$changeLevel=$data['user']['level'];
				$sep='';

				$updData= array(
					'xp' =>$changeXp,
					'money'=>$changeMoney,
					'health'=>$changeHealth
					);
				$updStats=$this->User->updatePlayerData($fuser,$updData);

				if($data['user']['xp']%3==0){
					$changeLevel=$data['user']['level']+1;
					$updlvl=array('level'=>$changeLevel);
					$updStats=$this->User->updatePlayerLevel($fuser,$updlvl);
				}
				$changeFight = $data['opUser']['fight']=0;
				$udpFight=array('fight'=>$changeFight);
				$updStats=$this->User->updatePlayerLevel($opponentUser,$udpFight);

				echo $changeLevel.','.$changeMoney.','.$changeHealth;


			}
			else{
				echo "won";

			}

		}
	}
			
	function buyWeapon(){
		$sep='';

		if($_POST)
		{ 
			$wpuser=$this->input->post('user',true);
			$wp=$this->input->post('weapon',true);
			$data['user']=$this->User->get_user($wpuser);
			$data['weapon']=$this->User->get_weapon($wp);
			if($data['user']['money']==$data['weapon']['cost'] ||$data['user']['money'] > $data['weapon']['cost'])
			{
				if($data['user']['level']==$data['weapon']['level'] || $data['user']['level']>$data['weapon']['level'])
				{
				$userCash=$data['user']['money']-$data['weapon']['cost'];
				$userAttack=$data['user']['attack']+$data['weapon']['attack'];
				$userDefence=$data['user']['defence']+$data['weapon']['defence'];

				$updDat = array(
					'money' =>$userCash,
					'attack'=>$userAttack,
					'defence'=>$userDefence
				  );
				$updStat=$this->User->updatePlayerData($wpuser,$updDat);

				echo $data['user']['name'].','.$data['user']['level'].','.$userAttack.','.$userDefence.','.$userCash.','.$data['user']['health'].','.$data['user']['user'].','.$sep;

				echo $data['weapon']['name'].','.$data['weapon']['level'].','.$data['weapon']['attack'].','.$data['weapon']['defence'].','.$data['weapon']['cost'];
			}else{
				echo"You can't buy it!";
			}
		}
	}

}
}
?>