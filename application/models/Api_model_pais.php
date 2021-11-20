<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Api_model_pais extends CI_Model 
{
	
	
public function get_paises($featured, $recentpost)
{
    $this->db->select('country.*');
    $this->db->from('countries country');
    $this->db->join('users u', 'u.id=country.user_id');
    $this->db->join('pais p', 'p.code=country.code', 'left');
    $this->db->order_by('country.created_at', 'desc');

    
    if($recentpost){ 
        $this->db->order_by('country.created_at', 'asc');
        $this->db->limit($recentpost);
    }
    $query = $this->db->get();
    return $query->result();
}

public function get_pais($code)
{
    $this->db->select('country.*, p.code');
    $this->db->from('countries country');
    $this->db->join('users u', 'u.id=country.user_id');
    $this->db->join('pais p', 'p.code=country.code', 'left');
    $this->db->where('country.code', $code);
    $query = $this->db->get();
    return $query->row();
}

public function get_paisAll($code)
{
    $this->db->select('country.*,');
    $this->db->from('countries country');
    $this->db->join('users u', 'u.id=pais.user_id');
    $this->db->join('crimeneslhs c', 'coun.code=c.pais_code', 'left');
    $this->db->join('datosvictimas d', 'coun.code=d.pais_code', 'left');
    $this->db->join('violacionesddhhs v', 'coun.code=v.pais_code', 'left');
    $this->db->where('country.code', $code);
    $query = $this->db->get();
    return $query->row();
}
//

//blog gets
public function get_admin_paises()
{
    $this->db->select('country.*');
    $this->db->from('countries country');
    $this->db->join('users u', 'u.id=country.user_id');
    $this->db->join('pais p', 'p.code=country.code', 'left');
    $this->db->order_by('country.created_at', 'desc');
    $query = $this->db->get();
    return $query->result();
}

public function get_admin_pais($id)
{
    $this->db->select('country.*');
    $this->db->from('countries country');
    $this->db->join('users u', 'u.id=country.user_id');
    $this->db->join('pais p', 'p.code=country.code');
    $this->db->where('country.id', $id);
    $query = $this->db->get();
    return $query->row();
}
//

public function get_categoryCoutries()
	{
		$query = $this->db->get('pais');
		return $query->result();
	}






// CRUD blog

public function insertPais($paisData)
	{
		$this->db->insert('countries', $paisData);
		return $this->db->insert_id();
	}

	public function updatePais($id, $paisData)
	{
		$this->db->where('id', $id);
		$this->db->update('countries', $paisData);
	}

	public function deletePais($id)
	{
		$this->db->where('id', $id);
		$this->db->delete('countries');
	}
//



	
}
