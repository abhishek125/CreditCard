package com.abhi.app.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
@Entity
@Table(name="user")
public class User {
@Id
private int id;
private String name;
private int limitbal,age;
private Sex sex;
@Column(name="marriage")
private MaritalStatus maritalStatus;
@Column(name="education")
private Education education;

public static enum MaritalStatus{
	UNUSED,
	SINGLE,
	MARRIED,
	OTHER;
}
public static enum Sex{
	UNUSED,
	MALE,
	FEMALE,
	OTHER;
}
public static enum Education{
	UNUSED,
	Graduate,
	university,
	high_school,
	others,
	unknown,
	unknown2;
}
@Min(-2)
@Max(9)
private int pay_status1;
@Min(-2)
@Max(9)
private int pay_status2;
@Min(-2)
@Max(9)
private int pay_status3;
@Min(-2)
@Max(9)
private int pay_status4;
@Min(-2)
@Max(9)
private int pay_status5;
@Min(-2)
@Max(9)
private int pay_status6;
@Min(-2)
@Max(9)
private int billamt1;
@Min(-2)
@Max(9)
private int billamt2;
@Min(-2)
@Max(9)
private int billamt3;
@Min(-2)
@Max(9)
private int billamt4;
@Min(-2)
@Max(9)
private int billamt5;
@Min(-2)
@Max(9)
private int billamt6;
@Min(-2)
@Max(9)
private int payamt1;
@Min(-2)
@Max(9)
private int payamt2;
@Min(-2)
@Max(9)
private int payamt3;
@Min(-2)
@Max(9)
private int payamt4;
@Min(-2)
@Max(9)
private int payamt5;
@Min(-2)
@Max(9)
private int payamt6;
@Min(0)
@Max(1)
private int default_payment_next_month;

public User(int id,String name,int limitbal,Sex sex,Education education,MaritalStatus maritalStatus,int age) {
this.id=id;
this.name=name;
this.limitbal=limitbal;
this.sex=sex;
this.education=education;
this.maritalStatus=maritalStatus;
this.age=age;
}
public User() {
	
}
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public int getLimitbal() {
	return limitbal;
}
public void setLimitbal(int limitbal) {
	this.limitbal = limitbal;
}
public int getAge() {
	return age;
}
public void setAge(int age) {
	this.age = age;
}

public Sex getSex() {
	return sex;
}
public void setSex(Sex sex) {
	this.sex = sex;
}
public MaritalStatus getMaritalStatus() {
	return maritalStatus;
}
public void setMaritalStatus(MaritalStatus maritalStatus) {
	this.maritalStatus = maritalStatus;
}
public Education getEducation() {
	return education;
}
public void setEducation(Education education) {
	this.education = education;
}
public int getPay_status1() {
	return pay_status1;
}
public void setPay_status1(int pay_status1) {
	this.pay_status1 = pay_status1;
}
public int getPay_status2() {
	return pay_status2;
}
public void setPay_status2(int pay_status2) {
	this.pay_status2 = pay_status2;
}
public int getPay_status3() {
	return pay_status3;
}
public void setPay_status3(int pay_status3) {
	this.pay_status3 = pay_status3;
}
public int getPay_status4() {
	return pay_status4;
}
public void setPay_status4(int pay_status4) {
	this.pay_status4 = pay_status4;
}
public int getPay_status5() {
	return pay_status5;
}
public void setPay_status5(int pay_status5) {
	this.pay_status5 = pay_status5;
}
public int getPay_status6() {
	return pay_status6;
}
public void setPay_status6(int pay_status6) {
	this.pay_status6 = pay_status6;
}
public int getBillamt1() {
	return billamt1;
}
public void setBillamt1(int billamt1) {
	this.billamt1 = billamt1;
}
public int getBillamt2() {
	return billamt2;
}
public void setBillamt2(int billamt2) {
	this.billamt2 = billamt2;
}
public int getBillamt3() {
	return billamt3;
}
public void setBillamt3(int billamt3) {
	this.billamt3 = billamt3;
}
public int getBillamt4() {
	return billamt4;
}
public void setBillamt4(int billamt4) {
	this.billamt4 = billamt4;
}
public int getBillamt5() {
	return billamt5;
}
public void setBillamt5(int billamt5) {
	this.billamt5 = billamt5;
}
public int getBillamt6() {
	return billamt6;
}
public void setBillamt6(int billamt6) {
	this.billamt6 = billamt6;
}

public int getPayamt1() {
	return payamt1;
}
public void setPayamt1(int payamt1) {
	this.payamt1 = payamt1;
}
public int getPayamt2() {
	return payamt2;
}
public void setPayamt2(int payamt2) {
	this.payamt2 = payamt2;
}
public int getPayamt3() {
	return payamt3;
}
public void setPayamt3(int payamt3) {
	this.payamt3 = payamt3;
}
public int getPayamt4() {
	return payamt4;
}
public void setPayamt4(int payamt4) {
	this.payamt4 = payamt4;
}
public int getPayamt5() {
	return payamt5;
}
public void setPayamt5(int payamt5) {
	this.payamt5 = payamt5;
}
public int getPayamt6() {
	return payamt6;
}
public void setPayamt6(int payamt6) {
	this.payamt6 = payamt6;
}
public int getDefault_payment_next_month() {
	return default_payment_next_month;
}
public void setDefault_payment_next_month(int default_payment_next_month) {
	this.default_payment_next_month = default_payment_next_month;
}

}
