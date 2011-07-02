package gerencia;

import dao.PedidoDAO;
import java.text.SimpleDateFormat;
import java.util.Date;
import modelo.Pedido;
import modelo.Usuario;

public class TestePedido {

    public static void main(String[] args) {

        try {
            PedidoDAO pedidoDao = new PedidoDAO();
            Pedido pedido = new Pedido();
            Usuario user = new Usuario();
            user.setCod_user(1);

            SimpleDateFormat sdf = new SimpleDateFormat("dd-MM-yyyy");
            Date utilDate = new Date();
            java.sql.Date sqlDate = new java.sql.Date(utilDate.getTime());

            pedido.setNum_pedido(1);
            pedido.setValor(20.50);
            pedido.setData(sqlDate);
            pedido.setStatus(1);
            pedido.setUsuario(user);

            /* cadatrando um pedido */
            System.out.println("--- Cadastrar um novo pedido");
            pedidoDao.create(pedido);

            /* Consultando um pedido */
            System.out.println("--- Consultando pedido cadastrado");
            pedido = null;
            pedido = (Pedido) pedidoDao.read(1);
            System.out.println("NUMERO: " + pedido.getNum_pedido() + " VALOR: " + pedido.getValor() + "  STATUS: " + pedido.getStatus() + " DATA: " + sdf.format(pedido.getData()));

            /*Update no pedido */
            System.out.println("Atulizando pedido");
            pedido.setStatus(1);
            pedido.setValor(10.20);
            pedidoDao.update(pedido);

            /* Consultando um pedido atulizado */
            System.out.println("--- Consultando pedido atualizado");
            pedido = null;
            pedido = (Pedido) pedidoDao.read(1);
            System.out.println("NUMERO: " + pedido.getNum_pedido() + " VALOR: " + pedido.getValor() + "  STATUS: " + pedido.getStatus() + " DATA: " + sdf.format(pedido.getData()));

            /* Excluindo pedido */
            System.out.println("--- Excluindo Pedido");
            pedidoDao.delete(pedido);

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
