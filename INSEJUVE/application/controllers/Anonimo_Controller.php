<?php
require APPPATH . 'libraries/REST_Controller.php';

class Anonimo_Controller extends REST_Controller
{

    /**
     * Get All Data from this method.
     *
     * @return Response
     */
    public function __construct()
    {
        header("Access-Control-Allow-Methods: PUT, GET, POST, DELETE, OPTIONS");
        header("Access-Control-Allow-Headers: Content-Type, Content-Length, Accept-Encoding");
        header("Access-Control-Allow-Origin: *");
        parent::__construct();
        $this->load->database();
        $this->load->helper('url');
        $this->load->helper('form');
        $this->load->model('Modelo_Anonimo');
    }
    public function getuser_get() {//Obtenemos todos los alumnos
        $data = $this->Modelo_Anonimo->getUser();
        header('Content-Type: application/json');
        $this->response( $data);
    }
}
