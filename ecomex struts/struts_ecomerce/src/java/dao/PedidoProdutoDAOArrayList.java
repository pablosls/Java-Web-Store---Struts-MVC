package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import modelo.PedidoProdutoArrayList;
import modelo.Produto;
import modelo.Pedido;

public class PedidoProdutoDAOArrayList implements Dao {

    private DataSource dataSource;

    public PedidoProdutoDAOArrayList() throws SQLException {
        dataSource = new DataSource();
    }

    /* inserção no BD */
    @Override
    public void create(Object object) throws SQLException {

        PedidoProdutoArrayList pedidoprod = (PedidoProdutoArrayList) object;
        ArrayList<Produto> produtos = new ArrayList<Produto>();
        produtos = pedidoprod.getProdutos();
        Integer numero_pedido = pedidoprod.getPedido().getNum_pedido();

        for (Produto produto : produtos) {

            String sql = "insert into pedido_produto (cod_pedido,cod_prod,qtd) "
                    + "values(?,?,?)";

            PreparedStatement stm = dataSource.getConnection().prepareStatement(sql);

            stm.setInt(1, numero_pedido);
            stm.setInt(2, produto.getCod_produto());
            stm.setInt(3, produto.getQtd());

            stm.executeUpdate();
            System.out.println("Insersao ok!");
        }
    }
    /* consulta no BD */

    public Object read(Object key) throws SQLException {

        PedidoProdutoArrayList arrayPedProdutos = (PedidoProdutoArrayList) key;
        Pedido pedido = arrayPedProdutos.getPedido();

        ArrayList<Produto> arrayProdutosRs = new ArrayList<Produto>();
        ResultSet rs;
        String sql = "select * from pedido_produto where cod_pedido=?";

        PreparedStatement stm = dataSource.getConnection().prepareStatement(sql);
        stm.setInt(1, pedido.getNum_pedido());

        rs = stm.executeQuery();
        while (rs.next()) {
            Produto produto = new Produto();
            produto.setCod_produto(rs.getInt(2));
            produto.setQtd(rs.getInt(3));
            arrayProdutosRs.add(produto);
            System.out.println("Produto " + produto.getCod_produto() + " adicionado no ArrayList<Produtos>");
        }

        arrayPedProdutos.setProdutos(arrayProdutosRs);
        return arrayPedProdutos;
    }

    /* atualizacao no BD */
    public void update(Object object) throws SQLException {


        PedidoProdutoArrayList arrayPedProd = (PedidoProdutoArrayList) object;
        Pedido pedido = arrayPedProd.getPedido();
        ArrayList<Produto> arrayProdutos = arrayPedProd.getProdutos();

        /*update*/

        for (Produto produto : arrayProdutos) {
            String sql = "update pedido_produto set "
                    + "qtd=? "
                    + "where cod_prod=? and cod_pedido=? ";

            PreparedStatement stm = dataSource.getConnection().prepareStatement(sql);

            stm.setInt(1, produto.getQtd());
            stm.setInt(2, produto.getCod_produto());
            stm.setInt(3, pedido.getNum_pedido());

            stm.executeUpdate();

            System.out.println(stm.toString());
            System.out.println("Update");
        }
    }

    /* exclusao no BD */
    public void delete(Object object) throws SQLException {

        PedidoProdutoArrayList pedProdArray = (PedidoProdutoArrayList) object;
        Pedido pedido = pedProdArray.getPedido();
        String sql = "delete from pedido_produto where cod_pedido=?";
        PreparedStatement stm = dataSource.getConnection().prepareStatement(sql);
        stm.setInt(1, pedido.getNum_pedido());
        stm.executeUpdate();

        System.out.println("Pedido Excluido");
    }
}
