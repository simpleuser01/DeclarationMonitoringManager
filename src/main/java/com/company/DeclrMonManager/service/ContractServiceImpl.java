package com.company.DeclrMonManager.service;

import com.company.DeclrMonManager.DAO.DocumentsDao;
import com.company.DeclrMonManager.model.Contract;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class ContractServiceImpl implements DocumentsService<Contract> {

    @Autowired
    DocumentsDao<Contract> documentsDao;

    @Override
    @Transactional
    public void addNewDocument(Contract doc) {
        documentsDao.addNewDocument(doc);
    }

    @Override
    @Transactional
    public Contract getById(int id) {
        return documentsDao.getById(id);
    }

    @Override
    @Transactional
    public void editDocument(Contract doc) {
        documentsDao.editDocument(doc);
    }
}
