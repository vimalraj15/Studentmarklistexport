package com.example.demo.model;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name = "student")
public class Ticket 
{
 
     @Id
	 @Column(name = "registration")
     private String  registration;
      
     
      @Column(name = "name")
	   private String name;
	
      
       
       @Column(name = "english")
	   private String english;
	 
       @Column(name = "tamil")
       private String tamil;
       

       @Column(name = "science")
       private String science;
       

       @Column(name = "social")
       private String social;
           

       @Column(name = "maths")
       private String maths;
       

       @Column(name = "total")
       private String total;
       

   	@Column(name = "average")
    private String average;

   	
       
       
       public Ticket() {
		super();
		// TODO Auto-generated constructor stub
	}


	public String getRegistration() {
		return registration;
	}


	public void setRegistration(String registration) {
		this.registration = registration;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getEnglish() {
		return english;
	}


	public void setEnglish(String english) {
		this.english = english;
	}


	public String getTamil() {
		return tamil;
	}


	public void setTamil(String tamil) {
		this.tamil = tamil;
	}


	public String getScience() {
		return science;
	}


	public void setScience(String science) {
		this.science = science;
	}


	public String getSocial() {
		return social;
	}


	public void setSocial(String social) {
		this.social = social;
	}


	public String getMaths() {
		return maths;
	}


	public void setMaths(String maths) {
		this.maths = maths;
	}


	public String getTotal() {
		return total;
	}


	public void setTotal(String total) {
		this.total = total;
	}


	public String getAverage() {
		return average;
	}


	public void setAverage(String average) {
		this.average = average;
	}




	public Ticket(String registration, String name, String english, String tamil, String science, String social,
			String maths, String total, String average) {
		super();
		this.registration = registration;
		this.name = name;
		this.english = english;
		this.tamil = tamil;
		this.science = science;
		this.social = social;
		this.maths = maths;
		this.total = total;
		this.average = average;
	}


       
       
       
       
       
       
       


		       
       
	
}
