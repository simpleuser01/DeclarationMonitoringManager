package com.company.DeclrMonManager.service;

import com.company.DeclrMonManager.DAO.DocumentsDao;
import com.company.DeclrMonManager.model.Proxy;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


@Service
public class ProxyServiceImpl implements DocumentsService<Proxy> {

    @Autowired
    DocumentsDao<Proxy> documentsDao;

    @Override
    @Transactional
    public void addNewDocument(Proxy doc) {
        documentsDao.addNewDocument(doc);
    }

    @Override
    @Transactional
    public Proxy getById(int id) {
        return documentsDao.getById(id);
    }
}
