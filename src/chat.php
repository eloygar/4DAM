<?php
include "db.php"; 
$consulta = "SELECT * FROM chat ORDER BY id  ASC";
$ejecutar = $conexion->query($consulta);
while ($fila = $ejecutar->fetch_array()) :
?>
    <div id="datos-chat">
        <span style="color:rgb(255, 0, 0);"><?php echo $fila['nombre']; ?>:</span>
        <span style="color:#848484;"><?php echo $fila['mensaje']; ?></span>
        <span style="float :right ;color:black;"><?php echo formatearFecha($fila['fecha']); ?></span>
    </div>
<?php endwhile; ?>