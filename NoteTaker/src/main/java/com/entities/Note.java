package com.entities;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;
@Entity
@Data
@Getter
@Setter
@ToString 
@NoArgsConstructor
public class Note {
@Id	
@GeneratedValue(strategy = GenerationType.AUTO)
private int id;
private String title;
@Column(length = 1500)
private String content;
private Date addedDate;
public Note(String title, String content, Date addedDate) {
	super();
	this.title = title;
	this.content = content;
	this.addedDate = addedDate;
}

}
