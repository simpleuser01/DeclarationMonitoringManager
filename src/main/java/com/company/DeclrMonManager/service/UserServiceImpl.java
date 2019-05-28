package com.company.DeclrMonManager.service;


import com.company.DeclrMonManager.DAO.UserDao;
import com.company.DeclrMonManager.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class UserServiceImpl implements UserService{

    @Autowired
    UserDao userDao;

    @Override
    @Transactional
    public List<User> getAllUsers() {
        return userDao.getAllUsers();
    }

    @Override
    @Transactional
    public User getById(int id) {
        return userDao.getById(id);
    }

    @Override
    @Transactional/*(propagation=Propagation.REQUIRED, readOnly=false)*/
    public void editUser(User user) {
        userDao.editUser(user);
    }

    @Override
    @Transactional
    public void addNewUser(User user) {
        userDao.addNewUser(user);
    }

    @Override
    @Transactional
    public void deleteUser(int id) {
        userDao.deleteUser(id);
    }
}
