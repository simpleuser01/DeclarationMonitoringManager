package com.company.DeclrMonManager.service;


import com.company.DeclrMonManager.model.User;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface UserService {

    List<User> getAllUsers();

    void addNewUser(User user);

    User getById(int id);

    void editUser(User user);

    void deleteUser(int id);
}
