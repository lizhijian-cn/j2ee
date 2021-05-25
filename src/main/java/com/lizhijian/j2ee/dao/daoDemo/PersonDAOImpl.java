package com.lizhijian.j2ee.dao.daoDemo;

import com.lizhijian.j2ee.bean.daoDemo.Person;
import com.lizhijian.j2ee.dao.MysqlConnection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class PersonDAOImpl implements PersonDAO {
    @Override
    public boolean login(Person person) {
        boolean flag = false;
        String sql = "SELECT id FROM person WHERE username=? and password=?";
        PreparedStatement stat = null;
        MysqlConnection dbc = null;
        dbc = new MysqlConnection();
        try {
            stat = dbc.getConnection().prepareStatement(sql);
            stat.setString(1, person.getUsername());
            stat.setString(2, person.getPassword());
            ResultSet rs = stat.executeQuery();
            if (rs.next()) {
                flag = true;
            }
            rs.close();
            stat.close();
        } catch (Exception e) {
            System.err.println(e);
        } finally {
            dbc.close();
        }

        return flag;
    }
}
