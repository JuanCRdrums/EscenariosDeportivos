<?php
require_once 'connection.php';

class Usuario
{
	private $Id;
	private $Nombre;
	private $Telefono;
	private $Email;
	private $Ubicacion;
	
	function __construct()
	{

	}

	function getId(){
		return $this->Id;
	}

	function getNombre(){
		return $this->Nombre;
	}

	function getTelefono(){
		return $this->Telefono;
	}

	function getEmail(){
		return $this->Email;
	}

	function getUbicacion(){
		return $this->Ubicacion;
	}

	function setId($Id){
		return $this->Id=$Id;
	}

	function setNombre($Nombre){
		return $this->Nombre=$Nombre;
	}

	function setTelefono($Telefono){
		return $this->Telefono=$Telefono;
	}

	function setEmail($Email){
		return $this->Email=$Email;
	}

	function setUbicacion($Ubicacion){
		return $this->Ubicacion=$Ubicacion;
	}

	public function saveUser()
	{
		try{
			$connection = new Connection();
			$connection->getConnection()->beginTransaction();
			$query = $connection->getConnection()->prepare("INSERT INTO \"Usuarios\" VALUES (:Id, :Nombre, :Telefono, :Email, :Ubicacion");

			$Id = $this->getId();
			$Nombre = $this->getNombre();
			$Telefono = $this->getTelefono();
			$Email = $this->getEmail();
			$Ubicacion = $this->getUbicacion();

			$query->bindValue(':Id', $Id);
			$query->bindValue(':Nombre', $Nombre);
			$query->bindValue(':Telefono', $Telefono);
			$query->bindValue(':Email', $Email);
			$query->bindValue(':Ubicacion', $Ubicacion);
			$query->execute();


			echo "Registro exitoso";
			$connection->getConnection()->commit();
		} catch (PDOException $e){
			$connection->getConnection()-> rollback();
			echo "Error en la inserccion ...".$e->getMessage();
		}
	}

}
?>