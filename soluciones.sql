-- ══════════════════════════════════════════
-- MiniStore — Soluciones con Outer JOINs
-- Autor: David Muññoz Restrepo
-- Fecha: 7/10/2026
-- ══════════════════════════════════════════
USE prueba_datos
GO
-- ── CONSULTA 1: LEFT JOIN ─────────────────
-- Pregunta de negocio: ¿Qué productos del catálogo nunca fueron vendidos?
-- Mostrá todos los productos y sus ventas asociadas.
-- Los productos sin ventas aparecerán con NULL en las columnas de ventas.
SELECT * 
FROM productos AS p
LEFT JOIN ventas AS v
    ON p.producto_id = v.producto_id WHERE v.producto_id IS NULL;
GO

-- ── CONSULTA 2: RIGHT JOIN ────────────────
-- Pregunta de negocio: ¿Existen ventas registradas con productos
-- que no figuran en nuestro catálogo? (posible error de carga de datos)
-- Los registros huérfanos aparecerán con NULL en las columnas de productos.

SELECT *
FROM productos AS p 
RIGHT JOIN ventas AS v
    ON p.producto_id = v.producto_id WHERE p.producto_id IS NULL;
GO

-- ── CONSULTA 3: FULL OUTER JOIN ───────────
-- Pregunta de negocio: Vista completa de auditoría que muestre
-- todos los productos y todas las ventas sin perder ninguna fila,
-- identificando tanto productos sin ventas como ventas sin producto.

SELECT *
FROM productos as p
FULL OUTER JOIN ventas v
    ON p.producto_id = v.producto_id;
GO

