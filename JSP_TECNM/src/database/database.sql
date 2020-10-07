create database proyectojsp_tecnm;

use proyectojsp_tecnm;

/*--------------------CREACION DE LAS TABLAS--------------------*/
CREATE TABLE `proyectojsp_tecnm`.`usuario` (
`id` INT NOT NULL AUTO_INCREMENT ,
`prefijo` VARCHAR(255) NOT NULL,
`nombre` VARCHAR(255) NOT NULL ,
`apellidopat` VARCHAR(255) NOT NULL ,
`apellidomat` VARCHAR(255) NOT NULL ,
`usuario` VARCHAR(255) NOT NULL ,
`contrasena` VARCHAR(255) NOT NULL ,
`rol` INT(1) NOT NULL ,
PRIMARY KEY (`id`)
);

CREATE TABLE `proyectojsp_tecnm`.`materia` (
`id_materia` INT NOT NULL AUTO_INCREMENT ,
`clave` INT NOT NULL ,
`nombre` VARCHAR (255) NOT NULL ,
`semestre` INT NOT NULL ,
`carrera` VARCHAR (255) NOT NULL ,
`creditos` INT NOT NULL ,
`horas_t` INT NOT NULL ,
`horas_p` INT NOT NULL ,
PRIMARY KEY (`id_materia`)
);

CREATE TABLE `proyectojsp_tecnm`.`horario` (
`id_horario` INT NOT NULL AUTO_INCREMENT,
`clave` INT NOT NULL, `grupo` VARCHAR(255) NULL,
`periodo` BOOLEAN NULL,
`numero_estudiantes` INT NULL,
`salon` VARCHAR(255) NULL,
`lunes` VARCHAR(255) NULL,
`martes` VARCHAR(255) NULL,
`miercoles` VARCHAR(255) NULL,
`jueves` VARCHAR(255) NULL,
`viernes` VARCHAR(255) NULL,
PRIMARY KEY (id_horario) 
);
/*--------------------INSERCIONES DE LAS TABLAS--------------------*/
INSERT INTO usuario (rol, prefijo, nombre, apellidopat, apellidomat, usuario, contrasena)
VALUES	(1, "Ingeniero", "Antonio", "�guila", "Reyes", "aguila", "12345"),
		(2, "Doctora", "Mar�a del Rosario", "Baltazar", "Flores", "baltazar", "123"),
		(2, "Ingeniero", "Jos� Gerardo", "Carpio", "Flores", "carpiof", "123"),
		(2, "Doctor", "Juan Mart�n", "Carpio", "Valadez", "carpiov", "123"),
		(2, "Licenciada", "Elizabeth", "Castellanos", "Nolasco", "nolasco", "123"),
		(2, "Ingeniera", "Mar�a Patricia", "Castillo", "Mart�nez", "castillo", "123"),
		(2, "Ingeniero", "Luis Roberto", "Gallegos", "Mu�oz", "gallegos", "123"),
		(2, "Ingeniero", "Domingo", "Garc�a", "Ornelas", "domingo", "123"),
		(2, "Ingeniero", "Hector Federico", "God�nez", "Cabrera", "godinez", "123"),
		(2, "Ingeniera", "Laura Patricia", "Guevara", "Rangel", "laurap", "123"),
		(2, "Ingeniero", "Luis Eduardo", "Guti�rrez", "Ayala", "ayala", "123"),
		(2, "Ingeniera", "Ang�lica Benita", "Hern�ndez", "Carranza", "benita", "123"),
		(2, "Ingeniera", "Laura", "Ju�rez", "Guerra", "laura", "123"),
		(2, "Ingeniero", "Carlos Rafael", "Levy", "Rojas", "levy", "123"),
		(2, "Ingeniero", "Eugenio Conrado", "Mar�n", "Gonz�lez", "conrado", "123"),
		(2, "Ingeniera", "Ana Columba Zurita", "Mart�nez", "Aguilar", "columba", "123"),
		(2, "Ingeniero", "Jos� Elias", "Mart�nez", "Arias", "elias", "123"),
		(2, "Ingeniera", "Edna Militza", "Mart�nez", "Prado", "militza", "123"),
		(2, "Ingeniero", "Juan Pablo", "Murillo", "Ruiz", "murillo", "123"),
		(2, "Licenciada", "Ang�lica Mar�a", "Ortiz", "Gauc�n", "gaucin", "123"),
		(2, "Licenciado", "H�ctor Jos�", "Puga", "Soberanes", "pugas", "123"),
		(2, "Licenciada", "Irma de Jes�s", "Ram�rez", "�lvarez", "irma", "123"),
		(2, "Maestra en Ciencias", "Martha Alicia", "Rocha", "S�nchez", "martha", "123"),
		(2, "Ingeniera", "Luz del Carmen", "Ruiz", "Gaytan", "luzcarmen", "123"),
		(2, "Ingeniera", "Ruth", "Sa�z de Nanclarez", "Rodr�guez", "ruth", "123"),
		(2, "Maestra", "Ma. Concepci�n Roc�o", "S�nchez", "Cano", "maconceptionr", "123"),
		(2, "Ingeniera", "Ma. Concepci�n", "Sandoval", "Solis", "maconcepcion", "123"),
		(2, "Ingeniero", "Cirino", "Silva", "Tovar", "cirino", "123"),
		(2, "Ingeniero", "Jos� Luis Fernando", "Su�rez", "y G�mez", "suarezygomez", "123"),
		(2, "Ingeniero", "Rub�n", "Trujillo", "Corona", "trujillo", "123");
