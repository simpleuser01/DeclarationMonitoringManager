package com.company.DeclrMonManager.model;

import javax.persistence.*;

@Entity
@Table(name = "state_certificate")
public class StateCertificate {

    @Id
    @Column(name = "certificate_id")
    private int certificateId;

    @Column(name = "unic_state_number")
    private String unicStateNumber;

    @Column(name = "organization_address")
    private String organizationAddress;

    @Column(name = "organization_name")
    private String organizationName;


    @OneToOne(mappedBy = "stateCertificate")
    User user;

    public StateCertificate() {
    }

    public int getCertificateId() {
        return certificateId;
    }

    public void setCertificateId(int certificateId) {
        this.certificateId = certificateId;
    }

    public String getUnicStateNumber() {
        return unicStateNumber;
    }

    public void setUnicStateNumber(String unicStateNumber) {
        this.unicStateNumber = unicStateNumber;
    }

    public String getOrganizationAddress() {
        return organizationAddress;
    }

    public void setOrganizationAddress(String organizationAddress) {
        this.organizationAddress = organizationAddress;
    }

    public String getOrganizationName() {
        return organizationName;
    }

    public void setOrganizationName(String organizationName) {
        this.organizationName = organizationName;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }
}
