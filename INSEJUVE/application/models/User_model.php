<?php  /* Modelo: usuario.php queda guardada en la carpeta models */
if (! defined('BASEPATH')) exit('No direct script access allowed');

class User_model extends CI_Model {
    
	function __construct(){
		parent::__construct();
        $this -> load -> database('default');
        //$DB2=$this -> load -> database('otra', TRUE);
	}

	function getUser(){
		$consulta = $this->db->get('actor');
	    $resultado = $consulta->result();
		return $resultado;
	}
    /*function getUser2(){
        $DB2 = $this->load->database('otra', TRUE);
		$consulta = $DB2->get('actor');
	    $resultado = $consulta->result();
		return $resultado;
	}*/
	function getUserById($id){
		//$this->db->where('alumnos.id', $ida);
		//SELECT nombre, descripcion, semestre FROM alumnos, carrera WHERE alumnos.carrera = carrera.id GROUP BY carrera.id
		$this->db->select('nombre, descripcion, semestre, carrera');
		$this->db->from('carrera, alumnos');
		$this->db->where('alumnos.carrera = carrera.id AND alumnos.id = ', $id);
		$query = $this->db->get();
		return $query->row();
	}

	//Insertar Alumnos
	function insertAlumnos($alumnos){
		$this->db->insert('alumnos', $alumnos);
	}

	//Editar alumnos
	function updateAlumnos($id, $datos){
		$this->db->update('alumnos', $datos, array('id'=>$id));
	}

	//Eliminar alumnos
	function deleteAlumnos($id){
		$this->db->where('id', $id);
		$delete = $this->db->delete('alumnos');
        return $delete;
	}

	//Comandos para obtener la carrera
	function getCarrera(){
	    $consulta = $this->db->get('carrera');
	    $resultado = $consulta->result();
		return $resultado;
	}
	//Busca una carrera por alumno
	function getCarreraById($id){
		$this->db->where('id', $id);
		$query = $this->db->get('carrera');
		return $query->row();
	}
	//Insertar carreras
	function insertCarreras($carrera){
		$this->db->insert('carrera', $carrera);
	}
	//Editar carreras
	function updateCarreras($id, $datos){
		$this->db->update('carrera', $datos, array('id'=>$id));
	}

	//Eliminar carreras
	function deleteCarreras($id){
		$this->db->where('id', $id);
		$delete = $this->db->delete('carrera');
        return $delete;
	}


	//Comandos para obtener la carrera
	function getAsistencia(){
	    //$consulta = $this->db->get('asistencia');
			$this->db->select('alumnos.Nombre, asistencia.idA, asistencia.asistencia, fechas.idF, alumnos.id');
			$this->db->from('asistencia, alumnos, fechas');
			$this->db->where('asistencia.idAlumno = alumnos.id AND fechas.idF = asistencia.idFecha AND asistencia.idFecha = fechas.idF');
			$consulta = $this->db->get();
	    $resultado = $consulta->result();
			return $resultado;
	}

	function getAsistenciaByIdFecha($fecha){
			$this->db->select('alumnos.Nombre, asistencia.idA, asistencia.asistencia, fechas.idF, alumnos.id');
			$this->db->from('asistencia, alumnos, fechas');
			$this->db->where('asistencia.idAlumno = alumnos.id AND fechas.idF = asistencia.idFecha AND asistencia.idFecha =', $fecha);
			$consulta = $this->db->get();
	    $resultado = $consulta->result();
			return $resultado;
	}
	//Busca una carrera por alumno
	function getAsistenciaByFecha($fecha){
		$this->db-> select ('*');
		$this->db-> from ('alumnoasistencia');
    $consulta = $this->db->get();
    $resultado = $consulta->result();
		return $resultado;
	}

	function getFechas(){
		$this->db-> select ('*');
		$this->db-> from ('fechas');
	    $consulta = $this->db->get();
	    $resultado = $consulta->result();
			return $resultado;
	}

	function insertarFecha($fecha){
		$this->db->insert('fechas', $fecha);
	}

	//Insertar Asistencias.
	function insertAsistencias($asistencia){
		$this->db->insert('asistencia', $asistencia);
	}

	//Editar asistencias
	function updateAsistencias($id, $datos){
		$this->db->update('asistencia', $datos, array('idA'=>$id));
	}

	function getasistenciadata(){
			$this->db-> select ('alumnos.id, alumnos.Nombre, fechas.idF');
	 		$this->db-> from ('alumnos, fechas');
			$this->db->group_by ('alumnos.id');
			$consulta = $this->db->get();
	    $resultado = $consulta->result();
			return $resultado;
	}

	function getlastidfecha(){
			$this->db-> select ('*');
	 		$this->db-> from ('fechas');
			$this->db-> where ('idF = (SELECT MAX(idF)  FROM fechas)');
			$consulta = $this->db->get();
	    $resultado = $consulta->result();
			return $resultado;
	}
}
?>
