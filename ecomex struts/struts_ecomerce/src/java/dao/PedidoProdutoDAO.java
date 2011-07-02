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
import modelo.PedidoProduto;

/**
 *
 * @author lab210
 */
public class PedidoProdutoDAO implements Dao {

     private DataSource dataSource;

    public PedidoProdutoDAO() throws SQLException{
        dataSource = new DataSource();
    }

    /* inserção no BD */
    @Override
    public void create(Object object) throws SQLException {

        PedidoProduto pedidoprod = (PedidoProduto) object;
        String sql = "insert into pedido_produto (cod_pedido,cod_prod,qtd) " +
                "values(?,?,?)";

        PreparedStatement stm = dataSource.getConnection().prepareStatement(sql);

        stm.setInt(1, pedidoprod.getPedido().getNum_pedido());
        stm.setInt(2, pedidoprod.getProduto().getCod_produto());
        stm.setInt(3, pedidoprod.getQtd());

        stm.executeUpdate();
        System.out.println("Insersao ok!");
    }

    /* consulta no BD */
    public Object read(Object key) throws SQLException {

        Integer cod_mensagem = (Integer)key;
        ResultSet rs;
        String sql = "select * from contato where cod_mensagem=?";
        PreparedStatement stm = dataSource.getConnection().prepareStatement(sql);
        stm.setLong(1, cod_mensagem);
        rs = stm.executeQuery();

        if(rs.next()){

            Contato contato = new Contato();
	    contato.setNome(rs.getString(1));
            contato.setIdade(rs.getInt(2));
            contato.setTel(rs.getString(3));
            contato.setMensagem(rs.getString(4));

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
            contatos.add(c);
            System.out.println("Consulta ok!");
        }
        return contatos;
    }

    /* atualizacao no BD */
    public void update(Object object) throws SQLException {

        /*
        Contato c = (Contato) object;
        String sql = "update contato set "
                + "nome=?,sobrenome=?,sexo=?,estado=?,email=? " +
                "where cpf=?";

        PreparedStatement stm = dataSource.getConnection().prepareStatement(sql);


        stm.setString(1, c.getNome());
        stm.setString(2, c.getSobrenome());
        stm.setString(3, c.getSexo());
        stm.setString(4, c.getEstado());
        stm.setString(5, c.getEmail());
        stm.setLong(6, c.getCpf());

        stm.executeUpdate();
         *
         */

    }

    /* exclusao no BD */
    public void delete(Object object) throws SQLException {

        Contato c = (Contato) object;
        String sql = "delete from contato where cod_mensagem=?";

        PreparedStatement stm = dataSource.getConnection().prepareStatement(sql);
        stm.setInt(1, c.getCod_contato());
        stm.executeUpdate();
    }


}
