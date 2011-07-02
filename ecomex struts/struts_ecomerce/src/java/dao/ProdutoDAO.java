package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javassist.compiler.ast.Stmnt;
import modelo.Categoria;
import modelo.Produto;

public class ProdutoDAO implements Dao {

    private DataSource dataSource;

    public ProdutoDAO() throws SQLException {
        dataSource = new DataSource();
    }

    public void create(Object object) throws SQLException {
        Produto produto = (Produto) object;
        Categoria categoria = produto.getCategoria();

        String sql = "insert into produto ( nome_prod, descricao, preco, cod_cat, url_img) values (?,?,?,?,?)";

        PreparedStatement stm = dataSource.getConnection().prepareStatement(sql);
        
        stm.setString(1, produto.getNome_prod());
        stm.setString(2, produto.getDescricao());
        stm.setDouble(3, produto.getPreco());
        stm.setDouble(4, categoria.getCod_cat());
        stm.setString(5, produto.getUrl_img());

        stm.executeUpdate();

        System.out.println(stm.toString());

    }

    public void delete(Object object) throws SQLException {
        int cod_prod = (Integer) object;
        String sql = "delete from produto where cod_produto = ?";
        PreparedStatement stm = dataSource.getConnection().prepareStatement(sql);
        stm.setInt(1, cod_prod);
        stm.executeUpdate();
        System.out.println("Produto excluido com sucesso");
    }

    public Object read(Object key) throws SQLException {

        Produto produto = new Produto();
        int cod_prod = (Integer) key;
        String sql = "select * from produto where cod_produto = ?";
        PreparedStatement stm = dataSource.getConnection().prepareStatement(sql);
        stm.setInt(1, cod_prod);
        ResultSet rs;
        rs = stm.executeQuery();

        if (rs.next()) {

            Categoria categoria = new Categoria();
            categoria.setCod_cat(rs.getInt("cod_cat"));

            produto.setCod_produto(rs.getInt("cod_produto"));
            produto.setNome_prod(rs.getString("nome_prod"));
            produto.setDescricao(rs.getString("descricao"));
            produto.setPreco(rs.getDouble("preco"));
            produto.setUrl_img(rs.getString("url_img"));

            produto.setCategoria(categoria);
            return produto;
        }

        return null;
    }

    public void update(Object object) throws SQLException {

        Produto produto = (Produto) object;
        //cod_produto, nome_prod, descricao, preco, cod_cat
        String sql = "update produto set nome_prod = ?, descricao = ?, preco = ?, cod_cat = ? "
                + " where cod_produto = ?";
        PreparedStatement stm = dataSource.getConnection().prepareStatement(sql);


        stm.setString(1, produto.getNome_prod());
        stm.setString(2, produto.getDescricao());
        stm.setDouble(3, produto.getPreco());
        stm.setInt(4, produto.getCategoria().getCod_cat());
        stm.setInt(5, produto.getCod_produto());

        stm.executeUpdate();

    }

    public ArrayList<Produto> readAll() {

        ArrayList<Produto> produtos = new ArrayList<Produto>();
        System.out.println("READ ALL");
        try {
            
            String sql = "select * from produto";
            PreparedStatement stm = dataSource.getConnection().prepareStatement(sql);
            ResultSet rs;
            rs = stm.executeQuery();
            while (rs.next()) {
                
                Produto produto = new Produto();
                Categoria categoria = new Categoria();
                categoria.setCod_cat(rs.getInt("cod_cat"));

                produto.setCod_produto(rs.getInt("cod_produto"));
                produto.setNome_prod(rs.getString("nome_prod"));
                produto.setDescricao(rs.getString("descricao"));
                produto.setPreco(rs.getDouble("preco"));
                produto.setUrl_img(rs.getString("url_img"));

                produto.setCategoria(categoria);

                produtos.add(produto);

            }

        } catch (Exception e) {
            e.printStackTrace();

        }



        System.out.println("retornou " + produtos.size() + " produtos");
        return produtos;




    }

        public ArrayList<Produto> readAllCategoria(Categoria categoria) {


        ArrayList<Produto> produtos = new ArrayList<Produto>();
        System.out.println("READ ALL Categoria");
        try {

            String sql = "select * from produto where cod_cat=?";
            PreparedStatement stm = dataSource.getConnection().prepareStatement(sql);

            stm.setInt(1, categoria.getCod_cat());

            ResultSet rs;
            rs = stm.executeQuery();
            while (rs.next()) {

                Produto produto = new Produto();
                Categoria temp_cat = new Categoria();
                temp_cat.setCod_cat(rs.getInt("cod_cat"));

                produto.setCod_produto(rs.getInt("cod_produto"));
                produto.setNome_prod(rs.getString("nome_prod"));
                produto.setDescricao(rs.getString("descricao"));
                produto.setPreco(rs.getDouble("preco"));
                produto.setUrl_img(rs.getString("url_img"));

                produto.setCategoria(temp_cat);

                produtos.add(produto);

            }

        } catch (Exception e) {
            e.printStackTrace();

        }



        System.out.println("retornou " + produtos.size() + " produtos");
        return produtos;




    }
}
