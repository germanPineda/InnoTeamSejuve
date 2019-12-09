<?php  /* Modelo: usuario.php queda guardada en la carpeta models */
if (! defined('BASEPATH')) exit('No direct script access allowed');

class Modelo_Anonimo extends CI_Model {
    
	function __construct(){
		parent::__construct();
        $this -> load -> database('cualquiera',true);
        //$DB2=$this -> load -> database('otra', TRUE);
	}
	function getUser(){
		$consulta = $this->db->get('area');
	    $resultado = $consulta->result();
		return $resultado;
    }
}
?>
