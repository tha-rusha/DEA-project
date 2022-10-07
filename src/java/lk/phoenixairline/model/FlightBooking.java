
package lk.phoenixairline.model;


public class FlightBooking {
    int bookingId;
    String from_s;
    String to_s;
    String start_s;
    String return_s;
    Integer adults;
    Integer child;
    Integer passportNumber;

    public FlightBooking() {
    }

    public FlightBooking(int bookingId, String from_s, String to_s, String start_s, String return_s, Integer adults, Integer child, Integer passportNumber) {
        this.bookingId = bookingId;
        this.from_s = from_s;
        this.to_s = to_s;
        this.start_s = start_s;
        this.return_s = return_s;
        this.adults = adults;
        this.child = child;
        this.passportNumber = passportNumber;
    }

    public int getBookingId() {
        return bookingId;
    }

    public void setBookingId(int bookingId) {
        this.bookingId = bookingId;
    }

    public String getFrom_s() {
        return from_s;
    }

    public void setFrom_s(String from_s) {
        this.from_s = from_s;
    }

    public String getTo_s() {
        return to_s;
    }

    public void setTo_s(String to_s) {
        this.to_s = to_s;
    }

    public String getStart_s() {
        return start_s;
    }

    public void setStart_s(String start_s) {
        this.start_s = start_s;
    }

    public String getReturn_s() {
        return return_s;
    }

    public void setReturn_s(String return_s) {
        this.return_s = return_s;
    }

    public Integer getAdults() {
        return adults;
    }

    public void setAdults(Integer adults) {
        this.adults = adults;
    }

    public Integer getChild() {
        return child;
    }

    public void setChild(Integer child) {
        this.child = child;
    }

    public Integer getPassportNumber() {
        return passportNumber;
    }

    public void setPassportNumber(Integer passportNumber) {
        this.passportNumber = passportNumber;
    }

    @Override
    public String toString() {
        return "FlightBooking{" + "bookingId=" + bookingId + ", from_s=" + from_s + ", to_s=" + to_s + ", start_s=" + start_s + ", return_s=" + return_s + ", adults=" + adults + ", child=" + child + ", passportNumber=" + passportNumber + '}';
    }

    
    
  
}
