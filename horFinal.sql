CREATE TABLE carrera (
  id_car int(11) NOT NULL,
  nom_car varchar(50) default NULL,
  PRIMARY KEY  (id_car)
);

INSERT INTO carrera VALUES (1,'tecnico en agroindustrias'),(2,'soporte y mantenimento de equipos de computo'),
(3,'soporte y mantenimento de equipos de computo'); 

CREATE TABLE alumno (
  num_con int(20) NOT NULL,
  nom varchar(45) default NULL,
  ap varchar(45) default NULL,
  am varchar(45) default NULL,
  sexo set('Masulino','Femenino') default NULL,
  tel int(20) default NULL,
  mail varchar(45) default NULL,
  pass varchar(45) default NULL,
  id_car int(11) NOT NULL,
  PRIMARY KEY  (num_con),  
  FOREIGN KEY (id_car) REFERENCES carrera (id_car)
);

/*INSERT INTO alumno(num_con, nom, ap, am, sexo, tel, mail, pass, id_car) VALUES(1,'noel','rod','may',
  'Masculino',715,'nerm','pass',1);*/
