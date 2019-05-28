package com.company.DeclrMonManager.model;

import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "proxy")
public class Proxy {

    @Id
    @Column(name = "proxy_id")
    private int proxyId;

    @Column(name = "proxy_first_name")
    private String proxyFirstName;

    @Column(name = "proxy_last_name")
    private String proxyLastName;

    @Column(name = "proxy_patronymic")
    private String proxyPatronymic;


    @Column(name = "start_date")
    @Temporal(TemporalType.DATE)
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date startDate;

    @Column(name = "end_date")
    @Temporal(TemporalType.DATE)
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date endDate;

    @OneToOne(mappedBy = "proxy")
    User user;

    public Proxy() {
    }

    public int getProxyId() {
        return proxyId;
    }

    public void setProxyId(int proxyId) {
        this.proxyId = proxyId;
    }

    public String getProxyFirstName() {
        return proxyFirstName;
    }

    public void setProxyFirstName(String proxyFirstName) {
        this.proxyFirstName = proxyFirstName;
    }

    public String getProxyLastName() {
        return proxyLastName;
    }

    public void setProxyLastName(String proxyLastName) {
        this.proxyLastName = proxyLastName;
    }

    public String getProxyPatronymic() {
        return proxyPatronymic;
    }

    public void setProxyPatronymic(String proxyPatronymic) {
        this.proxyPatronymic = proxyPatronymic;
    }

    public Date getStartDate() {
        return startDate;
    }

    public void setStartDate(Date startDate) {
        this.startDate = startDate;
    }

    public Date getEndDate() {
        return endDate;
    }

    public void setEndDate(Date endDate) {
        this.endDate = endDate;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }
}
