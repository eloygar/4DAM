<?php
$conexion = new mysqli("db", "root", "root", "4dam");

function formatearFecha($fecha){
    return date('g:i a', strtotime($fecha));
}
