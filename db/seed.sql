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
