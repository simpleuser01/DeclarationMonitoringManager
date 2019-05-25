package com.company.DeclrMonManager.DAO;

import com.company.DeclrMonManager.model.User;

import java.util.List;

public interface UserDao {

    List<User> getAllUsers();

    void addNewUser(User user);

    User getById(int id);
}
