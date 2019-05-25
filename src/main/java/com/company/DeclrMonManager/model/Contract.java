package com.company.DeclrMonManager.model;


import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import java.util.Date;


@Entity
@Table(name = "contract")
public class Contract {

    @Id
    @Column(name = "contract_id")
    private int contractId;

    @Column(name = "work_name")
    private String workName;

    @Column(name = "work_address")
    private String workAddress;

    @Column(name = "work_start_date")
    @Temporal(TemporalType.DATE)
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date workStartDate;

    @Column(name = "work_end_date")
    @Temporal(TemporalType.DATE)
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date workEndDate;

    @OneToOne(mappedBy = "contract")
    User user;

    public Contract() {
    }


    public int getContractId() {
        return contractId;
    }

    public void setContractId(int contractId) {
        this.contractId = contractId;
    }

    public String getWorkName() {
        return workName;
    }

    public void setWorkName(String workName) {
        this.workName = workName;
    }

    public String getWorkAddress() {
        return workAddress;
    }

    public void setWorkAddress(String workAddress) {
        this.workAddress = workAddress;
    }

    public Date getWorkStartDate() {
        return workStartDate;
    }

    public void setWorkStartDate(Date workStartDate) {
        this.workStartDate = workStartDate;
    }

    public Date getWorkEndDate() {
        return workEndDate;
    }

    public void setWorkEndDate(Date workEndDate) {
        this.workEndDate = workEndDate;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }
}
