<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Api_model_violacionesddhh extends CI_Model 
{
	
	
// blog Get
public function get_violacionesddhhs($featured, $recentpost)
{
    $this->db->select('v.*, p.id, p.code');
    $this->db->from('violacionesddhhs v');
    $this->db->join('users u', 'u.id=v.user_id');
    $this->db->join('pais p', 'p.code=v.pais_code', 'left');
    
    $this->db->order_by('v.id', 'desc');
    
    if($recentpost){ 
        $this->db->order_by('v.id', 'asc');
        $this->db->limit($recentpost);
    }
    $query = $this->db->get();
    return $query->result();
}

public function get_violacionesddhh($code)
{
    $this->db->select('v.*, p.id, p.code');
    $this->db->from('violacionesddhhs v');
    $this->db->join('users u', 'u.id=v.user_id');
    $this->db->join('pais p', 'p.code=v.pais_code', 'left');

    
    $this->db->where('v.pais_code', $code);
    $query = $this->db->get();
    return $query->row();
}
//

//blog gets
public function get_admin_violacionesddhhs()
{
    
    $this->db->select('v.*, p.id, p.code');
    $this->db->from('violacionesddhhs v');
    $this->db->join('users u', 'u.id=d.user_id');
    $this->db->join('pais p', 'p.code=v.pais_code', 'left');
    $this->db->order_by('v.created_at', 'desc');
    $query = $this->db->get();
    return $query->result();
}

public function get_admin_violacionesddhh($id)
{
    
    $this->db->select('v.*, p.id, p.code');
    $this->db->from('violacionesddhhs v');
    $this->db->join('users u', 'u.id=v.user_id');
    $this->db->join('pais p', 'p.code=v.pais_code', 'left');
    $this->db->where('v.id', $id);
    
    $query = $this->db->get();
    return $query->row();
}
//





// CRUD blog

public function insertViolacionesddhh($violacionesddhhData)
	{
		$this->db->insert('violacionesddhhs', $violacionesddhhData);
		return $this->db->insert_id();
	}

	public function updateViolacionesddhh($id, $violacionesddhhData)
	{
		$this->db->where('id', $id);
		$this->db->update('violacionesddhhs', $violacionesddhhData);
	}

	public function deleteViolacionesddhh($id)
	{
		$this->db->where('id', $id);
		$this->db->delete('violacionesddhhs');
	}
//



	
}
