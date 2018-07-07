<?php 

class User Extends CI_Model{

	function create_user($data){
		$this->db->insert('unityusers',$data);
	}

	function login($user,$password){
		$where=array(
			'user'=>$user,
			'password'=>$password
			);
		$this->db->select()->from('unityusers')->where($where);
		$query=$this->db->get();
		return $query->first_row('array');
	}

	function get_user($user){
		$this->db->select()->from('unityusers')->where(array('user'=>$user));
		$query=$this->db->get();
		return $query->first_row('array');
	}

	function get_users($num=20,$start=0){// tha paroume 20 posts k tha arxisoume apo to proto
		$this->db->select()->from('unityusers')->limit($num,$start)->where(array('fight'=>1))->order_by("id");
		$query=$this->db->get();
		return $query->result_array();
	}

	function regcol($duser,$data){

		$this->db->where('user',$duser);
		$this->db->update('unityusers',$data);
	}

	function updatePlayerData($fuser,$updData){
		$this->db->where('user',$fuser);
		$this->db->update('unityusers',$updData);
	}

	function updatePlayerLevel($fuser,$updlvl){
		$this->db->where('user',$fuser);
		$this->db->update('unityusers',$updlvl);
	}

	function deletePlayerFight($opponentUser,$updFight){
		$this->db->where('user',$opponentUser);
		$this->db->update('unityusers',$updFight);
	}
	
	function get_weapon($weapon){
		$this->db->select()->from('weapons')->where(array('name'=>$weapon));
		$query=$this->db->get();
		return $query->first_row('array');
	}
}



?>