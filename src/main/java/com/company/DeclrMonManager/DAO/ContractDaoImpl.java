package com.company.DeclrMonManager.DAO;

import com.company.DeclrMonManager.model.Contract;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository
public class ContractDaoImpl implements DocumentsDao<Contract> {

    @Autowired
    SessionFactory sessionFactory;

    @Override
    public void addNewDocument(Contract doc) {
        Session session = sessionFactory.getCurrentSession();
        session.persist(doc);
    }

    @Override
    public Contract getById(int id) {
        Session session = sessionFactory.getCurrentSession();
        Contract contract = session.load(Contract.class, new Integer(id));

        return contract;
    }
}
