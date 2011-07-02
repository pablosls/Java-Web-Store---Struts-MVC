/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import modelo.Login;

/**
 *
 * @author lab210
 */


public class LoginDAO implements Dao {
    
    private DataSource dataSource;
    
  public LoginDAO() throws SQLException{
            
            dataSource = new DataSource();
            }

     /* inser�ao no BD */
    public void create(Object object) throws SQLException{}

    /* consulta no BD */
    public Object read(Object key) throws SQLException{
        return null;
    }

    public Login readLogin(Login login) throws SQLException{

        ResultSet rs;
        String sql ="Select * from login where login=? and password =?";

       PreparedStatement stm = dataSource.getConnection().prepareStatement(sql);

        stm.setString(1, login.getLogin());
        stm.setString(2, login.getPassword());

        rs = stm.executeQuery();

        if(rs.next()){

            Login lg = new Login();
            lg.setLogin(rs.getString(1));
            lg.setLogin(rs.getString(2));
            return lg;
        }

        return null;
    }


    /* atualiza�ao no BD */
    public void update(Object object) throws SQLException{}

    /* exclusao no BD */
    public void delete(Object object) throws SQLException{}

}
