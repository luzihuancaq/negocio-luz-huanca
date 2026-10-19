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
-- 5. Total en dinero de cada pedido (SUM, GROUP BY).
-- 6. Clientes con más de 2 pedidos (GROUP BY, HAVING).
-- 7. Eliminar un cliente sin pedidos (DELETE).