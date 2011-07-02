/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import modelo.Contato;

/**
 *
 * @author Regiane
 */
public class ContatoDAO implements Dao {

    private DataSource dataSource;

    public ContatoDAO() throws SQLException{
        dataSource = new DataSource();
    }

    /* inserção no BD */
    @Override
    public void create(Object object) throws SQLException {

        Contato contato = (Contato) object;
        String sql = "insert into contato (nome, idade, tel, mensagem, cod_contato) " +
                "values(?,?,?,?,?)";
        
        PreparedStatement stm = dataSource.getConnection().prepareStatement(sql);
        
        stm.setString(1, contato.getNome());
        stm.setInt(2, contato.getIdade());
        stm.setString(3, contato.getTel());
        stm.setString(4, contato.getMensagem());
        stm.setInt(5, contato.getCod_contato());
        
        stm.executeUpdate();

        System.out.println("Mensagem enviada com sucesso");
    }

    /* consulta no BD */
    public Object read(Object key) throws SQLException {
        
        Integer cod_contato = (Integer)key;
        ResultSet rs;
        String sql = "select * from contato where cod_contato=?";
        PreparedStatement stm = dataSource.getConnection().prepareStatement(sql);
        stm.setLong(1, cod_contato);
        rs = stm.executeQuery();

        if(rs.next()){

            Contato contato = new Contato();

	    contato.setNome(rs.getString(1));
            contato.setIdade(rs.getInt(2));
            contato.setTel(rs.getString(3));
            contato.setMensagem(rs.getString(4));
            contato.setCod_contato(rs.getInt(5));

	    return contato;
        }
	return null;
    }

    /* consulta no BD */
    public ArrayList <Contato> readAll() throws SQLException {
        ResultSet rs;
        ArrayList <Contato> contatos = new ArrayList <Contato>();
        String sql = "select * from contato";
        PreparedStatement stm = dataSource.getConnection().prepareStatement(sql);
        rs = stm.executeQuery();
        while(rs.next()){
            Contato c = new Contato();
            c.setNome(rs.getString(1));
            c.setIdade(rs.getInt(2));
            c.setTel(rs.getString(3));
            c.setMensagem(rs.getString(4));
            c.setCod_contato(rs.getInt(5));
            contatos.add(c);
            System.out.println("Consulta ok!");
        }
        return contatos;
    }

    /* atualizacao no BD */
    public void update(Object object) throws SQLException {

        Contato c = (Contato) object;
        String sql = "update contato set "
                + "nome=?,idade=?,tel=?,mensagem=? " +
                "where cod_contato=?";

        PreparedStatement stm = dataSource.getConnection().prepareStatement(sql);

        
        stm.setString(1, c.getNome());
        stm.setInt(2, c.getIdade());
        stm.setString(3, c.getTel());
        stm.setString(4, c.getMensagem());
        stm.setInt(5, c.getCod_contato());
        
        stm.executeUpdate();

        System.out.println("Update realizado!");

    }

    /* exclusao no BD */
    public void delete(Object object) throws SQLException {

        Contato c = (Contato) object;
        String sql = "delete from contato where cod_contato=?";

        PreparedStatement stm = dataSource.getConnection().prepareStatement(sql);
        stm.setInt(1, c.getCod_contato());
        stm.executeUpdate();

        System.out.println("Mensagem excluida com sucesso");
    }


}