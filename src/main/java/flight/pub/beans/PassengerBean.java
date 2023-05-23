package flight.pub.beans;

import io.micronaut.context.annotation.Prototype;
import io.micronaut.core.annotation.Introspected;

@Prototype
@Introspected
public class PassengerBean {
    private int number;
    private String name;
    private String gender;
    private String dob;
    private String passportNumber;

    public PassengerBean() {
    }

    public PassengerBean(int number, String name, String gender, String dob, String passportNumber) {
        this.number = number;
        this.name = name;
        this.gender = gender;
        this.dob = dob;
        this.passportNumber = passportNumber;
    }

    public int getNumber() {
        return number;
    }

    public void setNumber(int number) {
        this.number = number;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getDob() {
        return dob;
    }

    public void setDob(String dob) {
        this.dob = dob;
    }

    public String getPassportNumber() {
        return passportNumber;
    }

    public void setPassportNumber(String passportNumber) {
        this.passportNumber = passportNumber;
    }

    public void temp1() {
        number = 1;
        name = "John Smith";
        dob = "01/01/1995";
        gender = "Male";
        passportNumber = "PA123412";
    }

    public void temp2() {
        number = 2;
        name = "Liam Smith";
        dob = "10/08/2004";
        gender = "Male";
        passportNumber = "PA123529";
    }
}
