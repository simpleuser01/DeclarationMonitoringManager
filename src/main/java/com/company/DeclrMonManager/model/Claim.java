package com.company.DeclrMonManager.model;

import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "claim")
public class Claim {

    @Id
    @Column(name = "claim_id")
    private int claimId;

    @Column(name = "first_name")
    private String firstName;

    @Column(name = "last_name")
    private String lastName;

    @Column(name = "patronymic")
    private String patronymic;

    @Temporal(TemporalType.DATE)
    @Column(name = "sign_start_date")
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date signStartDate;

    @Temporal(TemporalType.DATE)
    @Column(name = "sign_end_date")
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date signEndDate;

    @Column(name = "sign_ident_number")
    private int signIdentNumber;

    @OneToOne(mappedBy = "claim")
    User user;

    public Claim() {
    }

    public int getClaimId() {
        return claimId;
    }

    public void setClaimId(int claimId) {
        this.claimId = claimId;
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

    public Date getSignStartDate() {
        return signStartDate;
    }

    public void setSignStartDate(Date signStartDate) {
        this.signStartDate = signStartDate;
    }

    public Date getSignEndDate() {
        return signEndDate;
    }

    public void setSignEndDate(Date signEndDate) {
        this.signEndDate = signEndDate;
    }

    public int getSignIdentNumber() {
        return signIdentNumber;
    }

    public void setSignIdentNumber(int signIdentNumber) {
        this.signIdentNumber = signIdentNumber;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }
}
