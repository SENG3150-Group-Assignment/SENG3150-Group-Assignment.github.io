package flight.pub.beans;


public class Location {
    City city;
    int numOfTagMatches;

    public Location(){
        numOfTagMatches = 0;
    }

    public Location(City city){
        this.city = city;
        numOfTagMatches = 0;
    }

    public Location(City city, int numOfTagMatches){
        this.city = city;
        this.numOfTagMatches = numOfTagMatches;
    }

    //////////////////////////////////
    //getters and setters
    //////////////////////////////////
    public City getCity(){
        return city;
    }

    public void setCity(City city){
        this.city = city;
    }

    public int getNumOfTagMatches(){
        return numOfTagMatches;
    }

    public void setNumOfTagMatches(int numOfTagMatches){
        this.numOfTagMatches = numOfTagMatches;
    }

    public void incrementMatches(){
        numOfTagMatches++;
    }
}
