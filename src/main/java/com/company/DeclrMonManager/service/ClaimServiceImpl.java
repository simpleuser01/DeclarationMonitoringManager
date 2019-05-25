package com.company.DeclrMonManager.service;

import com.company.DeclrMonManager.DAO.DocumentsDao;
import com.company.DeclrMonManager.model.Claim;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class ClaimServiceImpl implements DocumentsService<Claim> {

    @Autowired
    DocumentsDao<Claim> documentsDao;

    @Override
    @Transactional
    public void addNewDocument(Claim doc) {
        documentsDao.addNewDocument(doc);
    }

    @Override
    @Transactional
    public Claim getById(int id) {
        return documentsDao.getById(id);
    }
}
