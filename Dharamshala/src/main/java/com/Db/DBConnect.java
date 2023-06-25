package com.Db;

import java.sql.*;

public class DBConnect
{
    private static Connection conn;
    public static Connection getConn()
    {
        try
        {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/dharamshala", "pratik", "Pratik@2002");
            //System.out.println("Connection Successfull");
        }
        catch(Exception e)
        {
            System.out.println("Connection failed");
            e.printStackTrace();
        }
        return conn;
    }
}
