<?php
require APPPATH . 'libraries/REST_Controller.php';
class Administrador_controller extends REST_Controller
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
        $this->load->model('Modelo_Administrador');
    }
    public function getuser_get()
    { //Obtenemos todos los alumnos
        $data = $this->User_model->getUser();
        header('Content-Type: application/json');
        $this->response($data);
    }
    public function insertuser_post()
    {
        $datos['nombreReal']        = $this->post('nombreReal');
        $datos['apellidoPaterno']   = $this->post('apellidoPaterno');
        $datos['apellidoMaterno']   = $this->post('apellidoMaterno');
        $datos['correo']            = $this->post('correo');
        $datos['Password']          = $this->post('Password');
        $datos['idTipoActor']       = $this->post('idTipoActor');
        $datos['idRol']             = $this->post('idRol');
        $this->Modelo_Administrador->insertUsuario($datos);
        $this->response($datos);
    }


    public function deleteuser_post()
    {
        $data   = $this->input->post('id_Usuario');
        $delete = $this->Modelo_Administrador->deleteUsuario($data);
        $this->response($delete);
    }

    //Modificar un usuario.
    public function updateUser_post()
    {
        $id = $this->post('id_Usuario');
        $datos['nombreReal']        = $this->post('nombreReal');
        $datos['apellidoPaterno']   = $this->post('apellidoPaterno');
        $datos['apellidoMaterno']   = $this->post('apellidoMaterno');
        $datos['correo']            = $this->post('correo');
        $datos['Password']          = $this->post('Password');
        $datos['idTipoActor']       = $this->post('idTipoActor');
        $datos['idRol']             = $this->post('idRol');
        $this->Modelo_Administrador->updateUsuario($id, $datos);
        $this->response($datos);
    }

    /**************************************************
	 * 		servicios para formulario de agregación	  *
	 **************************************************/
    //Dependencias con id.
    public function getDependencia_get()
    { 
        $data = $this->Modelo_Administrador->getDependencia();
        header('Content-Type: application/json');
        $this->response($data);
    }

    //Roles de los funcionarios
    public function getRoles_get()
    { 
        $data = $this->Modelo_Administrador->getRol();
        header('Content-Type: application/json');
        $this->response($data);
    }
}
