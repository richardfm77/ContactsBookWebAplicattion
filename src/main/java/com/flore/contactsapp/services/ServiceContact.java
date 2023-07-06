package com.flore.contactsapp.services;

import com.flore.contactsapp.modells.Contact;
import com.flore.contactsapp.repositories.RepositoryContact;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ServiceContact {

    @Autowired
    private RepositoryContact repositoryContact;

    public List<Contact> getContacts() {
        List<Contact> contacts = (List<Contact>) repositoryContact.findAll();
        contacts.sort((e1,e2) -> e1.compareTo(e2));
        return contacts;
    }

    public void postContacts(Contact contact) {
        repositoryContact.save(contact);
    }

    public  void deleteContact(int id) {
        repositoryContact.deleteById(id);
    }

}
