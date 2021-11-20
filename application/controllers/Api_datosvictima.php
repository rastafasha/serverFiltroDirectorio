<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Api_Datosvictima extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->model('api_model');
		$this->load->model('api_model_datosvictima');
		$this->load->helper('url');
		$this->load->helper('text');
	}

	public function datosvictimas()
	{
		header("Access-Control-Allow-Origin: *");

		$datosvictimas = $this->api_model_datosvictima->get_datosvictimas($featured=false, $recentpost=false);

		$posts = array();
		if(!empty($datosvictimas)){
			foreach($datosvictimas as $datosvictima){


				$posts[] = array(
					'id' => $datosvictima->id,
					'pais_code' => $datosvictima->pais_code,
					'numDatosvictimas' => $datosvictima->numDatosvictimas,
					'generoVictimasHombre' => $datosvictima->generoVictimasHombre,
					'generoVictimasMujer' => $datosvictima->generoVictimasMujer,
					'edadVictimaNino' => $datosvictima->edadVictimaNino,
					'edadVictimaJoven' => $datosvictima->edadVictimaJoven,
					'edadVictimaAdulto' => $datosvictima->edadVictimaAdulto,
					'edadVictimaOld' => $datosvictima->edadVictimaOld,
					'estatusMigratorioRegular' => $datosvictima->estatusMigratorioRegular,
					'estatusMigratorioIrregular' => $datosvictima->estatusMigratorioIrregular,
					'estatusConsulado' => $datosvictima->estatusConsulado,
					'estadoIntegridad' => $datosvictima->estadoIntegridad,
					'created_at' => $datosvictima->created_at
				);
			}
		}

		$this->output
			->set_content_type('application/json')
			->set_output(json_encode($posts));
	}

	
	public function datosvictima($code)
	{
		header("Access-Control-Allow-Origin: *");
		
		$datosvictima = $this->api_model_datosvictima->get_datosvictima($code);


		$post = array(
			'id' => $datosvictima->id,
					'pais_code' => $datosvictima->pais_code,
					'numDatosvictimas' => $datosvictima->numDatosvictimas,
					'generoVictimasHombre' => $datosvictima->generoVictimasHombre,
					'generoVictimasMujer' => $datosvictima->generoVictimasMujer,
					'edadVictimaNino' => $datosvictima->edadVictimaNino,
					'edadVictimaJoven' => $datosvictima->edadVictimaJoven,
					'edadVictimaAdulto' => $datosvictima->edadVictimaAdulto,
					'edadVictimaOld' => $datosvictima->edadVictimaOld,
					'estatusMigratorioRegular' => $datosvictima->estatusMigratorioRegular,
					'estatusMigratorioIrregular' => $datosvictima->estatusMigratorioIrregular,
					'estatusConsulado' => $datosvictima->estatusConsulado,
					'estadoIntegridad' => $datosvictima->estadoIntegridad,
					'created_at' => $datosvictima->created_at
		);
		
		$this->output
			->set_content_type('application/json')
			->set_output(json_encode($post));
	}


	//


	//CRUD 

	public function adminDatosvictimas()
	{
		header("Access-Control-Allow-Origin: *");
		header("Access-Control-Allow-Headers: authorization, Content-Type");

		$token = $this->input->get_request_header('Authorization');

		$isValidToken = $this->api_model->checkToken($token);

		$posts = array();
		if($isValidToken) {
			$datosvictimas = $this->api_model_datosvictima->get_admin_datosvictimas();
			foreach($datosvictimas as $datosvictima) {
				$posts[] = array(
					'id' => $datosvictima->id,
					'pais_code' => $datosvictima->pais_code,
					'numDatosvictimas' => $datosvictima->numDatosvictimas,
					'generoVictimasHombre' => $datosvictima->generoVictimasHombre,
					'generoVictimasMujer' => $datosvictima->generoVictimasMujer,
					'edadVictimaNino' => $datosvictima->edadVictimaNino,
					'edadVictimaJoven' => $datosvictima->edadVictimaJoven,
					'edadVictimaAdulto' => $datosvictima->edadVictimaAdulto,
					'edadVictimaOld' => $datosvictima->edadVictimaOld,
					'estatusMigratorioRegular' => $datosvictima->estatusMigratorioRegular,
					'estatusMigratorioIrregular' => $datosvictima->estatusMigratorioIrregular,
					'estatusConsulado' => $datosvictima->estatusConsulado,
					'estadoIntegridad' => $datosvictima->estadoIntegridad,
					'created_at' => $datosvictima->created_at
				);
			}

			$this->output
				->set_status_header(200)
				->set_content_type('application/json')
				->set_output(json_encode($posts)); 
		}
	}

	public function adminDatosvictima($id)
	{
		header("Access-Control-Allow-Origin: *");
		header("Access-Control-Allow-Headers: authorization, Content-Type");

		$token = $this->input->get_request_header('Authorization');

		$isValidToken = $this->api_model->checkToken($token);

		if($isValidToken) {

			$datosvictima = $this->api_model_datosvictima->get_admin_datosvictima($id);

			$post = array(
				'id' => $datosvictima->id,
				'pais_code' => $datosvictima->pais_code,
					'numDatosvictimas' => $datosvictima->numDatosvictimas,
					'generoVictimasHombre' => $datosvictima->generoVictimasHombre,
					'generoVictimasMujer' => $datosvictima->generoVictimasMujer,
					'edadVictimaNino' => $datosvictima->edadVictimaNino,
					'edadVictimaJoven' => $datosvictima->edadVictimaJoven,
					'edadVictimaAdulto' => $datosvictima->edadVictimaAdulto,
					'edadVictimaOld' => $datosvictima->edadVictimaOld,
					'estatusMigratorioRegular' => $datosvictima->estatusMigratorioRegular,
					'estatusMigratorioIrregular' => $datosvictima->estatusMigratorioIrregular,
					'estatusConsulado' => $datosvictima->estatusConsulado,
					'estadoIntegridad' => $datosvictima->estadoIntegridad,
					'created_at' => $datosvictima->created_at
			);
			

			$this->output
				->set_status_header(200)
				->set_content_type('application/json')
				->set_output(json_encode($post)); 
		}
	}

	public function createDatosvictima()
	{
		header("Access-Control-Allow-Origin: *");
		header("Access-Control-Request-Headers: GET,POST,OPTIONS,DELETE,PUT");
		header("Access-Control-Allow-Headers: authorization, Content-Type");

		$token = $this->input->get_request_header('Authorization');

		$isValidToken = $this->api_model->checkToken($token);

		if($isValidToken) {

			$pais_code = $this->input->post('pais_code');
			$numDatosvictimas = $this->input->post('numDatosvictimas');
			$generoVictimasHombre = $this->input->post('generoVictimasHombre');
			$generoVictimasMujer = $this->input->post('generoVictimasMujer');
			$edadVictimaNino = $this->input->post('edadVictimaNino');
			$edadVictimaJoven = $this->input->post('edadVictimaJoven');
			$edadVictimaAdulto = $this->input->post('edadVictimaAdulto');
			$edadVictimaOld = $this->input->post('edadVictimaOld');
			$estatusMigratorioRegular = $this->input->post('estatusMigratorioRegular');
			$estatusMigratorioIrregular = $this->input->post('estatusMigratorioIrregular');
			$estatusConsulado = $this->input->post('estatusConsulado');
			$estadoIntegridad = $this->input->post('estadoIntegridad');

			$filename = NULL;

			$isUploadError = FALSE;

			if( ! $isUploadError) {
	        	$datosvictimaData = array(
					'user_id' => 1,
					'pais_code' => $pais_code,
					'numDatosvictimas' => $numDatosvictimas,
					'generoVictimasHombre' => $generoVictimasHombre,
					'generoVictimasMujer' => $generoVictimasMujer,
					'edadVictimaNino' => $edadVictimaNino,
					'edadVictimaJoven' => $edadVictimaJoven,
					'edadVictimaAdulto' => $edadVictimaAdulto,
					'edadVictimaOld' => $edadVictimaOld,
					'estatusMigratorioRegular' => $estatusMigratorioRegular,
					'estatusMigratorioIrregular' => $estatusMigratorioIrregular,
					'estatusConsulado' => $estatusConsulado,
					'estadoIntegridad' => $estadoIntegridad,
					'created_at' => date('Y-m-d H:i:s', time())
				);

				$id = $this->api_model_datosvictima->insertDatosvictima($datosvictimaData);

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

	public function updateDatosvictima($id)
	{
		header("Access-Control-Allow-Origin: *");
		header("Access-Control-Allow-Headers: authorization, Content-Type");
		header("Access-Control-Allow-Methods: GET, POST, OPTIONS, PUT, DELETE");

		$token = $this->input->get_request_header('Authorization');

		$isValidToken = $this->api_model->checkToken($token);

		if($isValidToken) {

			$datosvictima = $this->api_model_datosvictima->get_admin_datosvictima($id);

			$pais_code = $this->input->post('pais_code');
			$numDatosvictimas = $this->input->post('numDatosvictimas');
			$generoVictimasHombre = $this->input->post('generoVictimasHombre');
			$generoVictimasMujer = $this->input->post('generoVictimasMujer');
			$edadVictimaNino = $this->input->post('edadVictimaNino');
			$edadVictimaJoven = $this->input->post('edadVictimaJoven');
			$edadVictimaAdulto = $this->input->post('edadVictimaAdulto');
			$edadVictimaOld = $this->input->post('edadVictimaOld');
			$estatusMigratorioRegular = $this->input->post('estatusMigratorioRegular');
			$estatusMigratorioIrregular = $this->input->post('estatusMigratorioIrregular');
			$estatusConsulado = $this->input->post('estatusConsulado');
			$estadoIntegridad = $this->input->post('estadoIntegridad');

			

			$isUploadError = FALSE;


			if( ! $isUploadError) {
				
	        	$datosvictimaData = array(
					'user_id' => 1,
					'pais_code' => $pais_code,
					'numDatosvictimas' => $numDatosvictimas,
					'generoVictimasHombre' => $generoVictimasHombre,
					'generoVictimasMujer' => $generoVictimasMujer,
					'edadVictimaNino' => $edadVictimaNino,
					'edadVictimaJoven' => $edadVictimaJoven,
					'edadVictimaAdulto' => $edadVictimaAdulto,
					'edadVictimaOld' => $edadVictimaOld,
					'estatusMigratorioRegular' => $estatusMigratorioRegular,
					'estatusMigratorioIrregular' => $estatusMigratorioIrregular,
					'estatusConsulado' => $estatusConsulado,
					'estadoIntegridad' => $estadoIntegridad,
					'updated_at' => date('Y-m-d H:i:s', time())
				);

				$this->api_model_datosvictima->updateDatosvictima($id, $datosvictimaData);
				

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

	public function deleteDatosvictima($id)
	{
		header('Access-Control-Allow-Origin: *');
        header("Access-Control-Allow-Methods: GET, POST, OPTIONS, PUT, DELETE");
		header("Access-Control-Allow-Headers: authorization, Content-Type");

		$token = $this->input->get_request_header('Authorization');

		$isValidToken = $this->api_model->checkToken($token);

		if($isValidToken) {

			$datosvictima = $this->api_model_datosvictima->get_admin_datosvictima($id);


			$this->api_model_datosvictima->deleteDatosvictima($id);

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


	
	
}
