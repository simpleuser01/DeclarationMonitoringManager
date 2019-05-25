package com.company.DeclrMonManager.DAO;
import com.company.DeclrMonManager.model.StateCertificate;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class StateCertificateImpl implements DocumentsDao<StateCertificate> {

    @Autowired
    SessionFactory sessionFactory;

    @Override
    public void addNewDocument(StateCertificate doc) {
        Session session = sessionFactory.getCurrentSession();
        session.persist(doc);
    }

    @Override
    public StateCertificate getById(int id) {
        Session session = sessionFactory.getCurrentSession();
        StateCertificate stateCertificate = session.load(StateCertificate.class, new Integer(id));

        return stateCertificate;
    }

    @Override
    public void editDocument(StateCertificate doc) {
        Session session = sessionFactory.getCurrentSession();
        session.update(doc);
    }
}
