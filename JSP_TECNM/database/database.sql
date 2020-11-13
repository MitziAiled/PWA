use proyectojsp_tecnm;

CREATE TABLE usuario (
clavemaestro int NOT NULL,
prefijo VARCHAR(255) NOT NULL,
nombre VARCHAR(255) NOT NULL ,
apellidopat VARCHAR(255) NOT NULL ,
apellidomat VARCHAR(255) NOT NULL ,
usuario VARCHAR(255) NOT NULL ,
contrasena VARCHAR(255) NOT NULL ,
rol INT(1) NOT NULL ,
PRIMARY KEY (clavemaestro)
);

CREATE TABLE materia (
id_materia INT NOT NULL AUTO_INCREMENT ,
clave VARCHAR (255) NOT NULL ,
nombre VARCHAR (255) NOT NULL ,
semestre INT NOT NULL ,
carrera VARCHAR (255) NOT NULL ,
creditos INT NOT NULL ,
horas_t INT NOT NULL ,
horas_p INT NOT NULL ,
PRIMARY KEY (id_materia)
);

CREATE TABLE sabana (
id INT NOT NULL AUTO_INCREMENT,
clavehorario INT NOT NULL,
clavemateria VARCHAR(255) NOT NULL,
clavecarrera VARCHAR(255) NOT NULL,
materia VARCHAR(255) NOT NULL,
carrera VARCHAR(255) NOT NULL,
clavemaestro int NOT NULL,
maestro VARCHAR(255) NOT NULL,
periodo VARCHAR(255) NOT NULL,
turno VARCHAR(255) NOT NULL,
grupo VARCHAR(255) NOT NULL,
alumnos INT NOT NULL,
semestre INT NOT NULL,
creditos INT NOT NULL,
salon VARCHAR(255) NULL,
lunes VARCHAR(255) NULL,
martes VARCHAR(255) NULL,
miercoles VARCHAR(255) NULL,
jueves VARCHAR(255) NULL,
viernes VARCHAR(255) NULL,
horast int NULL,
horasp int NULL,
PRIMARY KEY (id),
FOREIGN KEY (clavemaestro) references usuario(clavemaestro)
);

INSERT INTO usuario VALUES ("25", "Ingeniero", "Antonio", "�guila", "Reyes", "aguila", "12345", 1);
INSERT INTO usuario VALUES ("26", "Doctora", "Mar�a del Rosario", "Baltazar", "Flores", "baltazar", "123", 2);
INSERT INTO usuario VALUES ("27", "Ingeniero", "Jos� Gerardo", "Carpio", "Flores", "carpiof", "123", 2);
INSERT INTO usuario VALUES ("28", "Doctor", "Juan Mart�n", "Carpio", "Valadez", "carpiov", "123", 2);
INSERT INTO usuario VALUES ("29", "Licenciada", "Elizabeth", "Castellanos", "Nolasco", "nolasco", "123", 2);
INSERT INTO usuario VALUES ("30", "Ingeniera", "Mar�a Patricia", "Castillo", "Mart�nez", "castillo", "123", 2);
INSERT INTO usuario VALUES ("31", "Ingeniero", "Luis Roberto", "Gallegos", "Mu�oz", "gallegos", "123", 2);
INSERT INTO usuario VALUES ("32", "Ingeniero", "Domingo", "Garc�a", "Ornelas", "domingo", "123", 2);
INSERT INTO usuario VALUES ("33", "Ingeniero", "Hector Federico", "God�nez", "Cabrera", "godinez", "123", 2);
INSERT INTO usuario VALUES ("34", "Ingeniera", "Laura Patricia", "Guevara", "Rangel", "laurap", "123", 2);
INSERT INTO usuario VALUES ("35", "Ingeniero", "Luis Eduardo", "Guti�rrez", "Ayala", "ayala", "123", 2);
INSERT INTO usuario VALUES ("36", "Ingeniera", "Ang�lica Benita", "Hern�ndez", "Carranza", "benita", "123", 2);
INSERT INTO usuario VALUES ("37", "Ingeniera", "Laura", "Ju�rez", "Guerra", "laura", "123", 2);
INSERT INTO usuario VALUES ("38", "Ingeniero", "Carlos Rafael", "Levy", "Rojas", "levy", "123", 2);
INSERT INTO usuario VALUES ("39", "Ingeniero", "Eugenio Conrado", "Mar�n", "Gonz�lez", "conrado", "123", 2);
INSERT INTO usuario VALUES ("40", "Ingeniera", "Ana Columba Zurita", "Mart�nez", "Aguilar", "columba", "123", 2);
INSERT INTO usuario VALUES ("41", "Ingeniero", "Jos� Elias", "Mart�nez", "Arias", "elias", "123", 2);
INSERT INTO usuario VALUES ("42", "Ingeniera", "Edna Militza", "Mart�nez", "Prado", "militza", "123", 2);
INSERT INTO usuario VALUES ("43", "Ingeniero", "Juan Pablo", "Murillo", "Ruiz", "murillo", "123", 2);
INSERT INTO usuario VALUES ("44", "Licenciada", "Ang�lica Mar�a", "Ortiz", "Gauc�n", "gaucin", "123", 2);
INSERT INTO usuario VALUES ("45", "Licenciado", "H�ctor Jos�", "Puga", "Soberanes", "pugas", "123", 2);
INSERT INTO usuario VALUES ("46", "Licenciada", "Irma de Jes�s", "Ram�rez", "�lvarez", "irma", "123", 2);
INSERT INTO usuario VALUES ("47", "Maestra en Ciencias", "Martha Alicia", "Rocha", "S�nchez", "martha", "123", 2);
INSERT INTO usuario VALUES ("48", "Ingeniera", "Luz del Carmen", "Ruiz", "Gaytan", "luzcarmen", "123", 2);
INSERT INTO usuario VALUES ("49", "Ingeniera", "Ruth", "Sa�z de Nanclarez", "Rodr�guez", "ruth", "123", 2);
INSERT INTO usuario VALUES ("50", "Maestra", "Ma. Concepci�n Roc�o", "S�nchez", "Cano", "maconceptionr", "123", 2);
INSERT INTO usuario VALUES ("51", "Ingeniera", "Ma. Concepci�n", "Sandoval", "Solis", "maconcepcion", "123", 2);
INSERT INTO usuario VALUES ("52", "Ingeniero", "Cirino", "Silva", "Tovar", "cirino", "123", 2);
INSERT INTO usuario VALUES ("53", "Ingeniero", "Jos� Luis Fernando", "Su�rez", "y G�mez", "suarezygomez", "123", 2);
INSERT INTO usuario VALUES ("54", "Ingeniero", "Rub�n", "Trujillo", "Corona", "trujillo", "123", 2);




INSERT INTO materia (clave, nombre, semestre, carrera, creditos, horas_t, horas_p)
VALUES	("ACF-0901", "C�lculo Diferencial", 1, "Ingenieria en sistemas computacionales", 5, 3, 2),
		("AED-1285", "Fundamentos de Programaci�n", 1, "Ingenieria en sistemas computacionales", 5, 2, 3),
		("ACA-0907", "Taller de �tica", 1, "Ingenieria en sistemas computacionales", 4, 0, 4),
		("AEF-1041", "Matem�ticas Discretas", 1, "Ingenieria en sistemas computacionales", 5, 3, 2),
		("SCH-1024", "Taller de Administraci�n", 1, "Ingenieria en sistemas computacionales", 4, 1, 3),
		("ACC-0906", "Fundamentos de Investigaci�n", 1, "Ingenieria en sistemas computacionales", 4, 2, 2),
		("ACF-0902", "C�lculo Integral", 2, "Ingenieria en sistemas computacionales", 5, 3, 2),
		("AED-1286", "Programaci�n Orientada a Objetos", 2, "Ingenieria en sistemas computacionales", 5, 2, 3),
		("AEC-1008", "Contabilidad Financiera", 2, "Ingenieria en sistemas computacionales", 4, 2, 2),
		("AEC-1058", "Quimica", 2, "Ingenieria en sistemas computacionales", 4, 2, 2),
		("ACF-0903", "�lgebra Lineal", 2, "Ingenieria en sistemas computacionales", 5, 3, 2),
		("AEF-1052", "Probabilidad y Estad�stica", 2, "Ingenieria en sistemas computacionales", 5, 3, 2),
		("ACF-0904", "C�lculo Vectorial", 3, "Ingenieria en sistemas computacionales", 5, 3, 2),
		("AED-1026", "Estructura de Datos", 3, "Ingenieria en sistemas computacionales", 5, 2, 3),
		("SCC-1005", "Cultura Empresarial", 3, "Ingenieria en sistemas computacionales", 4, 2, 2),
		("SCC-1013", "Investigaci�n de Operaciones", 3, "Ingenieria en sistemas computacionales", 4, 2, 2),
		("ACD-0908", "Desarrollo Sustentable", 3, "Ingenieria en sistemas computacionales", 5, 3, 2),
		("SCF-1006", "F�sica General", 3, "Ingenieria en sistemas computacionales", 5, 3, 2),
		("ACF-0905", "Ecuaciones Diferenciales", 4, "Ingenieria en sistemas computacionales", 5, 3, 2),
		("SCC-1017", "M�todos Num�ricos", 4, "Ingenieria en sistemas computacionales", 4, 2, 2),
		("SCD-1027", "T�picos Avanzados de Programaci�n", 4, "Ingenieria en sistemas computacionales", 5, 2, 3),
		("AEF-1031", "Fundamentos de Base de Datos", 4, "Ingenieria en sistemas computacionales", 5, 3, 2),
		("SCD-1022", "Simulaci�n", 4, "Ingenieria en sistemas computacionales", 5, 2, 3),
		("SCD-1018", "Principios El�ctricos y Aplicaciones Digitales", 4, "Ingenieria en sistemas computacionales", 5, 2, 3),
		("SCC-1010", "Graficaci�n", 5, "Ingenieria en sistemas computacionales", 4, 2, 2),
		("AEC-1034", "Fundamentos de Telecomunicaciones", 5, "Ingenieria en sistemas computacionales", 4, 2, 2),
		("AEC-1061", "Sistemas Operativos", 5, "Ingenieria en sistemas computacionales", 4, 2, 2),
		("SCA-1025", "Taller de Base de Datos", 5, "Ingenieria en sistemas computacionales", 4, 0, 4),
		("SCC-1007", "Fundamentos de Ingenier�a de Software", 5, "Ingenieria en sistemas computacionales", 4, 2, 2),
		("SCD-1003", "Arquitectura de Computadoras", 5, "Ingenieria en sistemas computacionales", 5, 2, 3),
		("SCD-1015", "Lenguajes y Aut�matas I", 6, "Ingenieria en sistemas computacionales", 5, 2, 3),
		("SCD-1021", "Redes de Computadoras", 6, "Ingenieria en sistemas computacionales", 5, 2, 3),
		("SCA-1026", "Taller de Sistemas Operativos", 6, "Ingenieria en sistemas computacionales", 4, 0, 4),
		("SCB-1001", "Administraci�n de Base de Datos", 6, "Ingenieria en sistemas computacionales", 5, 1, 4),
		("SCD-1011", "Ingenier�a de Software", 6, "Ingenieria en sistemas computacionales", 5, 2, 3),
		("SCC-1014", "Lenguaje de Interfaz", 6, "Ingenieria en sistemas computacionales", 4, 2, 2),
		("SCD-1016", "Lenguajes y Aut�matas II", 7, "Ingenieria en sistemas computacionales", 5, 2, 3),
		("SCD-1004", "Conmutaci�n y Enrutamiento en Redes de Datos", 7, "Ingenieria en sistemas computacionales", 5, 2, 3),
		("ACA-0909", "Taller de Investigaci�n I", 7, "Ingenieria en sistemas computacionales", 4, 0, 4),
		("SCG-1009", "Gesti�n de Proyectos de Software", 7, "Ingenieria en sistemas computacionales", 6, 3, 3),
		("SCC-1023", "Sistemas Programables", 7, "Ingenieria en sistemas computacionales", 4, 2, 2),
		("SCC-1019", "Programaci�n L�gica y Funcional", 8, "Ingenieria en sistemas computacionales", 4, 2, 2),
		("SCA-1002", "Administraci�n de Redes", 8, "Ingenieria en sistemas computacionales", 4, 0, 4),
		("ACA-0910", "Taller de Investigaci�n II", 8, "Ingenieria en sistemas computacionales", 4, 0, 4),
		("AEB-1055", "Programaci�n Web", 8, "Ingenieria en sistemas computacionales", 5, 1, 4),
		("SCC-1012", "Inteligencia Artificial", 9, "Ingenieria en sistemas computacionales", 4, 2, 2);

INSERT INTO sabana (clavehorario, clavemateria, clavecarrera, materia, carrera, maestro, periodo, grupo,  turno, alumnos, semestre, creditos, salon, lunes, martes, miercoles, jueves, viernes, clavemaestro, horast, horasp)
VALUES	(4007, "ACF0901", "ISX", "C�LCULO DIFERENCIAL", "INGENIER�A EN SISTEMAS COMPUTACIONALES", "ING. AGUILA REYES ANTONIO", "AGOSTO-DICIEMBRE/2020", "A", "MATUTINO", 34, 1, 5, "C-D1", "", "08:45-10:25", "", "08:45-10:25", "09:35-10:25", "25",3,2),
		(4013, "AED1285", "ISX", "FUNDAMENTOS DE PROGRAMACI�N", "INGENIER�A EN SISTEMAS COMPUTACIONALES", "ING. CARPIO FLORES JOSE GERARDO", "AGOSTO-DICIEMBRE/2020", "A", "MATUTINO", 35, 1, 5, "C-LC3", "", "12:13-13:55", "", "12:13-13:55", "13:05-13:55" , "27",2,3),
		(4014, "AED1285", "ISX", "FUNDAMENTOS DE PROGRAMACI�N", "INGENIER�A EN SISTEMAS COMPUTACIONALES", "ING. GUTIERREZ AYALA LUIS EDUARDO", "AGOSTO-DICIEMBRE/2020", "B", "MATUTINO", 30, 1, 5, "C-LC3", "", "10:30-12:10", "", "10:30-12:10", "11:20-12:10", "35",2,3),
		(4015, "AED1285", "ISX", "FUNDAMENTOS DE PROGRAMACI�N", "INGENIER�A EN SISTEMAS COMPUTACIONALES", "ING. GUTIERREZ AYALA LUIS EDUARDO", "AGOSTO-DICIEMBRE/2020", "C", "MATUTINO", 34, 1, 5, "C-LC3", "", "08:45-10:25", "", "08:45-10:25", "09:35-10:25", "35",2,3),
		(4016, "AED1285", "ISX", "FUNDAMENTOS DE PROGRAMACI�N", "INGENIER�A EN SISTEMAS COMPUTACIONALES", "ING. SAEZ DE NANCLARES RODRIGUEZ RUTH", "AGOSTO-DICIEMBRE/2020", "D", "MATUTINO", 32, 1, 5, "C-LC3", "", "07:00-08:40", "", "07:00-08:40", "07:50-08:40", "49",2,3),
		(4017, "AED1285", "ISX", "FUNDAMENTOS DE PROGRAMACI�N", "INGENIER�A EN SISTEMAS COMPUTACIONALES", "ING. GUTIERREZ AYALA LUIS EDUARDO", "AGOSTO-DICIEMBRE/2020", "E", "MATUTINO", 32, 1, 5, "C-LC3", "07:00-08:40", "", "07:00-08:40", "", "07:00-07:50", "35",2,3),
		(4023, "SCH1024", "ISX", "TALLER DE ADMINISTRACI�N", "INGENIER�A EN SISTEMAS COMPUTACIONALES", "LIC. RAMIREZ ALVAREZ IRMA DE JESUS", "AGOSTO-DICIEMBRE/2020", "A", "MATUTINO", 34, 1, 4, "C-D1", "07:00-08:40", "", "07:00-08:40", "", "", "46",1,3),
		(4024, "SCH1024", "ISX", "TALLER DE ADMINISTRACI�N", "INGENIER�A EN SISTEMAS COMPUTACIONALES", "ING. MARTINEZ AGUILAR ANA COLUMBA ZURITA", "AGOSTO-DICIEMBRE/2020", "B", "MATUTINO", 26, 1, 4, "C-D2", "08:45-10:25", "", "08:45-10:25", "", "", "40",1,3),
		(4025, "SCH1024", "ISX", "TALLER DE ADMINISTRACI�N", "INGENIER�A EN SISTEMAS COMPUTACIONALES", "LIC. RAMIREZ ALVAREZ IRMA DE JESUS", "AGOSTO-DICIEMBRE/2020", "C", "MATUTINO", 35, 1, 4, "C-D3", "10:30-12:10", "", "10:30-12:10", "", "", "46",1,3),
		(4026, "SCH1024", "ISX", "TALLER DE ADMINISTRACI�N", "INGENIER�A EN SISTEMAS COMPUTACIONALES", "ING. MARTINEZ ARIAS JOSE ELIAS", "AGOSTO-DICIEMBRE/2020", "D", "MATUTINO", 31, 1, 4, "C-D4", "12:15-13:55", "", "12:15-13:55", "", "", "41",1,3),
		(4027, "SCH1024", "ISX", "TALLER DE ADMINISTRACI�N", "INGENIER�A EN SISTEMAS COMPUTACIONALES", "LIC. RAMIREZ ALVAREZ IRMA DE JESUS", "AGOSTO-DICIEMBRE/2020", "E", "MATUTINO", 31, 1, 4, "C-D5", "", "12:15-13:55", "", "12:15-13:55", "", "46",1,3),
		(4028, "ACC0906", "ISX", "FUNDAMENTOS DE INVESTIGACI�N", "INGENIER�A EN SISTEMAS COMPUTACIONALES", "LIC. RAMIREZ ALVAREZ IRMA DE JESUS", "AGOSTO-DICIEMBRE/2020", "A", "MATUTINO", 34, 1, 4, "C-D1", "", "07:00-08:40", "", "07:00-08:40", "", "46",2,2),
		(4029, "ACC0906", "ISX", "FUNDAMENTOS DE INVESTIGACI�N", "INGENIER�A EN SISTEMAS COMPUTACIONALES", "ING. GUEVARA RANGEL LAURA PATRICIA", "AGOSTO-DICIEMBRE/2020", "B", "MATUTINO", 25, 1, 4, "C-D2", "", "08:45-10:25", "", "08:45-10:25", "", "34",2,2),
		(4032, "ACC0906", "ISX", "FUNDAMENTOS DE INVESTIGACI�N", "INGENIER�A EN SISTEMAS COMPUTACIONALES", "LIC. RAMIREZ ALVAREZ IRMA DE JESUS", "AGOSTO-DICIEMBRE/2020", "E", "MATUTINO", 31, 1, 4, "C-D5", "12:15-13:55", "", "12:15-13:55", "", "", "46",2,2),
		(4033, "ACA0907", "ISX", "TALLER DE �TICA", "INGENIER�A EN SISTEMAS COMPUTACIONALES", "ING. GUEVARA RANGEL LAURA PATRICIA", "AGOSTO-DICIEMBRE/2020", "A", "MATUTINO", 34, 1, 4, "C-D1", "10:30-12:10", "", "10:30-12:10", "", "", "34",0,4),
		(4034, "ACA0907", "ISX", "TALLER DE �TICA", "INGENIER�A EN SISTEMAS COMPUTACIONALES", "ING. GUEVARA RANGEL LAURA PATRICIA", "AGOSTO-DICIEMBRE/2020", "B", "MATUTINO", 25, 1, 4, "C-D2", "12:15-13:55", "", "12:15-13:55", "", "", "34",0,4),
		(4035, "ACA0907", "ISX", "TALLER DE �TICA", "INGENIER�A EN SISTEMAS COMPUTACIONALES", "ING. MARIN GONZALEZ EUGENIO CONRADO", "AGOSTO-DICIEMBRE/2020", "C", "MATUTINO", 35, 1, 4, "C-D3", "07:00-08:40", "", "07:00-08:40", "", "", "39",0,4),
		(4036, "ACA0907", "ISX", "TALLER DE �TICA", "INGENIER�A EN SISTEMAS COMPUTACIONALES", "ING. MARIN GONZALEZ EUGENIO CONRADO", "AGOSTO-DICIEMBRE/2020", "D", "MATUTINO", 30, 1, 4, "C-D4", "08:45-10:25", "", "08:45-10:25", "", "", "39",0,4),
		(4041, "AED1286", "ISX", "PROGRAMACI�N ORIENTADA A OBJETOS", "INGENIER�A EN SISTEMAS COMPUTACIONALES", "LIC. CASTELLANOS NOLASCO ELIZABETH", "AGOSTO-DICIEMBRE/2020", "A", "MATUTINO", 20, 2, 5, "C-D15", "10:30-12:10", "", "10:30-12:10", "", "10:30-11:20", "29",2,3),
		(4042, "AED1286", "ISX", "PROGRAMACI�N ORIENTADA A OBJETOS", "INGENIER�A EN SISTEMAS COMPUTACIONALES", "ING. CARPIO FLORES JOSE GERARDO", "AGOSTO-DICIEMBRE/2020", "B", "MATUTINO", 22, 2, 5, "C-D15", "12:15-13:55", "", "12:15-13:55", "", "12:15-13:05", "27",2,3),
		(4043, "AED1286", "ISX", "PROGRAMACI�N ORIENTADA A OBJETOS", "INGENIER�A EN SISTEMAS COMPUTACIONALES", "ING. CARPIO FLORES JOSE GERARDO", "AGOSTO-DICIEMBRE/2020", "C", "MATUTINO", 22, 2, 5, "C-D15", "07:00-08:40", "", "07:00-08:40", "", "07:00-07:50", "27",2,3),
		(4044, "AED1286", "ISX", "PROGRAMACI�N ORIENTADA A OBJETOS", "INGENIER�A EN SISTEMAS COMPUTACIONALES", "LIC. CASTELLANOS NOLASCO ELIZABETH", "AGOSTO-DICIEMBRE/2020", "D", "MATUTINO", 21, 2, 5, "C-D15", "08:45-10:25", "", "08:45-10:25", "", "08:45-09:35", "29",2,3),
		(4045, "AEC1008", "ISX", "CONTABILIDAD FINANCIERA", "INGENIER�A EN SISTEMAS COMPUTACIONALES", "LIC. RAMIREZ ALVAREZ IRMA DE JESUS", "AGOSTO-DICIEMBRE/2020", "A", "MATUTINO", 26, 2, 4, "C-D2", "", "10:30-12:10", "", "10:30-12:10", "", "46",2,2),
		(4046, "AEC1058", "ISX", "QU�MICA", "INGENIER�A EN SISTEMAS COMPUTACIONALES", "ING. TRUJILLO CORONA RUBEN", "AGOSTO-DICIEMBRE/2020", "A", "MATUTINO", 30, 2, 4, "C-D5", "08:45-10:25", "", "08:45-10:25", "", "", "54",2,2),
		(4047, "AEF1052", "ISX", "PROBABILIDAD Y ESTAD�STICA", "INGENIER�A EN SISTEMAS COMPUTACIONALES", "M.C. ROCHA SANCHEZ MARTHA ALICIA", "AGOSTO-DICIEMBRE/2020", "A", "MATUTINO", 33, 2, 5, "C-X1", "", "08:45-10:25", "", "08:45-10:25", "09:35-10:25", "47",3,2),
		(4048, "ACF0904", "ISX", "C�LCULO VECTORIAL", "INGENIER�A EN SISTEMAS COMPUTACIONALES", "ING. GODINEZ CABRERA HECTOR FEDERICO", "AGOSTO-DICIEMBRE/2020", "A", "MATUTINO", 35, 3, 5, "C-F8", "12:15-13:55", "", "12:15-13:55", "", "12:15-13:05", "33",3,2),
		(4050, "ACF0904", "ISX", "C�LCULO VECTORIAL", "INGENIER�A EN SISTEMAS COMPUTACIONALES", "ING. GODINEZ CABRERA HECTOR FEDERICO", "AGOSTO-DICIEMBRE/2020", "C", "MATUTINO", 37, 3, 5, "C-F8", "08:45-10:25", "", "08:45-10:25", "", "08:45-09:35", "33",3,2),
		(4051, "AED1026", "ISX", "ESTRUCTURA DE DATOS", "INGENIER�A EN SISTEMAS COMPUTACIONALES", "ING. RUIZ GAYTAN LUZ DEL CARMEN", "AGOSTO-DICIEMBRE/2020", "A", "MATUTINO", 27, 3, 5, "C-D6", "10:30-12:10", "", "10:30-12:10", "", "10:30-11:20", "48",2,3),
		(4052, "AED1026", "ISX", "ESTRUCTURA DE DATOS", "INGENIER�A EN SISTEMAS COMPUTACIONALES", "ING. SILVA TOVAR CIRINO", "AGOSTO-DICIEMBRE/2020", "B", "MATUTINO", 26, 3, 5, "C-D6", "12:15-13:55", "", "12:15-13:55", "", "12:15-13:05", "52",2,3),
		(4053, "AED1026", "ISX", "ESTRUCTURA DE DATOS", "INGENIER�A EN SISTEMAS COMPUTACIONALES", "ING. SILVA TOVAR CIRINO", "AGOSTO-DICIEMBRE/2020", "C", "MATUTINO", 22, 3, 5, "C-D6", "07:00-08:40", "", "07:00-08:40", "", "07:00-07:50", "52",2,3),
		(4054, "AED1026", "ISX", "ESTRUCTURA DE DATOS", "INGENIER�A EN SISTEMAS COMPUTACIONALES", "ING. GUTIERREZ AYALA LUIS EDUARDO", "AGOSTO-DICIEMBRE/2020", "D", "MATUTINO", 25, 3, 5, "C-D6", "08:45-10:25", "", "08:45-10:25", "", "08:45-09:35", "35",2,3),
		(4061, "SCC1013", "ISX", "INVESTIGACI�N DE OPERACIONES", "INGENIER�A EN SISTEMAS COMPUTACIONALES", "ING. RUIZ GAYTAN LUZ DEL CARMEN", "AGOSTO-DICIEMBRE/2020", "C", "MATUTINO", 32, 3, 4, "C-F8", "", "08:45-10:25", "", "08:45-10:25", "", "48",2,2),
		(4064, "SCC1005", "ISX", "CULTURA EMPRESARIAL", "INGENIER�A EN SISTEMAS COMPUTACIONALES", "MTRA S�NCHEZ CANO MA. CONCEPCI�N ROC�O", "AGOSTO-DICIEMBRE/2020", "B", "MATUTINO", 34, 3, 4, "C-D4", "", "07:00-08:40", "", "07:00-08:40", "", "50",2,2),
		(4067, "ACD0908", "ISX", "DESARROLLO SUSTENTABLE", "INGENIER�A EN SISTEMAS COMPUTACIONALES", "ING. GUEVARA RANGEL LAURA PATRICIA", "AGOSTO-DICIEMBRE/2020", "A", "MATUTINO", 33, 3, 5, "C-D8", "", "10:30-12:10", "", "10:30-12:10", "11:20-12:10", "34",3,2),
		(4068, "ACD0908", "ISX", "DESARROLLO SUSTENTABLE", "INGENIER�A EN SISTEMAS COMPUTACIONALES", "ING. GUEVARA RANGEL LAURA PATRICIA", "AGOSTO-DICIEMBRE/2020", "B", "MATUTINO", 23, 3, 5, "C-D8", "", "12:15-13:55", "", "12:15-13:55", "13:05-13:55", "34",3,2),
		(4069, "ACD0908", "ISX", "DESARROLLO SUSTENTABLE", "INGENIER�A EN SISTEMAS COMPUTACIONALES", "LIC. ORTIZ GAUCIN ANGELICA MARIA", "AGOSTO-DICIEMBRE/2020", "C", "MATUTINO", 34, 3, 5, "C-D8", "", "07:00-08:40", "", "07:00-08:40", "07:50-08:40", "44",3,2),
		(4071, "ACF0905", "ISX", "ECUACIONES DIFERENCIALES", "INGENIER�A EN SISTEMAS COMPUTACIONALES", "LIC. PUGA SOBERANES HECTOR JOSE", "AGOSTO-DICIEMBRE/2020", "A", "MATUTINO", 22, 4, 5, "C-F7", "12:15-13:55", "", "12:15-13:55", "", "12:15-13:05", "45",3,2),
		(4073, "SCD1027", "ISX", "T�PICOS AVANZADOS DE PROGRAMACI�N", "INGENIER�A EN SISTEMAS COMPUTACIONALES", "ING. LEVY ROJAS CARLOS RAFAEL", "AGOSTO-DICIEMBRE/2020", "A", "MATUTINO", 19, 4, 5, "C-D15", "", "12:15-13:55", "", "12:15-13:55", "13:05-13:55", "38",2,3),
		(4074, "SCD1027", "ISX", "T�PICOS AVANZADOS DE PROGRAMACI�N", "INGENIER�A EN SISTEMAS COMPUTACIONALES", "ING. SILVA TOVAR CIRINO", "AGOSTO-DICIEMBRE/2020", "B", "MATUTINO", 8, 4, 5, "C-D15", "", "10:30-12:10", "", "10:30-12:10", "11:20-12:10", "52",2,3),
		(4075, "SCD1027", "ISX", "T�PICOS AVANZADOS DE PROGRAMACI�N", "INGENIER�A EN SISTEMAS COMPUTACIONALES", "ING. SILVA TOVAR CIRINO", "AGOSTO-DICIEMBRE/2020", "C", "MATUTINO", 11, 4, 5, "C-D15", "", "08:45-10:25", "", "08:45-10:25", "09:35-10:25", "52",2,3),
		(4078, "SCD1018", "ISX", "PRINCIPIOS EL�CTRICOS Y APLICACIONES DIGITALES", "INGENIER�A EN SISTEMAS COMPUTACIONALES", "DRA BALTAZAR FLORES MARIA DEL ROSARIO", "AGOSTO-DICIEMBRE/2020", "C", "MATUTINO", 15, 4, 5, "C-D12", "10:30-12:10", "", "10:30-12:10", "", "10:30-11:20", "26",2,3),
		(4079, "AEF1031", "ISX", "FUNDAMENTOS DE BASE DE DATOS", "INGENIER�A EN SISTEMAS COMPUTACIONALES", "ING. JUAREZ GUERRA LAURA", "AGOSTO-DICIEMBRE/2020", "A", "MATUTINO", 17, 4, 5, "C-D11", "", "07:00-08:40", "", "07:00-08:40", "07:50-08:40", "37",2,3),
		(4080, "AEF1031", "ISX", "FUNDAMENTOS DE BASE DE DATOS", "INGENIER�A EN SISTEMAS COMPUTACIONALES", "ING. JUAREZ GUERRA LAURA", "AGOSTO-DICIEMBRE/2020", "B", "MATUTINO", 10, 4, 5, "C-D11", "", "08:45-10:25", "", "08:45-10:25", "09:35-10:25", "37",3,2),
		(4081, "AEF1031", "ISX", "FUNDAMENTOS DE BASE DE DATOS", "INGENIER�A EN SISTEMAS COMPUTACIONALES", "ING. RUIZ GAYTAN LUZ DEL CARMEN", "AGOSTO-DICIEMBRE/2020", "C", "MATUTINO", 13, 4, 5, "C-D11", "", "10:30-12:10", "", "10:30-12:10", "11:20-12:10", "48",3,2),
		(4083, "AEF1031", "ISX", "FUNDAMENTOS DE BASE DE DATOS", "INGENIER�A EN SISTEMAS COMPUTACIONALES", "ING. RUIZ GAYTAN LUZ DEL CARMEN", "AGOSTO-DICIEMBRE/2020", "E", "MATUTINO", 11, 4, 5, "C-D11", "12:15-13:55", "", "12:15-13:55", "", "12:15-13:05", "48",3,2),
		(4084, "SCD1022", "ISX", "SIMULACI�N", "INGENIER�A EN SISTEMAS COMPUTACIONALES", "DR. CARPIO VALADEZ JUAN MARTIN", "AGOSTO-DICIEMBRE/2020", "A", "MATUTINO", 11, 4, 5, "C-X1", "08:45-10:25", "", "08:45-10:25", "", "08:45-09:35", "28",2,3),
		(4095, "SCA1025", "ISX", "TALLER DE BASE DE DATOS", "INGENIER�A EN SISTEMAS COMPUTACIONALES", "ING. HERNANDEZ CARRANZA ANGELICA BENITA", "AGOSTO-DICIEMBRE/2020", "A", "MATUTINO", 16, 5, 4, "C-D11", "07:00-08:40", "", "07:00-08:40", "", "", "36",0,4),
		(4096, "SCA1025", "ISX", "TALLER DE BASE DE DATOS", "INGENIER�A EN SISTEMAS COMPUTACIONALES", "ING. LEVY ROJAS CARLOS RAFAEL", "AGOSTO-DICIEMBRE/2020", "B", "MATUTINO", 10, 5, 4, "C-D11", "08:45-10:25", "", "08:45-10:25", "", "", "38",0,4),
		(4097, "SCA1025", "ISX", "TALLER DE BASE DE DATOS", "INGENIER�A EN SISTEMAS COMPUTACIONALES", "ING. HERNANDEZ CARRANZA ANGELICA BENITA", "AGOSTO-DICIEMBRE/2020", "C", "MATUTINO", 18, 5, 4, "C-D11", "10:30-12:10", "", "10:30-12:10", "", "", "36",0,4),
		(4098, "SCA1025", "ISX", "TALLER DE BASE DE DATOS", "INGENIER�A EN SISTEMAS COMPUTACIONALES", "ING. HERNANDEZ CARRANZA ANGELICA BENITA", "AGOSTO-DICIEMBRE/2020", "D", "MATUTINO", 17, 5, 4, "C-LC3", "12:15-13:55", "", "12:15-13:55", "", "", "36",0,4),
		(4099, "SCA1025", "ISX", "TALLER DE BASE DE DATOS", "INGENIER�A EN SISTEMAS COMPUTACIONALES", "ING. RUIZ GAYTAN LUZ DEL CARMEN", "AGOSTO-DICIEMBRE/2020", "E", "MATUTINO", 14, 5, 4, "C-LC1", "", "12:15-13:55", "", "12:15-13:55", "", "48",0,4),
		(4108, "AEC1034", "ISX", "FUNDAMENTOS DE TELECOMUNICACIONES", "INGENIER�A EN SISTEMAS COMPUTACIONALES", "ING GALLEGOS MU�OZ LUIS ROBERTO", "AGOSTO-DICIEMBRE/2020", "D", "MATUTINO", 21, 5, 4, "C-SC1", "08:45-10:25", "", "08:45-10:25", "", "", "31",2,2),
		(4109, "AEC1034", "ISX", "FUNDAMENTOS DE TELECOMUNICACIONES", "INGENIER�A EN SISTEMAS COMPUTACIONALES", "ING GARCIA ORNELAS DOMINGO", "AGOSTO-DICIEMBRE/2020", "E", "MATUTINO", 22, 5, 4, "C-SC1", "", "08:45-10:25", "", "08:45-10:25", "", "32",2,2),
		(4110, "SCC1007", "ISX", "FUNDAMENTOS DE TELECOMUNICACIONES", "INGENIER�A EN SISTEMAS COMPUTACIONALES", "ING. SANDOVAL SOLIS MA. CONCEPCION", "AGOSTO-DICIEMBRE/2020", "A", "MATUTINO", 26, 5, 4, "C-LC2", "08:45-10:25", "", "08:45-10:25", "", "", "51",2,2),
		(4111, "SCC1007", "ISX", "FUNDAMENTOS DE TELECOMUNICACIONES", "INGENIER�A EN SISTEMAS COMPUTACIONALES", "ING. MARTINEZ AGUILAR ANA COLUMBA ZURITA", "AGOSTO-DICIEMBRE/2020", "B", "MATUTINO", 22, 5, 4, "C-D9", "07:00-08:40", "", "07:00-08:40", "", "", "40",2,2),
		(4112, "SCC1007", "ISX", "FUNDAMENTOS DE TELECOMUNICACIONES", "INGENIER�A EN SISTEMAS COMPUTACIONALES", "ING CASTILLO MART�NEZ PATRICIA MARIA", "AGOSTO-DICIEMBRE/2020", "C", "MATUTINO", 21, 5, 4, "C-LC2", "12:15-13:55", "", "12:15-13:55", "", "", "30",2,2),
		(4116, "AEC1061", "ISX", "SISTEMAS OPERATIVOS", "INGENIER�A EN SISTEMAS COMPUTACIONALES", "ING. MARTINEZ AGUILAR ANA COLUMBA ZURITA", "AGOSTO-DICIEMBRE/2020", "C", "MATUTINO", 26, 5, 4, "C-LC2", "", "10:30-12:10", "", "10:30-12:10", "", "40",2,2),
		(4123, "SCB1001", "ISX", "ADMINISTRACI�N DE BASE DE DATOS", "INGENIER�A EN SISTEMAS COMPUTACIONALES", "ING. HERNANDEZ CARRANZA ANGELICA BENITA", "AGOSTO-DICIEMBRE/2020", "A", "MATUTINO", 14, 6, 5, "C-D14", "", "10:30-12:10", "", "10:30-12:10", "11:20-12:10", "36",1,4),
		(4124, "SCB1001", "ISX", "ADMINISTRACI�N DE BASE DE DATOS", "INGENIER�A EN SISTEMAS COMPUTACIONALES", "ING. HERNANDEZ CARRANZA ANGELICA BENITA", "AGOSTO-DICIEMBRE/2020", "B", "MATUTINO", 15, 6, 5, "C-D14", "", "12:15-13:55", "", "12:15-13:55", "13:05-13:55", "36",1,4),
		(4126, "SCD1021", "ISX", "REDES DE COMPUTADORAS", "INGENIER�A EN SISTEMAS COMPUTACIONALES", "ING. MURILLO RUIZ JUAN PABLO", "AGOSTO-DICIEMBRE/2020", "A", "MATUTINO", 21, 6, 5, "C-LC4", "", "07:00-08:40", "", "07:00-08:40", "07:50-08:40", "43",2,3),
		(4127, "SCD1021", "ISX", "REDES DE COMPUTADORAS", "INGENIER�A EN SISTEMAS COMPUTACIONALES", "ING. MURILLO RUIZ JUAN PABLO", "AGOSTO-DICIEMBRE/2020", "B", "MATUTINO", 2, 6, 5, "C-LC4", "", "08:45-10:25", "", "08:45-10:25", "09:35-10:25", "43",2,3),
		(4134, "SCD1011", "ISX", "INGENIER�A DE SOFTWARE", "INGENIER�A EN SISTEMAS COMPUTACIONALES", "ING CASTILLO MART�NEZ PATRICIA MARIA", "AGOSTO-DICIEMBRE/2020", "A", "MATUTINO", 12, 6, 5, "C-F5", "", "12:15-13:55", "", "12:15-13:55", "13:05-13:55", "30",2,3),
		(4135, "SCD1011", "ISX", "INGENIER�A DE SOFTWARE", "INGENIER�A EN SISTEMAS COMPUTACIONALES", "ING CASTILLO MART�NEZ PATRICIA MARIA", "AGOSTO-DICIEMBRE/2020", "B", "MATUTINO", 19, 6, 5, "C-F5", "", "10:30-12:10", "", "10:30-12:10", "11:20-12:10", "30",2,3),
		(4137, "SCD1015", "ISX", "LENGUAJES Y AUT�MATAS I", "INGENIER�A EN SISTEMAS COMPUTACIONALES", "ING. SAEZ DE NANCLARES RODRIGUEZ RUTH", "AGOSTO-DICIEMBRE/2020", "B", "MATUTINO", 9, 6, 5, "C-D9", "10:30-12:10", "", "10:30-12:10", "", "10:30-11:20", "49",2,3),
		(4138, "SCD1015", "ISX", "LENGUAJES Y AUT�MATAS I", "INGENIER�A EN SISTEMAS COMPUTACIONALES", "ING. SAEZ DE NANCLARES RODRIGUEZ RUTH", "AGOSTO-DICIEMBRE/2020", "C", "MATUTINO", 15, 6, 5, "C-D9", "08:45-10:25", "", "08:45-10:25", "", "08:45-09:35", "49",2,3),
		(4139, "SCC1023", "ISX", "SISTEMAS PROGRAMABLES", "INGENIER�A EN SISTEMAS COMPUTACIONALES", "ING. MURILLO RUIZ JUAN PABLO", "AGOSTO-DICIEMBRE/2020", "A", "MATUTINO", 24, 7, 4, "C-F5", "08:45-10:25", "", "08:45-10:25", "", "", "43",2,2),
		(4140, "SCC1023", "ISX", "SISTEMAS PROGRAMABLES", "INGENIER�A EN SISTEMAS COMPUTACIONALES", "ING. MURILLO RUIZ JUAN PABLO", "AGOSTO-DICIEMBRE/2020", "B", "MATUTINO", 23, 7, 4, "C-F5", "07:00-08:40", "", "07:00-08:40", "", "", "43",2,2),
		(4141, "SCC1023", "ISX", "SISTEMAS PROGRAMABLES", "INGENIER�A EN SISTEMAS COMPUTACIONALES", "ING. MURILLO RUIZ JUAN PABLO", "AGOSTO-DICIEMBRE/2020", "C", "MATUTINO", 14, 7, 4, "C-F5", "12:15-13:55", "", "12:15-13:55", "", "", "43",2,2),
		(4142, "DAD1401", "ISX", "BASES DE DATOS AVANZADAS", "INGENIER�A EN SISTEMAS COMPUTACIONALES", "ING. JUAREZ GUERRA LAURA", "AGOSTO-DICIEMBRE/2020", "A", "MATUTINO", 20, 7, 5, "C-D14", "07:00-08:40", "", "07:00-08:40", "", "07:00-07:50", "37",2,3),
		(4143, "DAD1401", "ISX", "BASES DE DATOS AVANZADAS", "INGENIER�A EN SISTEMAS COMPUTACIONALES", "ING. JUAREZ GUERRA LAURA", "AGOSTO-DICIEMBRE/2020", "B", "MATUTINO", 20, 7, 5, "C-D14", "08:45-10:25", "", "08:45-10:25", "", "08:45-09:35", "37",2,3),
		(4150, "SCD1004", "ISX", "CONMUTACI�N Y ENRUTAMIENTO EN REDES DE DATOS", "INGENIER�A EN SISTEMAS COMPUTACIONALES", "ING GARCIA ORNELAS DOMINGO", "AGOSTO-DICIEMBRE/2020", "E", "MATUTINO", 15, 7, 5, "C-SC1", "", "07:00-08:40", "", "07:00-08:40", "07:50-08:40", "32",2,3),
		(4151, "SCG1009", "ISX", "GESTI�N DE PROYECTOS DE SOFTWARE", "INGENIER�A EN SISTEMAS COMPUTACIONALES", "ING CASTILLO MART�NEZ PATRICIA MARIA", "AGOSTO-DICIEMBRE/2020", "A", "MATUTINO", 25, 7, 6, "C-F5", "", "08:45-10:25", "", "08:45-10:25", "08:45-09:35", "30",3,3),
		(4153, "SCG1009", "ISX", "GESTI�N DE PROYECTOS DE SOFTWARE", "INGENIER�A EN SISTEMAS COMPUTACIONALES", "ING. MARTINEZ AGUILAR ANA COLUMBA ZURITA", "AGOSTO-DICIEMBRE/2020", "C", "MATUTINO", 25, 7, 6, "C-D2", "", "12:15-13:55", "", "12:15-13:55", "12:15-13:55", "40",3,3),
		(4155, "SCD1016", "ISX", "LENGUAJES Y AUT�MATAS II", "INGENIER�A EN SISTEMAS COMPUTACIONALES", "ING. SANDOVAL SOLIS MA. CONCEPCION", "AGOSTO-DICIEMBRE/2020", "B", "MATUTINO", 30, 7, 5, "C-F7", "", "08:45-10:25", "", "08:45-10:25", "09:35-10:25", "51",2,3),
		(4156, "SCD1016", "ISX", "LENGUAJES Y AUT�MATAS II", "INGENIER�A EN SISTEMAS COMPUTACIONALES", "ING. SANDOVAL SOLIS MA. CONCEPCION", "AGOSTO-DICIEMBRE/2020", "C", "MATUTINO", 27, 7, 5, "C-F7", "", "10:30-12:10", "", "10:30-12:10", "11:20-12:10", "51",2,3),
		(4157, "SCD1016", "ISX", "LENGUAJES Y AUT�MATAS II", "INGENIER�A EN SISTEMAS COMPUTACIONALES", "ING. SANDOVAL SOLIS MA. CONCEPCION", "AGOSTO-DICIEMBRE/2020", "D", "MATUTINO", 14, 7, 5, "C-F7", "", "12:15-13:55", "", "12:15-13:55", "13:05-13:55", "51",2,3),
		(4158, "ACA0909", "ISX", "TALLER DE INVESTIGACI�N I", "INGENIER�A EN SISTEMAS COMPUTACIONALES", "ING. MARIN GONZALEZ EUGENIO CONRADO", "AGOSTO-DICIEMBRE/2020", "A", "MATUTINO", 30, 7, 4, "C-X1", "", "10:30-12:10", "", "10:30-12:10", "", "39",0,4),
		(4159, "SCA1002", "ISX", "ADMINISTRACI�N DE REDES", "INGENIER�A EN SISTEMAS COMPUTACIONALES", "ING GARCIA ORNELAS DOMINGO", "AGOSTO-DICIEMBRE/2020", "A", "MATUTINO", 24, 8, 4, "C-LC1", "08:45-10:25", "", "08:45-10:25", "", "", "32",0,4),
		(4160, "SCA1002", "ISX", "ADMINISTRACI�N DE REDES", "INGENIER�A EN SISTEMAS COMPUTACIONALES", "ING GARCIA ORNELAS DOMINGO", "AGOSTO-DICIEMBRE/2020", "B", "MATUTINO", 23, 8, 4, "C-LC1", "07:00-08:40", "", "07:00-08:40", "", "", "32",0,4),
		(4164, "ACA0910", "ISX", "TALLER DE INVESTIGACI�N II", "INGENIER�A EN SISTEMAS COMPUTACIONALES", "ING. MARTINEZ ARIAS JOSE ELIAS", "AGOSTO-DICIEMBRE/2020", "D", "MATUTINO", 17, 8, 4, "C-X2", "", "10:30-12:10", "", "10:30-12:10", "", "41",0,4),
		(4167, "SCC1019", "ISX", "PROGRAMACI�N L�GICA Y FUNCIONAL", "INGENIER�A EN SISTEMAS COMPUTACIONALES", "ING. CARPIO FLORES JOSE GERARDO", "AGOSTO-DICIEMBRE/2020", "A", "MATUTINO", 21, 8, 4, "C-D9", "", "07:00-08:40", "", "07:00-08:40", "", "27",2,2),
		(4168, "SCC1019", "ISX", "PROGRAMACI�N L�GICA Y FUNCIONAL", "INGENIER�A EN SISTEMAS COMPUTACIONALES", "ING. CARPIO FLORES JOSE GERARDO", "AGOSTO-DICIEMBRE/2020", "B", "MATUTINO", 14, 8, 4, "C-D13", "", "08:45-10:25", "", "08:45-10:25", "", "27",2,2),
		(4171, "AEB1055", "ISX", "PROGRAMACI�N WEB", "INGENIER�A EN SISTEMAS COMPUTACIONALES", "LIC. ORTIZ GAUCIN ANGELICA MARIA", "AGOSTO-DICIEMBRE/2020", "A", "MATUTINO", 7, 8, 5, "C-D7", "10:30-12:10", "", "10:30-12:10", "", "10:30-11:20", "44",1,4),
		(4177, "DAD1402", "ISX", "DESARROLLO DE APLICACIONES EMPRESARIALES", "INGENIER�A EN SISTEMAS COMPUTACIONALES", "ING. SUAREZ Y GOMEZ JOSE LUIS FERNANDO", "AGOSTO-DICIEMBRE/2020", "C", "MATUTINO", 20, 8, 5, "C-D7", "", "08:45-10:25", "", "08:45-10:25", "09:35-10:25", "53",2,3),
		(4178, "DAD1402", "ISX", "DESARROLLO DE APLICACIONES EMPRESARIALES", "INGENIER�A EN SISTEMAS COMPUTACIONALES", "ING. SUAREZ Y GOMEZ JOSE LUIS FERNANDO", "AGOSTO-DICIEMBRE/2020", "D", "MATUTINO", 24, 8, 5, "C-F6", "", "07:00-08:40", "", "07:00-08:40", "07:50-08:40", "53",2,3),
		(4179, "SCC1012", "ISX", "INTELIGENCIA ARTIFICIAL", "INGENIER�A EN SISTEMAS COMPUTACIONALES", "ING. MARIN GONZALEZ EUGENIO CONRADO", "AGOSTO-DICIEMBRE/2020", "A", "MATUTINO", 24, 9, 4, "C-F6", "", "07:00-08:40", "", "07:00-08:40", "", "39",2,2),
		(4180, "SCC1012", "ISX", "INTELIGENCIA ARTIFICIAL", "INGENIER�A EN SISTEMAS COMPUTACIONALES", "ING. MARIN GONZALEZ EUGENIO CONRADO", "AGOSTO-DICIEMBRE/2020", "B", "MATUTINO", 24, 9, 4, "C-LC1", "", "08:45-10:25", "", "08:45-10:25", "", "39",2,2),
		(4181, "DAD1403", "ISX", "PROGRAMACI�N WEB AVANZADA", "INGENIER�A EN SISTEMAS COMPUTACIONALES", "ING. LEVY ROJAS CARLOS RAFAEL", "AGOSTO-DICIEMBRE/2020", "A", "MATUTINO", 20, 9, 5, "C-LC1", "10:30-12:10", "", "10:30-12:10", "", "10:30-11:20", "38",2,3),
		(4182, "DAD1403", "ISX", "PROGRAMACI�N WEB AVANZADA", "INGENIER�A EN SISTEMAS COMPUTACIONALES", "LIC. ORTIZ GAUCIN ANGELICA MARIA", "AGOSTO-DICIEMBRE/2020", "B", "MATUTINO", 13, 9, 5, "C-LC2", "12:15-13:55", "", "12:15-13:55", "", "12:15-13:05", "44",2,3),
		(4183, "DAD1403", "ISX", "PROGRAMACI�N WEB AVANZADA", "INGENIER�A EN SISTEMAS COMPUTACIONALES", "LIC. ORTIZ GAUCIN ANGELICA MARIA", "AGOSTO-DICIEMBRE/2020", "C", "MATUTINO", 23, 9, 5, "C-D7", "07:00-08:40", "", "07:00-08:40", "", "07:00-07:50", "44",2,3),
		(4184, "DAD1404", "ISX", "ARQUITECTURA DE APLICACIONES EMPRESARIALES", "INGENIER�A EN SISTEMAS COMPUTACIONALES", "ING. SUAREZ Y GOMEZ JOSE LUIS FERNANDO", "AGOSTO-DICIEMBRE/2020", "A", "MATUTINO", 24, 9, 5, "C-D7", "12:15-13:55", "", "12:15-13:55", "", "12:15-13:05", "53",2,3),
		(4185, "DAD1404", "ISX", "ARQUITECTURA DE APLICACIONES EMPRESARIALES", "INGENIER�A EN SISTEMAS COMPUTACIONALES", "ING. SUAREZ Y GOMEZ JOSE LUIS FERNANDO", "AGOSTO-DICIEMBRE/2020", "B", "MATUTINO", 22, 9, 5, "C-D7", "10:30-12:10", "", "10:30-12:10", "", "10:30-11:20", "53",2,3),
		(4188, "DAB1405", "ISX", "DESARROLLO DE APLICACIONES PARA DISPOSITIVOS M�VILES", "INGENIER�A EN SISTEMAS COMPUTACIONALES", "ING. MARTINEZ PRADO EDNA MILITZA", "AGOSTO-DICIEMBRE/2020", "C", "MATUTINO", 26, 9, 5, "C-D13", "", "12:15-13:55", "", "12:15-13:55", "13:05-13:55", "42",2,3),
		(4189, "DAB1405", "ISX", "DESARROLLO DE APLICACIONES PARA DISPOSITIVOS M�VILES", "INGENIER�A EN SISTEMAS COMPUTACIONALES", "ING. MARTINEZ PRADO EDNA MILITZA", "AGOSTO-DICIEMBRE/2020", "D", "MATUTINO", 27, 9, 5, "C-D13", "", "10:30-12:10", "", "10:30-12:10", "11:20-12:10", "42",2,3);