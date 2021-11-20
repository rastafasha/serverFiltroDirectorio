<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Api_model_crimeneslh extends CI_Model 
{
	
	
// blog Get
public function get_crimeneslhs($featured, $recentpost)
{
    $this->db->select('c.*, p.id, p.code');
    $this->db->from('crimeneslhs c');
    $this->db->join('users u', 'u.id=c.user_id');
    $this->db->join('pais p', 'p.code=c.pais_code', 'left');
    
    $this->db->order_by('c.id', 'desc');

   
    
    if($recentpost){ 
        $this->db->order_by('c.id', 'asc');
        $this->db->limit($recentpost);
    }
    $query = $this->db->get();
    return $query->result();
}

public function get_crimeneslh($code)
{

    $this->db->select('c.*, p.id, p.code');
    $this->db->from('crimeneslhs c');
    $this->db->join('users u', 'u.id=c.user_id');
    $this->db->join('pais p', 'p.code=c.pais_code', 'left');

    $this->db->where('c.pais_code', $code);
    $query = $this->db->get();
    return $query->row();
}
//

//blog gets
public function get_admin_crimeneslhs()
{
    $this->db->select('c.*, p.id, p.code');
    $this->db->from('crimeneslhs c');
    $this->db->join('users u', 'u.id=d.user_id');
    $this->db->join('pais pais', 'pais.code=c.pais_code', 'left');
    $this->db->order_by('c.created_at', 'desc');
    $query = $this->db->get();
    return $query->result();
}

public function get_admin_crimeneslh($id)
{
    $this->db->select('c.*');
    $this->db->from('crimeneslhs c');
    $this->db->join('users u', 'u.id=c.user_id');
    $this->db->join('pais pais', 'pais.code=c.pais_code', 'left');
    $this->db->where('c.id', $id);
    $query = $this->db->get();
    return $query->row();
}
//





// CRUD blog

public function insertCrimeneslh($crimeneslhData)
	{
		$this->db->insert('crimeneslhs', $crimeneslhData);
		return $this->db->insert_id();
	}

	public function updateCrimeneslh($id, $crimeneslhData)
	{
		$this->db->where('id', $id);
		$this->db->update('crimeneslhs', $crimeneslhData);
	}

	public function deleteCrimeneslh($id)
	{
		$this->db->where('id', $id);
		$this->db->delete('crimeneslhs');
	}
//



	
}
