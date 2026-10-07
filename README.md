# outer-joins-ministore

FAQ:
1. ¿Por qué usar LEFT JOIN y no INNER JOIN en la consulta 1?
   R/. La elección del tipo de JOIN a utilizar se basa en cómo se quiere ver el conjunto de datos. Aquí el INNER JOIN se entiende como una intersección estricta, solo lo que está simultaneamente en las dos tablas, y aquí, si se eigiera éste, se perdería la información de los productos que no tienen ninguna venta, ya que aquellos productos no están en las dos tablas sino solo en una, por lo que lo más adecuado es usar el LEFT JOIN, ya que así sí se revelan aquellos que no están en la tabla de ventas, los muestra como NULL.

2. ¿Por qué usar RIGHT JOIN en la consulta 2?
   R/. Se puede decir que esta consulta va en la dirección contraria de la primera, por lo que el JOIN se puede interpretar como que va en la dirección contraria. Aquí, tal cual como en la consulta 1, la tabla de la izquierda es productos y la de la derecha es ventas.

3. ¿Qué significado tienen los NULL en cada caso?
   R/. Los NULL arrojan la información de que al realizar aquella operación entre conjuntos, lo que se busca en la otra tabla no se encuentra, por lo que el JOIN correspondiente solo muestra lo que está en la tabla desde la que sale el JOIN, pero el NULL es que hacia donde va el JOIN no tiene nada asociado. En la consulta 1, los NULL aparecen debido a que esos productos no tienen un id_venta asociado, por lo que, no se encuentra nada relacionado a ellos en la tabla hacia la que va el JOIN. Así mismo, en la consulta 2 sucede de alguna forma al revés, ya que es una venta de la cual no se tiene id_producto, es decir, como decir que se vendió un producto que no existe en el inventario.

4. ¿Cuándo usar FULL OUTER JOIN?
   R/. Este JOIN se usaría en una ocasión donde se quiera visualizar toda la información que se tenga registrada hasta el momento, un cruce más efectivo que hacer varias lineas de SELECT. Es, aún así, importante aclarar que puede tener un impacto negativo en tiempo y recursos el hecho de que haya demasiada información, muchas tablas, columnas y filas, así que se debe ser selectivo. En el caso expuesto hasta ahora, al no haber mucha información, se vuelve óptimo.
