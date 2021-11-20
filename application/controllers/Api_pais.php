<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Api_Pais extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->model('api_model');
		$this->load->model('api_model_pais');
		$this->load->helper('url');
		$this->load->helper('text');
	}

	public function paises()
	{
		header("Access-Control-Allow-Origin: *");

		$paises = $this->api_model_pais->get_paises($featured=false, $recentpost=false);

		$posts = array();
		if(!empty($paises)){
			foreach($paises as $pais){


				$posts[] = array(
					'id' => $pais->id,
					'title' => $pais->title,
					'code' => $pais->code,
					'informacion' => $pais->informacion,
					'ciudades' => $pais->ciudades,
					'isActive' => $pais->isActive,
					'created_at' => $pais->created_at
				);
			}
		}

		

		$this->output
			->set_content_type('application/json')
			->set_output(json_encode($posts));
	}

	public function pais($code)
	{
		header("Access-Control-Allow-Origin: *");
		
		$pais = $this->api_model_pais->get_pais($code);
		$post = array(
			'id' => $pais->id,
			'code' => $pais->code,
			'user_id' => $pais->user_id,
			'title' => $pais->title,
			'informacion' => $pais->informacion,
			'ciudades' => $pais->ciudades,
			'isActive' => $pais->isActive,
			'created_at' => $pais->created_at
		);

		

		$response = array($post );
		
		$this->output
			->set_content_type('application/json')
			->set_output(json_encode($response));
	}


	
	


	//


	//CRUD blog

	public function adminPaises()
	{
		header("Access-Control-Allow-Origin: *");
		header("Access-Control-Allow-Headers: authorization, Content-Type");

		$token = $this->input->get_request_header('Authorization');

		$isValidToken = $this->api_model->checkToken($token);

		$posts = array();
		if($isValidToken) {
			$paises = $this->api_model_pais->get_admin_paises();
			foreach($paises as $pais) {
				$posts[] = array(
					'id' => $pais->id,
					'code' => $pais->code,
					'title' => $pais->title,
					'informacion' => $pais->informacion,
					'ciudades' => $pais->ciudades,
					'isActive' => $pais->isActive,
					'created_at' => $pais->created_at
				);
			}

			$this->output
				->set_status_header(200)
				->set_content_type('application/json')
				->set_output(json_encode($posts)); 
		}
	}

	public function adminPais($id)
	{
		header("Access-Control-Allow-Origin: *");
		header("Access-Control-Allow-Headers: authorization, Content-Type");

		$token = $this->input->get_request_header('Authorization');

		$isValidToken = $this->api_model->checkToken($token);

		if($isValidToken) {

			$pais = $this->api_model_pais->get_admin_pais($id);

			$post = array(
					'id' => $pais->id,
					'code' => $pais->code,
					'title' => $pais->title,
					'informacion' => $pais->informacion,
					'ciudades' => $pais->ciudades,
					'isActive' => $pais->isActive,
					'created_at' => $pais->created_at
			);

			

			$this->output
				->set_status_header(200)
				->set_content_type('application/json')
				->set_output(json_encode($post)); 
		}
	}

	public function createPais()
	{
		header("Access-Control-Allow-Origin: *");
		header("Access-Control-Request-Headers: GET,POST,OPTIONS,DELETE,PUT");
		header("Access-Control-Allow-Headers: authorization, Content-Type");

		$token = $this->input->get_request_header('Authorization');

		$isValidToken = $this->api_model->checkToken($token);

		if($isValidToken) {

			$title = $this->input->post('title');
			$code = $this->input->post('code');
			$informacion = $this->input->post('informacion');
			$ciudades = $this->input->post('ciudades');
			$isActive = $this->input->post('isActive');

			$filename = NULL;

			$isUploadError = FALSE;


			if( ! $isUploadError) {
	        	$paisData = array(
					'user_id' => 1,
					'title' => $title,
					'code' => $code,
					'informacion' => $informacion,
					'ciudades' => $ciudades,
					'isActive' => $isActive,
					'created_at' => date('Y-m-d H:i:s', time())
				);

				$id = $this->api_model_pais->insertPais($paisData);

				$response = array(
					'status' => 'success'
				);
			}

			$this->output
				->set_status_header(200)
				->set_content_type('application/json')
				->set_output(json_encode($response)); 
		}
	}

	public function updatePais($id)
	{
		header("Access-Control-Allow-Origin: *");
		header("Access-Control-Allow-Headers: authorization, Content-Type");
		header("Access-Control-Allow-Methods: GET, POST, OPTIONS, PUT, DELETE");

		$token = $this->input->get_request_header('Authorization');

		$isValidToken = $this->api_model->checkToken($token);

		if($isValidToken) {

			$pais = $this->api_model_pais->get_admin_pais($id);

			$title = $this->input->post('title');
			$code = $this->input->post('code');
			$informacion = $this->input->post('informacion');
			$ciudades = $this->input->post('ciudades');
			$isActive = $this->input->post('isActive');

			$isUploadError = FALSE;

			if( ! $isUploadError) {
	        	$paisData = array(
					'user_id' => 1,
					'title' => $title,
					'code' => $code,
					'informacion' => $informacion,
					'ciudades' => $ciudades,
					'isActive' => $isActive
				);

				$this->api_model_pais->updatePais($id, $paisData);

				$response = array(
					'status' => 'success'
				);
           	}

			$this->output
				->set_status_header(200)
				->set_content_type('application/json')
				->set_output(json_encode($response)); 
		}
	}

	public function deletePais($id)
	{
		header('Access-Control-Allow-Origin: *');
        header("Access-Control-Allow-Methods: GET, POST, OPTIONS, PUT, DELETE");
		header("Access-Control-Allow-Headers: authorization, Content-Type");

		$token = $this->input->get_request_header('Authorization');

		$isValidToken = $this->api_model->checkToken($token);

		if($isValidToken) {

			$pais = $this->api_model_pais->get_admin_pais($id);


			$this->api_model_pais->deletePais($id);

			$response = array(
				'status' => 'success'
			);

			$this->output
				->set_status_header(200)
				->set_content_type('application/json')
				->set_output(json_encode($response)); 
		}
	}
	//


	public function countries()
	{
		header("Access-Control-Allow-Origin: *");
		header("Access-Control-Allow-Headers: authorization, Content-Type");

		$token = $this->input->get_request_header('Authorization');

		$isValidToken = $this->api_model->checkToken($token);

		if($isValidToken) {
			$countries = $this->api_model_pais->get_categoryCoutries();

			$country = array();
			if(!empty($countries)){
				foreach($countries as $coun){
					$country[] = array(
						'id' => $coun->id,
						'title' => $coun->title,
						'code' => $coun->code
					);
				}
			}
	
			$this->output
				->set_content_type('application/json')
				->set_output(json_encode($country));

		}


		
	}


	
	
}
