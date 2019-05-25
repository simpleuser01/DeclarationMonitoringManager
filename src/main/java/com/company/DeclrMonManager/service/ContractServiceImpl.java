package com.company.DeclrMonManager.service;

import com.company.DeclrMonManager.DAO.DocumentsDao;
import com.company.DeclrMonManager.model.Contract;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

@Service
public class ContractServiceImpl implements DocumentsService<Contract> {

    @Autowired
    DocumentsDao<Contract> documentsDao;

    @Override
    public void addNewDocument(Contract doc) {
        documentsDao.addNewDocument(doc);
    }

    @Override
    public Contract getById(int id) {
        return documentsDao.getById(id);
    }
}
