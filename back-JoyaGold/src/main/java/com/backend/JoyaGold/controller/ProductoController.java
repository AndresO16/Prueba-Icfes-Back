package com.backend.JoyaGold.controller;

import com.backend.JoyaGold.model.Producto;
import com.backend.JoyaGold.model.ServiceResponse;
import com.backend.JoyaGold.service.IProductoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("api/v1/producto")
@CrossOrigin("*")
public class ProductoController {
    @Autowired
    private IProductoService iProductoService;
    @GetMapping("/productos")
    public ResponseEntity<List<Producto>> list(){
        var result = iProductoService.findAll();
        return new ResponseEntity<>(result, HttpStatus.OK);
    }
    @PostMapping("/save")
    public ResponseEntity<ServiceResponse> save(@RequestBody Producto producto){
        ServiceResponse serviceResponse = new ServiceResponse();
        int result = iProductoService.save(producto);
        if(result == 1){
            serviceResponse.setMessage("Se guardo correctamente el producto");
        }

        return new ResponseEntity<>(serviceResponse, HttpStatus.OK);
    }
    @PostMapping("/update")
    public ResponseEntity<ServiceResponse> update(@RequestBody Producto producto){
        ServiceResponse serviceResponse = new ServiceResponse();
        int result = iProductoService.update(producto);
        if(result == 1){
            serviceResponse.setMessage("Se actualizo correctamente el producto");
        }

        return new ResponseEntity<>(serviceResponse, HttpStatus.OK);
    }
    @GetMapping("/delete/{id}")
    public ResponseEntity<ServiceResponse> delete(@PathVariable int id){
        ServiceResponse serviceResponse = new ServiceResponse();
        int result = iProductoService.deleteById(id);
        if(result == 1){
            serviceResponse.setMessage("Se elimino correctamente el producto");
        }

        return new ResponseEntity<>(serviceResponse, HttpStatus.OK);
    }
}
