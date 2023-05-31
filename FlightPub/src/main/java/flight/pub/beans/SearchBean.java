package flight.pub.beans;


import java.util.Date;
import java.util.Vector;

public class SearchBean {
    //house a list of trips
    private Vector<Vector<Flight>> trips;

    public SearchBean(){
        trips = new Vector<Vector<Flight>>();
    }

    /////////////////////////////
    //logic functions
    /////////////////////////////

    public void pathfindingSearch(String start, String dest, Date startDate, int maxDepth){
        Vector<Flight> legs = new Vector<Flight>();
        //pull from database and path find
        //bfs but stop over time cannot exceed 48hrs
        //add legs to trips if path is valid

        //avoid a million returns
        //per initial flight, only add the cheapest, shortest(time) and shortest(hops) to the final search list
        
    }

    /////////////////////////////
    //database functions
    /////////////////////////////
    
    private Vector<Flight> dBoutboundFlights(String origin){
        Vector<Flight> returnList = new Vector<Flight>();
        //search database for flights starting at origin
        //add flights to vector
        return returnList;
    }

    public void archiveInDB(String userAcc, String destination){
        //archive search in database
    }

    /////////////////////////////
    //getters and setters
    /////////////////////////////

    public Vector<Vector<Flight>> getTrips() {
        return trips;
    }

    public void setTrips(Vector<Vector<Flight>> trips) {
        this.trips = trips;
    }
}
