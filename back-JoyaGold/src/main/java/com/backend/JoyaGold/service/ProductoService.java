package com.backend.JoyaGold.service;

import com.backend.JoyaGold.model.Producto;
import com.backend.JoyaGold.repository.IProductoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProductoService implements IProductoService{
    @Autowired
    private IProductoRepository iProductoRepository;
    @Override
    public List<Producto> findAll() {
        List<Producto> list;
        try {
            list = iProductoRepository.findAll();
        }catch (Exception ex){
            throw ex;
        }
        return list;
    }

    @Override
    public int save(Producto producto) {
        int row;
        try {
            row = iProductoRepository.save(producto);
        }catch (Exception ex){
            throw ex;
        }
        return row;
    }

    @Override
    public int update(Producto producto) {
        int row;
        try {
            row = iProductoRepository.update(producto);
        }catch (Exception ex){
            throw ex;
        }
        return row;
    }

    @Override
    public int deleteById(int id) {
        int row;
        try {
            row = iProductoRepository.deleteById(id);
        }catch (Exception ex){
            throw ex;
        }
        return row;
    }
}
