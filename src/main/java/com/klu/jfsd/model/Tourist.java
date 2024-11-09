package com.klu.jfsd.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="tourist_table")
public class Tourist {
	@Id
	@Column(name="tourist_id")
	@GeneratedValue(strategy = GenerationType.IDENTITY) //auto increment the id
	private int tid;
	@Column(name="tourist_name",nullable = false,length = 100)
	private String tname;
	@Column(name="tourist_gender",length = 10)
	private String tgender;
	@Column(name="tourist_dateofbirth",length = 20)
	private String tdateofbirth;
	@Column(name="tourist_password",nullable = false,length = 100)
	private String tpassword;
	@Column(name="tourist_email",nullable = false,unique = true,length = 100)
	private String temail;
	@Column(name="tourist_location",nullable = false,length = 100)
	private String tlocation;
	@Column(name="tourist_contact",nullable = false,unique = true,length = 20)
	private String tcontact;
	public int getTid() {
		return tid;
	}
	public void setTid(int tid) {
		this.tid = tid;
	}
	public String getTname() {
		return tname;
	}
	public void setTname(String tname) {
		this.tname = tname;
	}
	public String getTgender() {
		return tgender;
	}
	public void setTgender(String tgender) {
		this.tgender = tgender;
	}
	public String getTdateofbirth() {
		return tdateofbirth;
	}
	public void setTdateofbirth(String tdateofbirth) {
		this.tdateofbirth = tdateofbirth;
	}
	public String getTpassword() {
		return tpassword;
	}
	public void setTpassword(String tpassword) {
		this.tpassword = tpassword;
	}
	public String getTemail() {
		return temail;
	}
	public void setTemail(String temail) {
		this.temail = temail;
	}
	public String getTlocation() {
		return tlocation;
	}
	public void setTlocation(String tlocation) {
		this.tlocation = tlocation;
	}
	public String getTcontact() {
		return tcontact;
	}
	public void setTcontact(String tcontact) {
		this.tcontact = tcontact;
	}
	
}
