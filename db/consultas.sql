-- 1. Productos con el nombre de su categoría, ordenados por nombre (JOIN, ORDER BY).
SELECT p.id, p.nombre AS producto, c.nombre AS categoria
FROM productos p
INNER JOIN categorias c ON p.categoria_id = c.id
ORDER BY p.nombre ASC;
-- 2. Productos con menos de 5 unidades en stock (WHERE).
SELECT id, nombre, stock
FROM productos
WHERE stock <5;
-- 3. Precio promedio por categoría (GROUP BY, AVG).
SELECT c.nombre AS categoria, AVG(p.precio) AS precio_promedio
FROM categorias c
INNER JOIN productos p ON c.id = p.categoria_id
GROUP BY c.id, c.nombre;
-- 4. Pedidos de un cliente con su fecha y estado (JOIN, WHERE).
SELECT ped.id AS pedido_id, c.nombre AS cliente, ped.fecha, ped.estado
FROM pedidos ped
INNER JOIN clientes c ON ped.cliente_id = c.id
WHERE c.id = 1;
-- 5. Total en dinero de cada pedido (SUM, GROUP BY).
SELECT ped.id AS pedido_id, SUM(dp.cantidad * dp.precio_unitario) AS total
FROM pedidos ped
INNER JOIN detalle_pedidos dp ON ped.id = dp.pedido_id
GROUP BY ped.id;
-- 6. Clientes con más de 2 pedidos (GROUP BY, HAVING).
SELECT c.id, c.nombre, COUNT(ped.id) AS total_pedidos
FROM clientes c
INNER JOIN pedidos ped ON c.id = ped.cliente_id
GROUP BY c.id, c.nombre
HAVING COUNT(ped.id) > 2;
-- 7. Eliminar un cliente sin pedidos (DELETE).
DELETE FROM clientes
WHERE id NOT IN (SELECT DISTINCT cliente_id FROM pedidos);