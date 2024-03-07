package com.backend.JoyaGold.model;

import lombok.Data;

@Data
public class Producto {
    int id;
    String nombre;
    String material;
    String tipo;
    int precio;
    Float peso;
    Float largo;
    Float ancho;
    int stock;
    String descripcion;
    String marca;
    int talla;
}
