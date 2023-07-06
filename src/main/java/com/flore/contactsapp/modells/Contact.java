package com.flore.contactsapp.modells;

import jakarta.persistence.*;

/**
 * Class for representing contacts.
 * */
@Entity
@Table(name = "contact")
public class Contact implements Comparable<Contact>{
    @Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    @Column(name = "id")
    private int id;

    @Column(name = "name")
    private String nameFull;

    @Column(name = "telephone")
    private String telephone;

    @Column(name = "email")
    private String email;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return nameFull;
    }

    public void setName(String name) {
        this.nameFull = name;
    }

    public String getTelephone() {
        return telephone;
    }

    public void setTelephone(String telephone) {
        this.telephone = telephone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    @Override
    public int compareTo(Contact contact2) {
        return this.nameFull.compareTo(contact2.nameFull);
    }
}
