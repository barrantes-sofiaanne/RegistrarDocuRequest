package com.registrar;

public class RegistrationValidator {

    // Validate Student ID (Pattern: ****-*****-TG-0)
    public boolean isValidStudentId(String studentID) {
        return studentID.matches("\\d{4}-\\d{5}-TG-0");
    }
    
    // Validate Name (More than 1 character, no numbers)
    public boolean isValidLastName(String lastName) {
        return lastName.length() > 1 && !lastName.matches(".*\\d.*");
    }
    
    // Validate Name (More than 1 character, no numbers)
    public boolean isValidFirstName(String firstName) {
        return firstName.length() > 1 && !firstName.matches(".*\\d.*");
    }

    // Validate Phone Number (11 digits, starts with 09)
    public boolean isValidPhoneNumber(String phoneNumber) {
        return phoneNumber.matches("09\\d{9}");
    }

    // Validate Email (Contains "@" and valid domain extensions)
    public boolean isValidEmail(String email) {
        return email.matches("^[\\w.%+-]+@[\\w.-]+\\.(com|net|edu|ph|gov|org)$");
    }

    // Validate Password (At least 8 characters, with at least 1 number)
    public boolean isValidPassword(String createPassword) {
        return createPassword.length() >= 8 && createPassword.matches(".*\\d.*");
    }
    
    public boolean isMatchedPassword(String createPassword, String confirmPassword) {
        return confirmPassword.equals(createPassword);
    }

    

    // Combine all validations
    public boolean validateRegistrationForm(String studentID, String lastName, String firstName, String phoneNumber, String email, String createPassword, String confirmPassword) {
        return 	isValidStudentId(studentID) && 
        		isValidLastName(lastName) &&
         	   	isValidFirstName(firstName) &&
         	   	isValidPhoneNumber(phoneNumber) && 
         	   	isValidEmail(email) && 
         	   	isValidPassword(createPassword) &&
         	   	isMatchedPassword(createPassword, confirmPassword);
               
    }
}

