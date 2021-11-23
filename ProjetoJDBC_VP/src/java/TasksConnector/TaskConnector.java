/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package TasksConnector;

import java.sql.*;
import java.util.ArrayList;
import web.DbListener;

/**
 *
 * @author Desenvolvedor
 */
public class TaskConnector {

    public static ArrayList<String> getTasks() throws Exception {
        ArrayList<String> list = new ArrayList<>();
        
        Connection con = DbListener.getConnection();
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
    
    public static ArrayList<String> getUsers() throws Exception {
        
        ArrayList<String> listNomes = new ArrayList<>();
        Connection con = DbListener.getConnection();
        Statement stmt = con.createStatement();
        ResultSet rs = stmt.executeQuery("select * from VP_TASKS");
        while (rs.next()) {
            listNomes.add(rs.getString("NM_USER"));          
        }
            
            
        rs.close();
        stmt.close();
        con.close();
        return listNomes;
    }

    public static void addTask(String taskName, String nomeUser) throws Exception {

        Connection con = DbListener.getConnection();
        Statement stmt = con.createStatement();
        stmt.execute("insert into VP_TASKS values(null, '" + taskName + "', '"+nomeUser+"')");
        stmt.close();
        con.close();

    }

    public static void removeTask(String taskName) throws Exception {

        Connection con = DbListener.getConnection();
        Statement stmt = con.createStatement();
        stmt.execute("delete from VP_TASKS where TITLE = '" + taskName + "'");
        stmt.close();
        con.close();

    }
}
