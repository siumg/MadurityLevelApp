--drop database NivelDeMadurez;
create database NivelDeMadurez;
go

use NivelDeMadurez;
go

create table Documentos (
	idDocumento int identity primary key,
	documento varchar(100) not null unique,
	descripcion varchar(500) 
);

create table Capitulos (
	idCapitulo int identity primary key,
	idDocumento int not null foreign key references Documentos(idDocumento),
	noCapitulo int not null check(noCapitulo > 0),
	capitulo varchar(1000) 
);

create table Articulos (
	idArticulo int identity primary key,
	idCapitulo int not null foreign key references Capitulos(idCapitulo),
	noArticulo int not null check(noArticulo > 0),
	articulo varchar(800) not null,
	descripcion varchar(2000) not null
);

create table Requerimientos (
	idRequerimiento int identity primary key,
	idArticulo int not null foreign key references Articulos(idArticulo),
	noInciso varchar(5) not null,
	inciso varchar(800) not null
);

create table Preguntas (
	idPregunta int identity primary key,
	idRequerimiento int not null,
	orden int not null check (orden > 0),
	pregunta varchar(1000) not null,
	constraint preguntas_requerimientos foreign key (idRequerimiento) references Requerimientos(idRequerimiento)
);

create table Incisos (
	idInciso int identity primary key,
	idPregunta int not null,
	orden int not null check (orden > 0),
	inciso varchar(1000) not null,
	constraint incisos_preguntas foreign key (idPregunta) references Preguntas(idPregunta)
);

create table Estados (
	idEstado int identity primary key,
	estado varchar(30) not null unique,
	orden int not null check(orden >= 0)
);

create table Encuestados (
	idEncuestado int identity primary key,
	nombres varchar(60) not null,
	apellidos varchar(60) not null,
	correo varchar(80),
	telefono varchar(8),
	cargo varchar(100) not null,
	entidad varchar(200) not null
);

create table RespuestasRequerimientos (
	idRespuesta int identity primary key,
	idEncuestado int not null,	
	fechaInicioEvaluacion date,
	fechaFinEvaluacion date,
	constraint respuestasrequerimientos_encuestados foreign key (idEncuestado) references Encuestados(idEncuestado)
);

create table RespuestasRequerimientosDetalle (
	idRespuestaDetalle int identity primary key,
	idRespuesta int not null foreign key references RespuestasRequerimientos(idRespuesta),
	idRequerimiento int not null,
	idEstado int not null foreign key references Estados(idEstado),
	comentario varchar(2000),
	constraint respuestasrequerimientosdet_requerimientos foreign key (idRequerimiento) references Requerimientos(idRequerimiento),
);