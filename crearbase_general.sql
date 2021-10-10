use WebFinancieros
go

/* Creando tabla de empleados */
CREATE TABLE Employee(
	id int primary key identity, 
	first_name varchar(100)not NULL,
	last_name varchar(100) not NULL,
	address varchar(max) not NULL,
	home_phone varchar(50) NULL,
	cell_phone varchar(50) NULL,
	
 )
GO


/* Creando tabla Registrar con campos para llaves foraneas */
Create table Registrar(
Id int primary key identity,

IdEmployee int not null,
CONSTRAINT fk_Employee FOREIGN KEY (IdEmployee) REFERENCES Employee (Id),
);

/* Creando tabla formulario de datos personales con campos para llaves foraneas */
Create table Formulario_dtos_personales(
Id int primary key identity,
Tipo_de_documento varchar(50) NULL,
N_documento varchar(50) NULL,
Email varchar(max) NULL,
Color varchar(50),
Breed varchar(50), 
Age int, Weight int, 
Height int, 
Fav_Food varchar(100), 
Dislikes varchar(500), 
Allergies varchar(500) NOT NULL,

IdRegistrar int not null,
CONSTRAINT fk_Registrar FOREIGN KEY (IdRegistrar) REFERENCES Registrar (Id),
);

/* Creando tabla envio de correo con campos para llaves foraneas */
Create table Envio_correo(
Id int primary key identity,
Account_name varchar(100), 
Description_correo   varchar(100), 
Email_address     varchar(100), 
Display_name       varchar(100), 
Mailserver_name   varchar(100), 
Port_correo           varchar(100), 
Enable_ssl         varchar(100), 
Username           varchar(100), 
Password_correo            varchar(100), 
Fecha  date, 
IdFormulario int not null,
CONSTRAINT fk_Formulario FOREIGN KEY (IdFormulario) REFERENCES Formulario_dtos_personales (Id),
);

