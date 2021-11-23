/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package JavaClasses;

import WEB.VPDbListener;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author Desenvolvedor
 */
public class CadastrarTarefas {
    public static ArrayList<String> getTasks() throws Exception {
        
        ArrayList<String> list = new ArrayList<>();
        Connection con = VPDbListener.getConnection();
        Statement stmt = con.createStatement();
        ResultSet rs = stmt.executeQuery("select * from VP_TASKS");
        while (rs.next()) {
            list.add(rs.getString("TITLE"));
        }

        rs.close();
        stmt.close();
        con.close();
        return list;
    }
    
    public static void addTask(String taskName, String nameUser) throws Exception {

        Connection con = VPDbListener.getConnection();
        Statement stmt = con.createStatement();
        stmt.execute("insert into VP_TASKS values('" + taskName + "','"+nameUser +"')");
        stmt.close();
        con.close();

    }

    public static void removeTask(String taskName, String nameUser) throws Exception {

        Connection con = VPDbListener.getConnection();
        Statement stmt = con.createStatement();
        stmt.execute("delete from VP_TASKS where TITLE = '" + taskName + "'");
        stmt.close();
        con.close();

    }
}
