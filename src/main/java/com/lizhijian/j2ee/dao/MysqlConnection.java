package com.lizhijian.j2ee.dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class MysqlConnection {
    String DBDRIVER = "com.mysql.jdbc.Driver";
    String DBURL = "jdbc:mysql://localhost/j2ee";
    private final String DBUSER = "root";
    private final String DBPASSWORD = "12345678";
    private Connection conn = null;

    public MysqlConnection() {
        try {
            Class.forName(DBDRIVER);
            this.conn = DriverManager.getConnection(DBURL, DBUSER, DBPASSWORD);
        } catch (Exception e) {
        }
    }

    public Connection getConnection() {
        return this.conn;
    }

    public void close() {
        try {
            this.conn.close();
        } catch (Exception e) {
        }
    }
}
