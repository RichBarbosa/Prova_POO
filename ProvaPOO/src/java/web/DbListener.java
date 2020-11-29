/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package web;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import java.sql.*;

/**
 * Web application lifecycle listener.
 *
 * @author richard
 */
public class DbListener implements ServletContextListener {
    public static final String CLASS_NAME="org.sqlite.JDBC";
    public static final String URL="jdbc:sqlite:minhas_disciplinas.db ";
    
    public static String Message;
    public static String exceptionMessage;
    
    public static Connection getConnection() throws Exception{
     return DriverManager.getConnection(URL);
    } 

    @Override
    public void contextInitialized(ServletContextEvent sce) {
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
    }
}
