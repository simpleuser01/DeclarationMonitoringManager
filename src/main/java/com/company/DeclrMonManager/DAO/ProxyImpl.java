package com.company.DeclrMonManager.DAO;


import com.company.DeclrMonManager.model.Proxy;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ProxyImpl implements DocumentsDao<Proxy> {

    @Autowired
    SessionFactory sessionFactory;

    @Override
    public void addNewDocument(Proxy doc) {
        Session session = sessionFactory.getCurrentSession();
        session.persist(doc);
    }

    @Override
    public Proxy getById(int id) {
        Session session = sessionFactory.getCurrentSession();
        Proxy proxy = session.load(Proxy.class, new Integer(id));
        return proxy;
    }

    @Override
    public void editDocument(Proxy doc) {
        Session session = sessionFactory.getCurrentSession();
        session.update(doc);
    }
}
