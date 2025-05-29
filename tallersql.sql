
SELECT 
v.metodo_pago,
COUNT(v.id) AS numero_ventas,
SUM(dv. cantidad* dv.precio_unitario) AS monto_total
FROM   tienda . venta v
JOIN tienda . detalle_venta dv ON v.detalle_venta_id = dv.id
GROUP BY v.metodo_pago;
