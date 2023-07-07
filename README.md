# Contacts Book Web Aplicattion Full-Stack 

A contacts book web aplicattion full-stack developed with Java **_Spring boot 3.1.1_** Framework.

Fronted developed with Html, Css, Java Script & Vuetify Framework.

**_MySql_** as a database engine.

Basically it is a contacts book where you can perform all the operations of a CRUD.

## Prerequisites.

* The aplication makes use Java with the version 17.
  
  *_It's important to make sure you have a version of jdk 17 or higher, so that the application can run correctly._*

* The aplication makes use Maven with the version 4.0.0, but it can run in the version 3.9. Anyway in the project files comes tools to run the project with maven, but it is mandatory to have it installed.

### Database configuration.

Import the database from the [contactsapp-database.sql](https://github.com/richardfm77/ContactsBookWebAplicattion/blob/main/contactsapp-database.sql) file to your mysql server of choice.

Before running the application it is important to configure the [application.properties](https://github.com/richardfm77/ContactsBookWebAplicattion/blob/main/src/main/resources/application.properties) file. In this file the following must be specified:

* The mysql server url.
* Name of the database (contactsapp).
* Username of mysql server.
* Password of username.

*_Make sure that the mysql server is working properly._*

## Start aplication.

### Run server.

In the root of the project run the following command in a console:

*_Before executing the command make sure you have an internet connection, as maven will need to download dependencies._*

* Linux:
```sh
   ./mvnw spring-boot:run
```

* Windows:
```sh
   mvnw.cmd spring-boot:run
```

### Consult view.
```sh
   http://localhost:8080/
```
