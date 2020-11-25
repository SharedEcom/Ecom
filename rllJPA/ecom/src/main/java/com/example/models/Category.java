package com.example.models;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity(name="category")
public class Category {
	
@Id	
@GeneratedValue(strategy = GenerationType.AUTO)
private Integer categoryId;
private String categoryName;
private String description;
private Integer isActive;
private String categoryImage;

public Category() {
}

public Category(Integer categoryId, String categoryName, String description, Integer isActive, String categoryImage) {
	this.categoryId = categoryId;
	this.categoryName = categoryName;
	this.description = description;
	this.isActive = isActive;
	this.categoryImage = categoryImage;
}

public Integer getCategoryId() {
	return categoryId;
}

public void setCategoryId(Integer categoryId) {
	this.categoryId = categoryId;
}

public String getCategoryName() {
	return categoryName;
}

public void setCategoryName(String categoryName) {
	this.categoryName = categoryName;
}

public String getDescription() {
	return description;
}

public void setDescription(String description) {
	this.description = description;
}

public Integer getIsActive() {
	return isActive;
}

public void setIsActive(Integer isActive) {
	this.isActive = isActive;
}

public String getCategoryImage() {
	return categoryImage;
}

public void setCategoryImage(String categoryImage) {
	this.categoryImage = categoryImage;
}

@Override
public String toString() {
	return "Category [categoryId=" + categoryId + ", categoryName=" + categoryName + ", description=" + description
			+ ", isActive=" + isActive + ", categoryImage=" + categoryImage + "]";
}



}
