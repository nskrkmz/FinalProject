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
@Table(name="urun")
public class Urun {
 
 @Id
 @GeneratedValue(strategy=GenerationType.IDENTITY)
 @Column(name="id")
 protected int urun_id;
 
 @Column(name="name")
 protected String urun_name;
 
 @Column(name="alisFiyat")
 protected int alisFiyat;
 
 @Column(name="satisFiyat")
 protected int satisFiyat;
 
 
 public Urun() {
 }
 
 public Urun(String name, int alisFiyat, int satisFiyat) {
  super();
  this.urun_name = name;
  this.alisFiyat = alisFiyat;
  this.satisFiyat = satisFiyat;
 }

 public Urun(int id, String name, int alisFiyat, int satisFiyat) {
  super();
  this.urun_id = id;
  this.urun_name = name;
  this.alisFiyat = alisFiyat;
  this.satisFiyat = satisFiyat;
 }

 public int getId() {
  return urun_id;
 }
 public void setId(int id) {
  this.urun_id = id;
 }
 public String getName() {
  return urun_name;
 }
 public void setName(String name) {
  this.urun_name = name;
 }
 public int getalisFiyat() {
  return alisFiyat;
 }
 public void setalisFiyat(int alisFiyat ) {
  this.alisFiyat = alisFiyat;
 }
 public int getsatisFiyat() {
  return satisFiyat;
 }
 public void setsatisFiyat(int satisFiyat) {
  this.satisFiyat = satisFiyat;
 }
}