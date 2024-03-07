package com.backend.JoyaGold.repository;

import com.backend.JoyaGold.model.Producto;

import java.util.List;

public interface IProductoRepository {
    public List<Producto> findAll();
    public int save(Producto producto);
    public int update(Producto producto);
    public int deleteById(int id);
}
