
package lk.phoenixairline.model;


public class Payment {
    Integer paymentId;
    String fullName;
    String email;
    Integer passportNumber;
    String city;
    String states;
    String zipcode;
    String nameOnCard;
    Integer creditCardNumber;
    String expMonth;
    String expYear;
    String cvv;
   
    public Payment() {
    }

    public Payment(Integer paymentId, String fullName, String email, Integer passportNumber, String city, String states, String zipcode, String nameOnCard, Integer creditCardNumber, String expMonth, String expYear, String cvv) {
        this.paymentId = paymentId;
        this.fullName = fullName;
        this.email = email;
        this.passportNumber = passportNumber;
        this.city = city;
        this.states = states;
        this.zipcode = zipcode;
        this.nameOnCard = nameOnCard;
        this.creditCardNumber = creditCardNumber;
        this.expMonth = expMonth;
        this.expYear = expYear;
        this.cvv = cvv;
    }

    public Integer getPaymentId() {
        return paymentId;
    }

    public void setPaymentId(Integer paymentId) {
        this.paymentId = paymentId;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Integer getPassportNumber() {
        return passportNumber;
    }

    public void setPassportNumber(Integer passportNumber) {
        this.passportNumber = passportNumber;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getStates() {
        return states;
    }

    public void setStates(String states) {
        this.states = states;
    }

    public String getZipcode() {
        return zipcode;
    }

    public void setZipcode(String zipcode) {
        this.zipcode = zipcode;
    }

    public String getNameOnCard() {
        return nameOnCard;
    }

    public void setNameOnCard(String nameOnCard) {
        this.nameOnCard = nameOnCard;
    }

    public Integer getCreditCardNumber() {
        return creditCardNumber;
    }

    public void setCreditCardNumber(Integer creditCardNumber) {
        this.creditCardNumber = creditCardNumber;
    }

    public String getExpMonth() {
        return expMonth;
    }

    public void setExpMonth(String expMonth) {
        this.expMonth = expMonth;
    }

    public String getExpYear() {
        return expYear;
    }

    public void setExpYear(String expYear) {
        this.expYear = expYear;
    }

    public String getCvv() {
        return cvv;
    }

    public void setCvv(String cvv) {
        this.cvv = cvv;
    }

    @Override
    public String toString() {
        return "Payment{" + "paymentId=" + paymentId + ", fullName=" + fullName + ", email=" + email + ", passportNumber=" + passportNumber + ", city=" + city + ", states=" + states + ", zipcode=" + zipcode + ", nameOnCard=" + nameOnCard + ", creditCardNumber=" + creditCardNumber + ", expMonth=" + expMonth + ", expYear=" + expYear + ", cvv=" + cvv + '}';
    }

   
    
    
}
