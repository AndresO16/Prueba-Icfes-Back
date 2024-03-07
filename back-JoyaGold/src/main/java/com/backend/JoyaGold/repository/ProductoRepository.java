package com.backend.JoyaGold.repository;

import com.backend.JoyaGold.model.Producto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class ProductoRepository implements IProductoRepository{
    @Autowired
    private JdbcTemplate jdbcTemplate;
    @Override
    public List<Producto> findAll() {
        String sql = "SELECT * FROM PRODUCTO ORDER BY nombre ASC";
        return jdbcTemplate.query(sql, BeanPropertyRowMapper.newInstance(Producto.class));
    }

    @Override
    public int save(Producto producto) {
        String sql = "INSERT INTO PRODUCTO " +
                "(nombre, material, tipo, precio, peso, largo, ancho, stock, descripcion, marca, talla) " +
                "VALUES (?,?,?,?,?,?,?,?,?,?,?)";
        return jdbcTemplate.update(sql, new Object[]{producto.getNombre(), producto.getMaterial(),
                producto.getTipo(), producto.getPrecio(), producto.getPeso(), producto.getLargo(),
                producto.getAncho(), producto.getStock(), producto.getDescripcion(),
                producto.getMarca(), producto.getTalla()});
    }

    @Override
    public int update(Producto producto) {
        String sql = "UPDATE PRODUCTO " +
                "SET nombre = ?, material = ?, tipo = ?, precio = ?, peso = ?, largo = ?, " +
                "ancho = ?, stock = ?, descripcion = ?, marca = ?, talla = ? WHERE id = ?";
        return jdbcTemplate.update(sql, new Object[]{producto.getNombre(), producto.getMaterial(),
                producto.getTipo(), producto.getPrecio(), producto.getPeso(), producto.getLargo(),
                producto.getAncho(), producto.getStock(), producto.getDescripcion(),
                producto.getMarca(), producto.getTalla(), producto.getId()});
    }

    @Override
    public int deleteById(int id) {
        String sql = "DELETE FROM PRODUCTO WHERE id = ? ";
        return jdbcTemplate.update(sql, new Object[]{id});
    }
}
