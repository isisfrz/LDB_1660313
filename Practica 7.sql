Create procedure 
select Libro @Id_Libro int,
as begin
select a.Id_Libro from Ejemplares f
left join Libro a on a.Id_Libro = f.Id_Libro
where a.Id_Libro= @id_Libro
end

create trigger update Libro
on Libro
after update, delete
as
begin
select* from inserted
end


Create procedure 
select Ejemplares @Id_Ejem int,
as begin
select a.Id_Ejem from Prestamo f
left join Ejemplares a on a.Id_Ejem = f.Id_Ejem
where a.Id_Libro= @id_Libro
end

create trigger update Ejemplares
on Ejemplares
after update, delete
as
begin
select* from inserted
end