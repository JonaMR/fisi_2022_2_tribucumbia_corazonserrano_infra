/*-----------------------------*/
/* Vacantes Disponibles*/
/*-----------------------------*/
USE `eduapp`;
DROP procedure IF EXISTS `verificar_alumno`;

DELIMITER $$
USE `eduapp`$$
CREATE DEFINER=`CorazonSerrano`@`%` PROCEDURE `verificar_alumno`(
IN dni_a INT
)
BEGIN
    SELECT * 
    FROM alumno as al
    WHERE al.dni= dni_a;
END$$

DELIMITER ;



/*-----------------------------*/
/*Verificar Alumno registrado*/
/*-----------------------------*/
USE `eduapp`;
DROP procedure IF EXISTS `verificar_alumno`;

DELIMITER $$
USE `eduapp`$$
CREATE DEFINER=`CorazonSerrano`@`%` PROCEDURE `verificar_alumno`(
IN dni_a INT
)
BEGIN
    SELECT * 
    FROM alumno as al
    WHERE al.dni= dni_a;
END$$

DELIMITER ;

/*-----------------------------*/
/*Registrar alumnos */
/*-----------------------------*/

USE `eduapp`;
DROP procedure IF EXISTS `ingresar_alumno`;

DELIMITER $$
USE `eduapp`$$
CREATE DEFINER=`CorazonSerrano`@`%` PROCEDURE `ingresar_alumno`(
IN dni_a VARCHAR(45), 
IN nom VARCHAR(45),
IN ape_p VARCHAR(45),
IN ape_m VARCHAR(45),
IN tell VARCHAR(45),
IN direct VARCHAR(45),
IN nacimien DATE,
IN gen VARCHAR(15),
IN email VARCHAR(45),
IN id_us INT,
IN dni_ap VARCHAR(45),
IN nom_ap VARCHAR(45),
IN email_ap VARCHAR(45),
IN cust VARCHAR(20),
IN isStripe TINYINT(1)
)
BEGIN
    INSERT INTO alumno (dni, nombres, apellido_paterno, apellido_materno,telefono, direccion, fecha_nacimiento,sexo,correo, id_usuario, dni_apoderado, nombre_apoderado,correo_apoderado,customerid,is_Stripe_Customer) 
    VALUES (dni_a, nom, ape_p, ape_m, tell, direct, nacimien, gen, email, id_us, dni_ap, nom_ap, email_ap, cust, isStripe);
END$$

DELIMITER ;

/*-----------------------------*/
/*Seleccionar un aula*/
/*-----------------------------*/

USE `eduapp`;
DROP procedure IF EXISTS `seleccionar_aula`;

DELIMITER $$
USE `eduapp`$$
CREATE DEFINER=`CorazonSerrano`@`%` PROCEDURE `seleccionar_aula`(
IN cod INT
)
BEGIN
    SELECT * 
    FROM aula as a
    WHERE a.grado= cod;
END$$

DELIMITER ;

/*-----------------------------*/
/*Proceso de reserva de vacante*/
/*-----------------------------*/
//DELIMITER 
CREATE PROCEDURE ingresoMatricula
(
   IN fecha date,
   IN id_aula INT,
   IN id_alumno INT,
   IN anio_escolar INT,
   IN estado varchar(45)
)
BEGIN 
	INSERT INTO matricula(fecha,id_aula,id_alumno,anio_escolar,estado)
    values(fecha,id_aula,id_alumno,anio_escolar,estado);
END;

Call ingresoMatricula("2023-02-1",1,16,2023,"PENDIENTE");
Call ingresoMatricula("2023-02-2",2,18,2023,"PENDIENTE");
Call ingresoMatricula("2023-02-3",3,19,2023,"PENDIENTE");
Call ingresoMatricula("2023-02-4",4,20,2023,"PENDIENTE");

/*-----------------------------*/
/* Agregar vacante ocupada*/
/*-----------------------------*/
Set @grado = 4;

UPDATE grado
SET matriculados = matriculados + 1
WHERE id_grado = @grado;
