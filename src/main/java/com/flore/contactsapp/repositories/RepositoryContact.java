package com.flore.contactsapp.repositories;

import com.flore.contactsapp.modells.Contact;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface RepositoryContact extends CrudRepository<Contact, Integer> {}