INSERT INTO categorias (id, nombre) VALUES
(1, 'Laptops'),
(2, 'Perifericos'),
(3, 'Monitores');

INSERT INTO clientes (id, nombre, telefono, email) VALUES
(1, 'Carlos Perez', '71234567', 'carlos.perez@gmail.com'),
(2, 'Maria Gomez', '72345678', 'maria.gomez@gmail.com'),
(3, 'Juan Quispe', '73456789', 'juan.quispe@gmail.com'),
(4, 'Ana Mamani', '74567890', 'ana.mamani@gmail.com'),
(5, 'Lucia Morales', '75678901', 'lucia.morales@gmail.com'),
(6, 'Pedro Flores', '76789012', 'pedro.flores@gmail.com');

INSERT INTO productos (id, nombre, categoria_id, precio, stock) VALUES
(1, 'Laptop Lenovo ThinkPad', 1, 850.00, 10),
(2, 'Laptop Dell Vostro', 1, 920.00, 4),
(3, 'Laptop Asus TUF Gaming', 1, 1100.00, 3),
(4, 'Laptop HP Pavilion', 1, 780.00, 8),
(5, 'Mouse Logitech G Pro', 2, 80.00, 15),
(6, 'Teclado Mecanico Redragon', 2, 60.00, 2),
(7, 'Auriculares HyperX Cloud II', 2, 95.00, 6),
(8, 'Mousepad Razer Gigantus', 2, 30.00, 20),
(9, 'Monitor Samsung 24 pulg', 3, 160.00, 12),
(10, 'Monitor LG UltraGear 27 pulg', 3, 280.00, 3),
(11, 'Monitor BenQ Eye-Care', 3, 190.00, 7),
(12, 'Monitor Asus ProArt', 3, 340.00, 1);


INSERT INTO pedidos (id, cliente_id, fecha, estado) VALUES
(1, 1, '2026-10-01', 'Entregado'),
(2, 1, '2026-10-03', 'Entregado'),
(3, 1, '2026-10-05', 'En proceso'),
(4, 2, '2026-10-06', 'Entregado'),
(5, 2, '2026-10-07', 'Cancelado'),
(6, 2, '2026-10-08', 'Entregado'),
(7, 3, '2026-10-10', 'Entregado'),
(8, 3, '2026-10-11', 'En proceso'),
(9, 4, '2026-10-12', 'Entregado'),
(10, 5, '2026-10-14', 'Pendiente');

INSERT INTO detalle_pedido (id, pedido_id, producto_id, cantidad, precio_unitario) VALUES
(1, 1, 1, 1, 850.00),
(2, 1, 5, 2, 80.00),
(3, 1, 8, 1, 30.00),
(4, 2, 2, 1, 920.00),
(5, 2, 6, 1, 60.00),
(6, 3, 9, 2, 160.00),
(7, 3, 5, 1, 80.00),
(8, 4, 3, 1, 1100.00),
(9, 4, 7, 1, 95.00),
(10, 4, 8, 2, 30.00),
(11, 5, 4, 1, 780.00),
(12, 6, 10, 1, 280.00),
(13, 6, 6, 1, 60.00),
(14, 6, 5, 1, 80.00),
(15, 7, 1, 1, 850.00),
(16, 7, 9, 1, 160.00),
(17, 8, 11, 2, 190.00),
(18, 8, 7, 1, 95.00),
(19, 8, 8, 1, 30.00),
(20, 9, 12, 1, 340.00),
(21, 9, 6, 2, 60.00),
(22, 10, 4, 1, 780.00),
(23, 10, 5, 1, 80.00),
(24, 10, 7, 1, 95.00),
(25, 10, 9, 1, 160.00);