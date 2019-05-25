package com.company.DeclrMonManager.DAO;

import java.util.List;

public interface DocumentsDao<T> {

    void addNewDocument(T doc);

    T getById(int id);
}
