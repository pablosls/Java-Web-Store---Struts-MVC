/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package dao;

import java.sql.SQLException;

/**
 *
 * @author Regiane
 */
/* interface que implementa o padrão DAO (CRUD)
 *
 */
public interface Dao {

    /* inserao no BD */
    public void create(Object object) throws SQLException;

    /* consulta no BD */
    public Object read(Object key) throws SQLException;

    /* atualizaao no BD */
    public void update(Object object) throws SQLException;

    /* exclusao no BD */
    public void delete(Object object) throws SQLException;

}
