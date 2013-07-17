package banco;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author unipampa
 */
public class JDBC {

    Connection con = null;

    private boolean connect() {
        try {
            Class.forName("org.gjt.mm.mysql.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "");
            return con != null ? true : false;
        } catch (Exception ex) {
            return false;
        }
    }

    private void disconnect() {
        if (con != null) {
            try {
                con.close();
            } catch (Exception e) {
            }
            con = null;
        }
    }

    public boolean testarConexao() {
        if (connect()) {
            try {
                Statement com = con.createStatement();
                disconnect();
                return true;
            } catch (Exception ex) {
                disconnect();
                return false;
            }
        } else {
            con = null;
            return false;
        }
    }
}
