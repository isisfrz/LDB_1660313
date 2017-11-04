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

insert into Empleados values
('1','2','Maria','Lopez','Flores','04-07-1989','1','19263784'
)
insert into Empleados values
('2','2','fernando','Macias','Beltran','09-18-1994','2','29485037'
)
insert into Empleados values
('3','1','Sofia','Gamez','Trujillo','08-07-1989','3','29403765'
)

insert into Empleados values
('4','3','Ana','Casta�eda','Ruiz','02-19-1997','4','92746274'
)

delete from Empleados
where Id_Emp= 1

update Empleados
set Id_Puesto=2
where
Id_Emp=4


create table Puestos
(Id_Puesto int not null,
Nom_Puesto varchar (50) ,
)

insert into Puestos values
('1','Gerente de Biblioteca')
insert into Puestos values
('2','Cajera')
insert into Puestos values
('3','Bibliotecaria')
insert into Puestos values
('4','Conserje')
insert into Puestos values
('5','Almacenista')
insert into Puestos values
('6','Guardia')

delete from Puestos 
where Id_Puesto= 6

update Puestos
set Id_Puesto=6
where
Id_Puesto=4



create table Estatus
(Id_Estatus int not null,
Estatus varchar (50) ,
)

insert into Estatus values
('1','Permanencia-Resguardo')
insert into Estatus values
('2','Prestamo')
insert into Estatus values
('3','Permanencia-Lectura')

create table Estado_Fisico
(Id_EF int not null,
EFisico varchar (50) ,
)

insert into Estado_Fisico values
('1','Excelente')
insert into Estado_Fisico values
('2','Da�ado')
insert into Estado_Fisico values
('3','Inservible')

create table Ejemplares
(Id_Ejem int not null,
Id_Libro int not null,
Id_Estatus int not null,
Id_EF int not null,
Id_Ubi int not null)

insert into Ejemplares values
('1','2','3','1','50'
)
insert into Ejemplares values
('4','12','2','2','70'
)
insert into Ejemplares values
('8','6','2','1','72'
)
insert into Ejemplares values
('16','6','2','1','73'
)

delete from Ejemplares 
where Id_Ejem= 16

update Ejemplares
set Id_Ubi=73
where
Id_Ejem=8


