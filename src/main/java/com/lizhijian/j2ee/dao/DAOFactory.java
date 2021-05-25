package com.lizhijian.j2ee.dao;

import com.lizhijian.j2ee.dao.daoDemo.PersonDAO;
import com.lizhijian.j2ee.dao.daoDemo.PersonDAOImpl;

public class DAOFactory {
    public static PersonDAO getPersonDao() {
        return new PersonDAOImpl();
    }
}
