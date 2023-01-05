create procedure sp_Registrar
(@Nombre nvarchar(50),
 @Tipo nvarchar(50),
 @Stock int,
 @UbicacionStock nvarchar(50)
 )
 as
 begin
	insert into Productos(Nombre,Tipo,Stock,UbicacionStock) values (@Nombre,@Tipo,@Stock,@UbicacionStock)
 end

 create procedure sp_Editar
 (
 @ID int,
 @Nombre nvarchar(50),
 @Tipo nvarchar(50),
 @Stock int,
 @UbicacionStock nvarchar(50)
 )
 as
 begin
  update  Productos set Nombre=@Nombre,Tipo=@Tipo,Stock=@Stock,UbicacionStock=@UbicacionStock where ID=@ID
 end

 create procedure sp_Eliminar
 (
	@ID int
 )
 as
 begin
 delete from Productos where ID = @ID
 end

select * from Productos;