package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import modelo.Categoria;

public class CategoriaDAO implements Dao {

    private DataSource dataSource;

    public CategoriaDAO() throws SQLException{
        dataSource = new DataSource();
    }

    public void create(Object object) throws SQLException {

        Categoria categoria = (Categoria) object;
        String sql = "insert into categoria (cod_cat, nome_cat) values (?,?)";
        PreparedStatement stm = dataSource.getConnection().prepareStatement(sql);

        stm.setInt(1, categoria.getCod_cat());
        stm.setString(2, categoria.getNome_cat());

        stm.executeUpdate();

        System.out.println("Categoria Cadastrada");
    }

    public void delete(Object object) throws SQLException {
        Categoria categoria = (Categoria) object;

        String sql = "delete from categoria where cod_cat = ?";
        PreparedStatement stm = dataSource.getConnection().prepareStatement(sql);
        stm.setInt(1, categoria.getCod_cat());

        stm.executeUpdate();

        System.out.println("Categoria excluida com sucesso");

    }

    public Object read(Object key) throws SQLException {
        
        int cod_cat = (Integer) key;
        String sql = "select * from categoria where cod_cat = ?";
        PreparedStatement stm = dataSource.getConnection().prepareStatement(sql);
        stm.setInt(1, cod_cat);

        ResultSet rs = stm.executeQuery();
        if(rs.next()){
            Categoria categoria = new Categoria();
            categoria.setCod_cat(rs.getInt(1));
            categoria.setNome_cat(rs.getString(2));
            return categoria;
        }
        return null;
    }

    public void update(Object object) throws SQLException {
        Categoria categoria = (Categoria) object;
        String sql = "update categoria set nome_cat = ? where cod_cat = ?";
        PreparedStatement stm = dataSource.getConnection().prepareStatement(sql);

        stm.setString(1, categoria.getNome_cat());
        stm.setInt(2, categoria.getCod_cat());
        stm.executeUpdate();

        System.out.println("Update realizado!");
    }
}
