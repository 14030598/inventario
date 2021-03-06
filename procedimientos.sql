use inventario;

create trigger llenar_datos
		on productos for insert
	as
	begin
		select sum(precio_compra) from productos;
	end

create trigger apartando
							on apartados for insert
as
begin
			--si se inserta un nuevo apartado se tiene que quitar la existencia de productos en la cantidad apartada
end


create procedure totales
	as
		declare @total_invertido money
		set @total_invertido = select sum() from productos 
	begin


select sum(precio_compra) from productos;

select * from productos where nombre like 'palabra%';



/*
create trigger totales
		on productos for insert,delete,update
	as
		declare @precio_compra money
		--para insert de inserted
		set @precio_compra =  select precio_compra from inserted;
		update
	begin
	*/

create table resumen(total_invertido money,
					ganancia_esperada money,
					activo_fijo money,
					efectivo money
					);