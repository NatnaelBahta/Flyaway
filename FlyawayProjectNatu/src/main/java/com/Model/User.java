package com.Model;

public class User {

    private String Email;
    private String Password;
    private String Name;
    private String DateOfBirth;
    private String PhoneNumber;

    public User(String email, String password, String name, String dateOfBirth, String phoneNumber) {
        Email = email;
        Password = password;
        Name = name;
        DateOfBirth = dateOfBirth;
        PhoneNumber = phoneNumber;
    }

    public User(String email, String password, String name) {
        Email = email;
        Password = password;
        Name = name;
    }


    public String getEmail() {
        return Email;
    }

    public String getPassword() {
        return Password;
    }

    public String getName() {
        return Name;
    }

    public String getDateOfBirth() {
        return DateOfBirth;
    }

    public String getPhoneNumber() {
        return PhoneNumber;
    }

    public void setEmail(String email) {
        Email = email;
    }

    public void setPassword(String password) {
        Password = password;
    }

    public void setName(String name) {
        Name = name;
    }

    public void setDateOfBirth(String dateOfBirth) {
        DateOfBirth = dateOfBirth;
    }

    public void setPhoneNumber(String phoneNumber) {
        PhoneNumber = phoneNumber;
    }
}
