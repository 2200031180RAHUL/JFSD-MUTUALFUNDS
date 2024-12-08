package com.example.springboot.model;

import java.sql.Blob;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "moredetail")
public class AddMoreDetails {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY) // This will auto-generate the primary key
    @Column(name = "id")
    private Long id;

    @Column(name="userid", nullable=false, length=10)
    private String userId;

    @Column(name = "email", nullable = false, length = 50)
    private String email;

    @Column(name = "address", nullable = false, length = 100)
    private String address;

    @Column(name = "phone_number", nullable = false, length = 15)
    private String phoneNumber;

    @Column(name = "phonepay_number", length = 15)
    private String phonePayNumber;

    @Column(name = "nominee_name", nullable = false, length = 50)
    private String nomineeName;

    @Column(name = "nominee_relationship", nullable = false, length = 20)
    private String nomineeRelationship;

    @Column(name = "nominee_phone_number", nullable = false, length = 15)
    private String nomineePhoneNumber;

    @Column(name = "nominee_address", nullable = false, length = 100)
    private String nomineeAddress;

    @Column(name = "bank_account_number", nullable = false, length = 20)
    private String bankAccountNumber;

    @Column(name = "ifsc_code", nullable = false, length = 11)
    private String ifscCode;

    @Column(name = "branch_name", nullable = false, length = 50)
    private String branchName;

    @Column(name = "user_adharimage", nullable = false)
    private Blob useradharImage;

    @Column(name = "nominee_adharimage", nullable = false)
    private Blob nomineeAdharImage;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String getPhonePayNumber() {
		return phonePayNumber;
	}

	public void setPhonePayNumber(String phonePayNumber) {
		this.phonePayNumber = phonePayNumber;
	}

	public String getNomineeName() {
		return nomineeName;
	}

	public void setNomineeName(String nomineeName) {
		this.nomineeName = nomineeName;
	}

	public String getNomineeRelationship() {
		return nomineeRelationship;
	}

	public void setNomineeRelationship(String nomineeRelationship) {
		this.nomineeRelationship = nomineeRelationship;
	}

	public String getNomineePhoneNumber() {
		return nomineePhoneNumber;
	}

	public void setNomineePhoneNumber(String nomineePhoneNumber) {
		this.nomineePhoneNumber = nomineePhoneNumber;
	}

	public String getNomineeAddress() {
		return nomineeAddress;
	}

	public void setNomineeAddress(String nomineeAddress) {
		this.nomineeAddress = nomineeAddress;
	}

	public String getBankAccountNumber() {
		return bankAccountNumber;
	}

	public void setBankAccountNumber(String bankAccountNumber) {
		this.bankAccountNumber = bankAccountNumber;
	}

	public String getIfscCode() {
		return ifscCode;
	}

	public void setIfscCode(String ifscCode) {
		this.ifscCode = ifscCode;
	}

	public String getBranchName() {
		return branchName;
	}

	public void setBranchName(String branchName) {
		this.branchName = branchName;
	}

	public Blob getNomineeAdharImage() {
		return nomineeAdharImage;
	}

	public void setNomineeAdharImage(Blob nomineeAdharImage) {
		this.nomineeAdharImage = nomineeAdharImage;
	}

	public Blob getUseradharImage() {
		return useradharImage;
	}

	public void setUseradharImage(Blob useradharImage) {
		this.useradharImage = useradharImage;
	}

}
