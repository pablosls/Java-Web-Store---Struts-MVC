package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import modelo.Carrinho;
import modelo.Categoria;
import modelo.Produto;
import modelo.Usuario;

public class CarrinhoDAO implements Dao {

    private DataSource dataSource;

    public CarrinhoDAO() throws SQLException {
        dataSource = new DataSource();
    }

    public void create(Object object) throws SQLException {
        Carrinho carrinho = (Carrinho) object;
        String sql = "insert into carrinho (cod_user, cod_prod)"
                + " values (?,?)";

        PreparedStatement stm = dataSource.getConnection().prepareStatement(sql);
        stm.setInt(1, carrinho.getUser().getCod_user());
        stm.setInt(2, carrinho.getProduto().getCod_produto());
        stm.executeUpdate();

    }

    public void AdicionaItemCarrinho(Usuario user, Produto prod) throws SQLException {

        //veririfica o item ja esta no carrinho
        String sql1 = "select (cod_prod) from carrinho where cod_user=? and cod_prod=?";

        PreparedStatement stm1 = dataSource.getConnection().prepareStatement(sql1);

        stm1.setInt(1, user.getCod_user());
        stm1.setInt(2, prod.getCod_produto());

        ResultSet rs = stm1.executeQuery();

        //se nao estiver, adiciona
        if (!rs.next()) {
            String sql = "insert into carrinho (cod_user, cod_prod)"
                    + " values (?,?)";
            PreparedStatement stm = dataSource.getConnection().prepareStatement(sql);
            stm.setInt(1, user.getCod_user());
            stm.setInt(2, prod.getCod_produto());
            stm.executeUpdate();
        }

    }

    public void delete(Object object) throws SQLException {

        Carrinho carrinho = (Carrinho) object;
        String sql = "delete from carrinho where cod_user=? and cod_prod=?";

        PreparedStatement stm = dataSource.getConnection().prepareStatement(sql);
        stm.setInt(1, carrinho.getUser().getCod_user());
        stm.setInt(2, carrinho.getProduto().getCod_produto());
        stm.executeUpdate();
    }

    public void limpaCarrinho(Object object) throws SQLException {

        Usuario user = (Usuario) object;
        String sql = "delete from carrinho where cod_user=?";

        PreparedStatement stm = dataSource.getConnection().prepareStatement(sql);
        stm.setInt(1, user.getCod_user());

        stm.executeUpdate();
    }

    public void excluirDoCarrinho(int cod_user, int cod_prod) throws SQLException {
        String sql = "delete from carrinho where cod_user=? and cod_prod=?";
        PreparedStatement stm = dataSource.getConnection().prepareStatement(sql);
        stm.setInt(1, cod_user);
        stm.setInt(2, cod_prod);
        stm.executeUpdate();
    }

    public Object read(Object key) throws SQLException {

        int cod_user = (Integer) key;

        ArrayList<Produto> produtos = new ArrayList<Produto>();

        String sql = "select * from carrinho where cod_user = ?";

        PreparedStatement stm = dataSource.getConnection().prepareStatement(sql);
        stm.setInt(1, cod_user);

        ResultSet rs = stm.executeQuery();

        while (rs.next()) {
            Produto prod = new Produto();
            ProdutoDAO produtoDAO = new ProdutoDAO();
            prod = (Produto) produtoDAO.read(rs.getInt("cod_prod"));
            produtos.add(prod);
        }
        return produtos == null ? null : produtos;
    }

    public void update(Object object) throws SQLException {

        /*
         * UPDATE NAO IMPLEMENTADO POIS A TABELA POSSUI APENAS AS CHAVES DE RELACIOMENTO (cod_user, cod_produto)
         */
    }
}
