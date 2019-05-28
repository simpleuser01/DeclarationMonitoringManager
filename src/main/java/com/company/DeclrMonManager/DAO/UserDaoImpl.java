package com.company.DeclrMonManager.DAO;

import com.company.DeclrMonManager.model.User;
import org.hibernate.LockMode;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import javax.persistence.LockModeType;
import java.util.List;

@Repository
public class UserDaoImpl implements UserDao {

    @Autowired
    SessionFactory sessionFactory;

    @Override
    @SuppressWarnings("unchecked")
    public List<User> getAllUsers() {
        Session session = sessionFactory.getCurrentSession();
        List<User> users = session.createQuery("from User").list();
        return users;
    }

    @Override
    public User getById(int id) {
        Session session = sessionFactory.getCurrentSession();
        User user = session.load(User.class, new  Integer(id));

        return user;
    }

    @Override
    public void editUser(User user) {
        Session session = sessionFactory.getCurrentSession();
        session.update(user);
    }

    @Override
    public void deleteUser(int id) {
        Session session = sessionFactory.getCurrentSession();
        User user = session.load(User.class, new Integer(id));
        session.delete(user);
    }

    @Override
    public void addNewUser(User user) {
        Session session = sessionFactory.getCurrentSession();
        session.persist(user);
    }
}
