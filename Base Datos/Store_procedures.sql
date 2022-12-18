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
