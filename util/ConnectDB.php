<?php
class ConexionBD
{

    const SERVER = "localhost";
     const USER = "id5666072_root";
     const PASS = "123456";
     const DATABASE = "id5666072_imh";
          private $cn = null;    

    public function getConexionBD()
            {
                 try
                {
                   $this->cn = mysqli_connect(self::SERVER, self::USER, self::PASS, self::DATABASE);
                   $this->cn->set_charset("utf8");
    		}             
                catch(Exception $e)
                {

                }  
                return $this->cn;
            }
}    
?>