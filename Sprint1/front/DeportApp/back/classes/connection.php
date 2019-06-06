<?php
/**
*
*/
class Connection
{
	private $connection;

	function __construct()
	{
		$servidor = "localhost"; // El servidor que utilizaremos, en este caso será el localhost 
		$usuario = "root"; // El usuario que acabamos de crear en la base de datos 
		$contrasenha = ""; // La contraseña del usuario que utilizaremos 
		$BD = "escenariosdeportivos"; // El nombre de la base de datos 
		
			$this->connection = new  @mysql_connect($servidor, $usuario, $contrasenha);
			$this->connection->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
			$this->connection->exec("SET CLIENT_ENCODING TO 'UTF8'");
			//echo "Conexion Exitosa";
			if (!$conexion) { 
    			die('<strong>No pudo conectarse:</strong> ' . mysql_error()); 
			}else{ 
    			// La siguiente linea no es necesaria, simplemente la pondremos ahora para poder observar que la conexión ha sido realizada 
   				 echo 'Conectado  satisfactoriamente al servidor <br />'; 
			} 
			/* 
			En esta linea seleccionaremos la BD con la que trabajaremos y le pasaremos como referencia la conexión al servidor. Para saber si se conecto o no a la BD podríamos utilizar el IF de la misma forma que la utilizamos al momento de conectar al servidor, pero usaremos otra forma de comprobar eso usando die(). 
			*/
 
			mysql_select_db($BD, $conexion) or die(mysql_error($conexion)); 
	}

	public function getConnection()
	{
		return $this->connection;
	}
}
?>