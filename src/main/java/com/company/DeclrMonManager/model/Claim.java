package com.company.DeclrMonManager.model;

import org.hibernate.annotations.Cascade;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "claim")
public class Claim {

    @Id
    @Column(name = "claim_id")
    private int claimId;

    @Column(name = "claim_first_name")
    private String claimFirstName;

    @Column(name = "claim_last_name")
    private String claimLastName;

    @Column(name = "claim_patronymic")
    private String claimPatronymic;

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

    public String getClaimFirstName() {
        return claimFirstName;
    }

    public void setClaimFirstName(String claimFirstName) {
        this.claimFirstName = claimFirstName;
    }

    public String getClaimLastName() {
        return claimLastName;
    }

    public void setClaimLastName(String claimLastName) {
        this.claimLastName = claimLastName;
    }

    public String getClaimPatronymic() {
        return claimPatronymic;
    }

    public void setClaimPatronymic(String claimPatronymic) {
        this.claimPatronymic = claimPatronymic;
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
