package com.klu.jfsd.model;

import java.sql.Blob;

import jakarta.persistence.*;

@Entity
public class Home {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String name;
    private String location;
    private boolean ac; // AC or Non-AC
    private int maxAdults;
    private String type; // Room, Villa, Homestay, Hotel
    private boolean available;
    private double pricepernight;
    byte[] image;

    public byte[] getImage() {
		return image;
	}

	public void setImage(byte[] imageBytes) {
		this.image = imageBytes;
	}

	public double getPricepernight() {
		return pricepernight;
	}

	public void setPricepernight(double pricepernight) {
		this.pricepernight = pricepernight;
	}

	// Getters and Setters
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

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public boolean isAc() {
        return ac;
    }

    public void setAc(boolean ac) {
        this.ac = ac;
    }

    public int getMaxAdults() {
        return maxAdults;
    }

    public void setMaxAdults(int maxAdults) {
        this.maxAdults = maxAdults;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public boolean isAvailable() {
        return available;
    }

    public void setAvailable(boolean available) {
        this.available = available;
    }
}
