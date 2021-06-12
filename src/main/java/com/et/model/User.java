package com.et.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * User.java
 * This is a model class represents a User entity
 * @author Ramesh Fadatare
 *
 */

@Entity
@Table(name="user")
public class User {
 
 @Id
 @GeneratedValue(strategy=GenerationType.IDENTITY)
 @Column(name="id")
 protected int user_id;
 
 @Column(name="name")
 protected String user_name;
 
 @Column(name="email")
 protected String user_email;
 
 @Column(name="password")
 protected String user_password;
 
 public User() {
 }
 
 public User(String name, String email, String password) {
  super();
  this.user_name = name;
  this.user_email = email;
  this.user_password = password;
 }

 public User(int id, String name, String email, String password) {
  super();
  this.user_id = id;
  this.user_name = name;
  this.user_email = email;
  this.user_password = password;
 }

 public int getId() {
  return user_id;
 }
 public void setId(int id) {
  this.user_id = id;
 }
 public String getName() {
  return user_name;
 }
 public void setName(String name) {
  this.user_name = name;
 }
 public String getEmail() {
  return user_email;
 }
 public void setEmail(String email) {
  this.user_email = email;
 }
 public String getPassword() {
  return user_password;
 }
 public void setPassword(String password) {
  this.user_password = password;
 }
}