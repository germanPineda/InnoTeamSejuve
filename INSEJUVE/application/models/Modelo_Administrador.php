<?php  
if (! defined('BASEPATH')) exit('No direct script access allowed');

class Modelo_Administrador extends CI_Model {
    
	function __construct(){
		parent::__construct();
        $this -> load -> database('default');
	}

	//Obtener todos usuarios
	function getUser(){
		$consulta = $this->db->get('usuario');
	    $resultado = $consulta->result();
		return $resultado;
	}

	//Create usuario
	function insertUsuario($usuario){
		$this->db->insert('usuario', $usuario);
	}

	//Eliminar un usuario
	function deleteUsuario($id){
		$this->db->where('id_Usuario', $id);
		$delete = $this->db->delete('usuario');
        return $delete;
	}

	//Modificar un usuario
	function updateUsuario($id, $datos){
		$this->db->update('usuario', $datos, array('id_Usuario'=>$id));
	}

	/**************************************************
	 * 		servicios para formulario de agregación	  *
	 **************************************************/

	 //Obtener las dependencias para un select
	function getDependencia(){
		$this->db->select('infoespecifico.idInfoEspecifico,infoespecifico.nombre');
		$this->db->from('infoespecifico, tipoactor');
		$this->db->where('infoespecifico.idInfoEspecifico = tipoactor.idInfoEspecifico');
		$consulta = $this->db->get();
		$resultado = $consulta->result();
		return $resultado;
	}

	//Obtener los roles para un select
	function getRol(){
		$consulta = $this->db->get('rol');
	    $resultado = $consulta->result();
		return $resultado;
	}
}
