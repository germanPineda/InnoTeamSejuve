<?php

require APPPATH . 'libraries/REST_Controller.php';

class Prueba extends REST_Controller
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
        $this->load->model('User_model');
    }
    public function getuser_get() {//Obtenemos todos los alumnos
        $data = $this->User_model->getUser();
        header('Content-Type: application/json');
        $this->response( $data);
      }
}
