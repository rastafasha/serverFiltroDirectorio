<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Api_model_datosvictima extends CI_Model 
{
	
	
// blog Get
public function get_datosvictimas($featured, $recentpost)
{
    $this->db->select('d.*');
    $this->db->from('datosvictimas d');
    $this->db->join('users u', 'u.id=d.user_id');
    $this->db->join('pais p', 'p.code=d.pais_code', 'left');
    
    $this->db->order_by('d.id', 'desc');

   
    if($recentpost){ 
        $this->db->order_by('d.id', 'asc');
        $this->db->limit($recentpost);
    }
    $query = $this->db->get();
    return $query->result();
}

public function get_datosvictima($code)
{

    $this->db->select('d.*');
    $this->db->from('datosvictimas d');
    $this->db->join('pais p', 'p.code=d.pais_code', 'left');

    $this->db->where('d.pais_code', $code);
    $query = $this->db->get();
    return $query->row();
}
//

//blog gets
public function get_admin_datosvictimas()
{
    $this->db->select('d.*, p.code');
    $this->db->from('datosvictimas d');
    $this->db->join('users u', 'u.id=d.user_id');
    $this->db->join('pais p', 'p.code=d.pais_code', 'left');
    $this->db->order_by('d.created_at', 'desc');
    $query = $this->db->get();
    return $query->result();
}

public function get_admin_datosvictima($id)
{

    $this->db->select('d.*');
    $this->db->from('datosvictimas d');
    $this->db->join('users u', 'u.id=d.user_id');
    $this->db->join('pais p', 'p.code=d.pais_code', 'left');
    $this->db->where('d.id', $id);
    
    $query = $this->db->get();
    return $query->row();
}
//





// CRUD blog

public function insertDatosvictima($datosvictimaData)
	{
		$this->db->insert('datosvictimas', $datosvictimaData);
		return $this->db->insert_id();
	}

	public function updateDatosvictima($id, $datosvictimaData)
	{
		$this->db->where('id', $id);
		$this->db->update('datosvictimas', $datosvictimaData);
	}

	public function deleteDatosvictima($id)
	{
		$this->db->where('id', $id);
		$this->db->delete('datosvictimas');
	}
//



	
}
