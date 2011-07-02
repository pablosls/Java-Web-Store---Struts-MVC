package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import modelo.Pedido;
import modelo.Usuario;
import java.util.List;
import modelo.Produto;

public class PedidoDAO implements Dao {

    DataSource dataSource;

    public PedidoDAO() throws SQLException {
        dataSource = new DataSource();
    }

    public void create(Object object) throws SQLException {

        Pedido pedido = (Pedido) object;
        Integer cod_user = pedido.getUsuario().getCod_user();
        java.sql.Date dataSql = new java.sql.Date(pedido.getData().getTime());
        String sql = "insert into pedido (num_pedido, valor, data, status, cod_user)"
                + "values (?,?,?,?,?)";
        PreparedStatement stm = dataSource.getConnection().prepareStatement(sql);
        stm.setInt(1, pedido.getNum_pedido());
        stm.setDouble(2, pedido.getValor());
        stm.setDate(3, dataSql);
        stm.setInt(4, pedido.getStatus());
        stm.setInt(5, cod_user);

        stm.executeUpdate();

        System.out.println("Pedido cadastrado");
    }

    public void createPedido(Usuario user, List<Produto> produtos) throws SQLException {

        System.out.println("DAO CREATE PEDIDO");

        //Calculando valor da compra
        double valor_compra = 0;

        for (Produto produto : produtos) {
            valor_compra += produto.getPreco();
        }

        //Criando o pedido
        String sqlPedido = "insert into pedido (valor, data, status, cod_user)"
                + "values (?,NOW(),1,?)";

        PreparedStatement stmPedido = dataSource.getConnection().prepareStatement(sqlPedido);

        stmPedido.setDouble(1, valor_compra);
        stmPedido.setInt(2, user.getCod_user());

        stmPedido.executeUpdate();

        //inserindo produtos do pedido

        for (Produto produto : produtos) {

            String sql2 = "insert into pedido_produto (cod_pedido,cod_prod,qtd) "
                    + "values(LAST_INSERT_ID(),?,1)";

            PreparedStatement stm = dataSource.getConnection().prepareStatement(sql2);

            stm.setInt(1, produto.getCod_produto());

            stm.executeUpdate();
            System.out.println("Insersao ok!");
        }


        System.out.println("Pedido inserido com sucesso");


    }

    public void delete(Object object) throws SQLException {
        Pedido pedido = (Pedido) object;
        String sql = "delete from pedido where num_pedido = ?";
        PreparedStatement stm = dataSource.getConnection().prepareStatement(sql);
        stm.setInt(pedido.getNum_pedido(), 1);
        stm.executeUpdate();
        System.out.println("Pedido excluido com sucesso");
    }

    public Object read(Object key) throws SQLException {
        int cod_pedido = (Integer) key;
        Pedido pedido = new Pedido();
        ResultSet rs;

        String sql = "select * from pedido where num_pedido = ?";
        PreparedStatement stm = dataSource.getConnection().prepareStatement(sql);
        stm.setInt(1, cod_pedido);
        rs = stm.executeQuery();

        if (rs.next()) {
            Usuario user = new Usuario();
            user.setCod_user(rs.getInt(5));

            pedido.setNum_pedido(rs.getInt(1));
            pedido.setValor(rs.getDouble(2));
            pedido.setData(rs.getDate(3));
            pedido.setStatus(rs.getInt(4));
            pedido.setUsuario(user);
            return pedido;
        }
        return null;
    }

        public List<Produto> readProdutosDoPedido(Object obj) throws SQLException {

            Pedido pedido = (Pedido) obj;
        List<Produto> produtos = new ArrayList<Produto>();

        ResultSet rs;

        String sql = "SELECT nome_prod,preco FROM produto, pedido,"
                + " pedido_produto where produto.cod_produto = pedido_produto.cod_prod "
                + " and pedido.num_pedido = pedido_produto.cod_pedido "
                + " and num_pedido = ? order by nome_prod" ;

        PreparedStatement stm = dataSource.getConnection().prepareStatement(sql);
        stm.setInt(1, pedido.getNum_pedido());
        rs = stm.executeQuery();

        while (rs.next()) {
            Produto produto = new Produto();

            produto.setNome_prod(rs.getString("nome_prod"));
            produto.setPreco(rs.getDouble("preco"));
            produtos.add(produto);

        }
        return produtos;
    }


        public Object readPedidosUser(Object key) throws SQLException {

            System.out.println("entrou RedaPedidosUser");

          List<Pedido> pedidos= new ArrayList<Pedido>();
          Usuario user = (Usuario) key;

        Pedido pedido;
        ResultSet rs;

        String sql = "SELECT distinct num_pedido,data,valor,status"
                + " FROM produto, pedido, pedido_produto"
                + " where produto.cod_produto = pedido_produto.cod_prod"
                + " and pedido.num_pedido = pedido_produto.cod_pedido"
                + " and cod_user = ? order by num_pedido";

        PreparedStatement stm = dataSource.getConnection().prepareStatement(sql);
        stm.setInt(1, user.getCod_user());

            System.out.println(stm.toString());
        rs = stm.executeQuery();

        while (rs.next()) {

            pedido = new Pedido();

            pedido.setNum_pedido(rs.getInt(1));
            pedido.setData(rs.getDate(2));
            pedido.setValor(rs.getDouble(3));
            pedido.setStatus(rs.getInt(4));

            pedidos.add(pedido);
            System.out.println("encotrou pedidos");
        }
        return pedidos;

    }

    public void update(Object object) throws SQLException {
        Pedido pedido = (Pedido) object;


        String sql = "update pedido set valor=?, data=?, status=?, cod_user=? "
                + "where num_pedido=?";

        PreparedStatement stm = dataSource.getConnection().prepareStatement(sql);
        stm.setDouble(1, pedido.getValor());
        stm.setDate(2, new java.sql.Date(pedido.getData().getTime()));
        stm.setInt(3, pedido.getStatus());
        stm.setInt(4, pedido.getUsuario().getCod_user());
        stm.setInt(5, pedido.getNum_pedido());

        stm.executeUpdate();

        System.out.println("Pedido Atualizado com sucesso");

    }
}
