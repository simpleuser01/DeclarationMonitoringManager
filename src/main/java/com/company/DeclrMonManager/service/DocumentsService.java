package com.company.DeclrMonManager.service;

public interface DocumentsService<T> {

    void addNewDocument(T doc);

    T getById(int id);
}
