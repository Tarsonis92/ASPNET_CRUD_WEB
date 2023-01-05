create table Productos
(
	ID int identity(1,1) primary key,
	Nombre nvarchar(50) unique,
	Tipo nvarchar(25),
	Stock int ,
	UbicacionStock nvarchar(50)
)

