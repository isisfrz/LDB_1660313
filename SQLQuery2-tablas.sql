use [BibliotecaLAI]

select * from Empleados
select * from Puestos
select * from Estatus
select * from Estado_Fisico
select * from Ejemplares

create table Empleados 
(Id_Emp int not null,
Id_Puesto int not null,
Nom_emp varchar (50) ,
Em_ApPat varchar (50),
Em_ApMat varchar (50),
Em_FechNa datetime,
Em_Dom varchar (70),
Em_Tel int not null)

create table Puestos
(Id_Puesto int not null,
Nom_Puesto varchar (50) ,
)

create table Estatus
(Id_Estatus int not null,
Estatus varchar (50) ,
)

create table Estado_Fisico
(Id_EF int not null,
EFisico varchar (50) ,
)

create table Ejemplares
(Id_Ejem int not null,
Id_Libro int not null,
Id_Estatus int not null,
Id_EF int not null,
Id_Ubi int not null)


