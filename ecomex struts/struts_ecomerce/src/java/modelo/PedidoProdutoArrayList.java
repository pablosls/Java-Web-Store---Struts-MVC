/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package modelo;

import java.util.ArrayList;

/**
 *
 * @author Pablo
 */
public class PedidoProdutoArrayList {

    private Pedido pedido;
    private ArrayList <Produto> produto = new ArrayList<Produto>();

    public PedidoProdutoArrayList() {
    }

    public Pedido getPedido() {
        return pedido;
    }

    public void setPedido(Pedido pedido) {
        this.pedido = pedido;
    }

    public ArrayList<Produto> getProdutos() {
        return produto;
    }

    public void setProdutos(ArrayList<Produto> produto) {
        this.produto = produto;
    }

    public int getTotalProdutos(){
        return getProdutos().size();
    }


    
}
