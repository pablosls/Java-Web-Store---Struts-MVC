/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package modelo;

import java.util.*;
/**
 *
 * @author Pablo
 */
public class Pedido {
    
    private int num_pedido;
    private double valor;
    private Date data;
    private Integer status;
    private Usuario usuario;

    public Pedido() {
    }

    public Date getData() {
        return data;
    }

    public void setData(Date data) {
        this.data = data;
    }

    public int getNum_pedido() {
        return num_pedido;
    }

    public void setNum_pedido(int num_pedido) {
        this.num_pedido = num_pedido;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public Usuario getUsuario() {
        return usuario;
    }

    public void setUsuario(Usuario usuario) {
        this.usuario = usuario;
    }

    public double getValor() {
        return valor;
    }

    public void setValor(double valor) {
        this.valor = valor;
    }

}
