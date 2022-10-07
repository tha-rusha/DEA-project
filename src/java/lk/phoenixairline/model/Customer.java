
package lk.phoenixairline.model;

public class Customer {
    Integer customerId;
    String customerName;
    String email;
    String passportNumber;
    String address;
    String gender;
    Integer mobile;
    String password;
    String role;
    
    public Customer() {
    }

    public Customer(Integer customerId, String customerName, String email, String passportNumber, String address, String gender, Integer mobile, String password, String role) {
        this.customerId = customerId;
        this.customerName = customerName;
        this.email = email;
        this.passportNumber = passportNumber;
        this.address = address;
        this.gender = gender;
        this.mobile = mobile;
        this.password = password;
        this.role = role;
    }

    public Integer getCustomerId() {
        return customerId;
    }

    public void setCustomerId(Integer customerId) {
        this.customerId = customerId;
    }

    public String getCustomerName() {
        return customerName;
    }

    public void setCustomerName(String customerName) {
        this.customerName = customerName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassportNumber() {
        return passportNumber;
    }

    public void setPassportNumber(String passportNumber) {
        this.passportNumber = passportNumber;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public Integer getMobile() {
        return mobile;
    }

    public void setMobile(Integer mobile) {
        this.mobile = mobile;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    @Override
    public String toString() {
        return "Customer{" + "customerId=" + customerId + ", customerName=" + customerName + ", email=" + email + ", passportNumber=" + passportNumber + ", address=" + address + ", gender=" + gender + ", mobile=" + mobile + ", password=" + password + ", role=" + role + '}';
    }

    
    

    

    
    
}
