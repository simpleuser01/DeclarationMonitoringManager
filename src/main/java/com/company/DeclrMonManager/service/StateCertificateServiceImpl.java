package com.company.DeclrMonManager.service;

import com.company.DeclrMonManager.DAO.DocumentsDao;
import com.company.DeclrMonManager.model.StateCertificate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


@Service
public class StateCertificateServiceImpl implements DocumentsService<StateCertificate> {

    @Autowired
    DocumentsDao<StateCertificate> documentsDao;

    @Override
    @Transactional
    public void addNewDocument(StateCertificate doc) {
        documentsDao.addNewDocument(doc);
    }

    @Override
    @Transactional
    public StateCertificate getById(int id) {
        return documentsDao.getById(id);
    }
}
