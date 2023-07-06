package com.flore.contactsapp.controllers;

import com.flore.contactsapp.modells.Contact;
import com.flore.contactsapp.services.ServiceContact;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
public class ControllerContact {

    @Autowired
    private ServiceContact serviceContact;

    @RequestMapping(value = "api/contacts", method = RequestMethod.GET)
    public List<Contact> getContacts() {
        return  serviceContact.getContacts();
    }

    @RequestMapping(value = "api/contacts", method = RequestMethod.POST)
    public void postContacts(@RequestBody Contact contact) {
        serviceContact.postContacts(contact);
    }

    @RequestMapping(value = "api/contacts/{id}", method = RequestMethod.DELETE)
    public void deleteContact(@PathVariable int id) {
        serviceContact.deleteContact(id);
    }

}
