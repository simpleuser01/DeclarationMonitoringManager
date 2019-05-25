package com.company.DeclrMonManager.DAO;

import com.company.DeclrMonManager.model.Claim;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ClaimDaoImpl implements DocumentsDao<Claim> {

    @Autowired
    SessionFactory sessionFactory;


    @Override
    public void addNewDocument(Claim doc) {
        Session session = sessionFactory.getCurrentSession();
        session.persist(doc);
    }

    @Override
    public Claim getById(int id) {
        Session session = sessionFactory.getCurrentSession();
        Claim claim = session.load(Claim.class, new Integer(id));

        return claim;
    }
}
