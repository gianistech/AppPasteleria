/*REGISTRO*/
DELIMITER //
CREATE PROCEDURE pa_crearUsuario(IN _nombre VARCHAR(60), IN _apellidos VARCHAR(60), IN _fechaNac Date, IN _edad INT, IN _genero VARCHAR(20), IN _correo VARCHAR(50), IN _usuario VARCHAR(40), IN _clave VARCHAR(40))
BEGIN
	INSERT INTO tb_Persona(Nombre, Apellidos, FechaNac, Edad, Genero, Correo)
    VALUES(_nombre, _apellidos, _fechaNac, _edad, _genero, _correo);
    
    INSERT INTO tb_Usuario(Usuario, Clave)
    VALUES(_usuario, _clave);
END//
/*Prueba*/
CALL pa_crearUsuario('Gian', 'Romero Castro', '1992-11-08', 27, 'Masculino', 'gianro@gmail.com', 'gian01', '1234');
/*LOGIN*/
DELIMITER //
CREATE PROCEDURE pa_login(IN _usuario VARCHAR(40), IN _clave VARCHAR(40))
BEGIN
	SELECT * FROM tb_Usuario WHERE Usuario= _usuario AND Clave= _clave;
END//
/*PRUEBA*/
CALL pa_login('gian01', '1234');

