package com.klu.jfsd.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="host_table")
public class Host {
	@Id
	@Column(name="host_id")
	@GeneratedValue(strategy = GenerationType.IDENTITY) //auto increment the id
	private int hid;
	@Column(name="host_name",nullable = false,length = 100)
	private String hname;
	@Column(name="host_gender",length = 10)
	private String hgender;
	@Column(name="host_dateofbirth",length = 20)
	private String hdateofbirth;
	@Column(name="host_password",nullable = false,length = 100)
	private String hpassword;
	@Column(name="host_email",nullable = false,unique = true,length = 100)
	private String hemail;
	@Column(name="host_location",nullable = false,length = 100)
	private String hlocation;
	@Column(name="host_contact",nullable = false,unique = true,length = 20)
	private String hcontact;
	@Column(name="host_pan",nullable = false,unique = true,length = 20)
	private String hpan;
	@Column(name="host_bankacc",nullable = false,unique = true,length = 20)
	private String hbank;
	@Column(name="host_bankifsc",nullable = false,unique = true,length = 20)
	private String hifsc;
	public int getHid() {
		return hid;
	}
	public void setHid(int hid) {
		this.hid = hid;
	}
	public String getHname() {
		return hname;
	}
	public void setHname(String hname) {
		this.hname = hname;
	}
	public String getHgender() {
		return hgender;
	}
	public void setHgender(String hgender) {
		this.hgender = hgender;
	}
	public String getHdateofbirth() {
		return hdateofbirth;
	}
	public void setHdateofbirth(String hdateofbirth) {
		this.hdateofbirth = hdateofbirth;
	}
	public String getHpassword() {
		return hpassword;
	}
	public void setHpassword(String hpassword) {
		this.hpassword = hpassword;
	}
	public String getHemail() {
		return hemail;
	}
	public void setHemail(String hemail) {
		this.hemail = hemail;
	}
	public String getHlocation() {
		return hlocation;
	}
	public void setHlocation(String hlocation) {
		this.hlocation = hlocation;
	}
	public String getHcontact() {
		return hcontact;
	}
	public void setHcontact(String hcontact) {
		this.hcontact = hcontact;
	}
	public String getHpan() {
		return hpan;
	}
	public void setHpan(String hpan) {
		this.hpan = hpan;
	}
	public String getHbank() {
		return hbank;
	}
	public void setHbank(String hbank) {
		this.hbank = hbank;
	}
	public String getHifsc() {
		return hifsc;
	}
	public void setHifsc(String hifsc) {
		this.hifsc = hifsc;
	}
	
}
