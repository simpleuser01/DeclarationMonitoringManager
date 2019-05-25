package com.company.DeclrMonManager.model;


import org.hibernate.annotations.Proxy;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import javax.sql.DataSource;
import java.util.Date;

@Entity
@Table(name = "user")
@Proxy(lazy=false)
public class User {

    @Id
    @Column(name = "user_id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int userId;

    @Column(name = "first_name")
    private String firstName;

    @Column(name = "last_name")
    private String lastName;

    @Column(name = "patronymic")
    private String patronymic;

    @Column(name = "series")
    private String series;

    @Column(name = "series_number")
    private int seriesNumber;

    @Column(name = "ident_number")
    private String identNumber;

    @Temporal(TemporalType.DATE)
    @Column(name = "birth_date")
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date birthDate;

    @Column(name = "state_agency")
    private String stateAgency;

    @Temporal(TemporalType.DATE)
    @Column(name = "date_state_agency")
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date dateStateAgency;

    @OneToOne
    @PrimaryKeyJoinColumn(name = "claim_id")
    Claim claim;

    @OneToOne
    @PrimaryKeyJoinColumn(name = "contract_id")
    Contract contract;

    @OneToOne
    @PrimaryKeyJoinColumn(name = "proxy_id")
    com.company.DeclrMonManager.model.Proxy proxy;

    public User() {
    }

    public Contract getContract() {
        return contract;
    }

    public void setContract(Contract contract) {
        this.contract = contract;
    }

    public com.company.DeclrMonManager.model.Proxy getProxy() {
        return proxy;
    }

    public void setProxy(com.company.DeclrMonManager.model.Proxy proxy) {
        this.proxy = proxy;
    }



    public Claim getClaim() {
        return claim;
    }

    public void setClaim(Claim claim) {
        this.claim = claim;
    }



    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getPatronymic() {
        return patronymic;
    }

    public void setPatronymic(String patronymic) {
        this.patronymic = patronymic;
    }

    public String getSeries() {
        return series;
    }

    public void setSeries(String series) {
        this.series = series;
    }

    public int getSeriesNumber() {
        return seriesNumber;
    }

    public void setSeriesNumber(int seriesNumber) {
        this.seriesNumber = seriesNumber;
    }

    public String getIdentNumber() {
        return identNumber;
    }

    public void setIdentNumber(String identNumber) {
        this.identNumber = identNumber;
    }

    public Date getBirthDate() {
        return birthDate;
    }

    public void setBirthDate(Date birthDate) {
        this.birthDate = birthDate;
    }

    public String getStateAgency() {
        return stateAgency;
    }

    public void setStateAgency(String stateAgency) {
        this.stateAgency = stateAgency;
    }

    public Date getDateStateAgency() {
        return dateStateAgency;
    }

    public void setDateStateAgency(Date dateStateAgency) {
        this.dateStateAgency = dateStateAgency;
    }
}
