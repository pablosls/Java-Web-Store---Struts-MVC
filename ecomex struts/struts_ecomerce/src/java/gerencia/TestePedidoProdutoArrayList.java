package gerencia;

import java.sql.SQLException;
import modelo.Pedido;
import modelo.Produto;
import modelo.PedidoProdutoArrayList;
import dao.PedidoProdutoDAOArrayList;
import java.util.ArrayList;

public class TestePedidoProdutoArrayList {

    public static void main(String args[]) {
        try {
            PedidoProdutoDAOArrayList pedprodArrayListDao = new PedidoProdutoDAOArrayList();
            PedidoProdutoArrayList pedProdArrayList = new PedidoProdutoArrayList();

            Pedido pedido1 = new Pedido();
            pedido1.setNum_pedido(2);

            ArrayList<Produto> prodArrayList = new ArrayList<Produto>();

            Produto produto1 = new Produto();
            produto1.setCod_produto(1);
            produto1.setQtd(42);

            Produto produto2 = new Produto();
            produto2.setCod_produto(2);
            produto2.setQtd(4);

            Produto produto3 = new Produto();
            produto3.setCod_produto(3);
            produto3.setQtd(7);

            prodArrayList.add(produto1);
            prodArrayList.add(produto2);
            prodArrayList.add(produto3);

            pedProdArrayList.setPedido(pedido1);
            pedProdArrayList.setProdutos(prodArrayList);

            pedprodArrayListDao.create(pedProdArrayList);

            /*read produtos*/

            System.out.println("Buscando informacoes do pedido: " + pedido1.getNum_pedido());
            PedidoProdutoArrayList read;
            read = (PedidoProdutoArrayList) pedprodArrayListDao.read(pedProdArrayList);
            System.out.println("Total produtos: " + read.getProdutos().size());


            /*Excluindo pedido*/
            //pedprodArrayListDao.delete(pedProdArrayList);

            /*update */
            //pedprodArrayListDao.update(pedProdArrayList);

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
