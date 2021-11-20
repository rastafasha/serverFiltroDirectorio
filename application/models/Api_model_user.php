<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class api_model_user extends CI_Model 
{
	
	// Users get

public function get_users($featured, $recentpost)
{
	$this->db->select('*');
	$this->db->from('users user');
	$this->db->where('user.is_active', 1);

	$query = $this->db->get();
	return $query->result();
}

public function get_user($id)
{
	$this->db->select('user.*');
	$this->db->from('users user');
	$this->db->where('user.id', $id);
	$query = $this->db->get();
	return $query->row();
}


//

	// User gets

    public function get_admin_users()
    {
        $this->db->select('*');
        $this->db->from('users user');
        $this->db->join('users u', 'u.id=user.id');
        $this->db->order_by('user.created_at', 'desc');
        $query = $this->db->get();
        return $query->result();
    }
    
    public function get_admin_user($id)
    {
        $this->db->select('user.*');
        $this->db->from('users user');
        $this->db->join('users u', 'u.id=user.id');
        $this->db->where('user.id', $id);
        $query = $this->db->get();
        return $query->row();
    }
    //


    // CRUD usuario

	public function insertUser($userData)
	{
		$this->db->insert('users', $userData);
		return $this->db->insert_id();
	}

	public function updateUser($id, $userData)
	{
		$this->db->where('id', $id);
		$this->db->update('users', $userData);
	}

	public function deleteUser($id)
	{
		$this->db->where('id', $id);
		$this->db->delete('users');
	}
	//



	
}
