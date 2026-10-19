create table categorias(
    id int primary key,
    nombre varchar(50)
);

create table productos(
    id int primary key,
    nombre varchar(50),,
    categoria_id int,
    precio decimal(10,2),
    stock int
    foreign key (categoria_id) references categorias(id)
);

create table clientes(
    id int primary key,
    nombre varchar(50),
    telefono varchar(20),
    email varchar(100)
);

create table pedidos(
    id int primary key,
    cliente_id int,
    fecha datetime,
    estado varchar(20),
    foreign key (cliente_id) references clientes(id)
);

create table detalle_pedido(
    id int primary key,
    pedido_id int,
    producto_id int,
    cantidad int,
    precio_unitario decimal(10,2),
    foreign key (pedido_id) references pedidos(id),
    foreign key (producto_id) references productos(id)
);
