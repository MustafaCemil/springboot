package com.emlak.main.model;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name="city")
public class City {
	
	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE,generator="EmlakId")
	@SequenceGenerator(name="EmlakId",sequenceName="emlakseqId")
	private Long id;
	
	
	@Column(name="cityname")
	private String cityname;
	
	@OneToMany(fetch=FetchType.LAZY,mappedBy="city")
	private Set<User> user = new HashSet<>();
	
	

	public String getCityname() {
		return cityname;
	}

	public void setCityname(String cityname) {
		this.cityname = cityname;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}


	public Set<User> getUser() {
		return user;
	}

	public void setUser(Set<User> user) {
		this.user = user;
	}

	@Override
	public String toString() {
		return "City [id=" + id + ", cityname=" + cityname + ", user=" + user + "]";
	}

}
