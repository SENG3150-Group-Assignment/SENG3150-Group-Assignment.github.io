package flight.pub.beans;

import java.util.Vector;

public class ReccoBean{
    Vector<Reccomendation> reccomendations;

    public ReccoBean() {
        reccomendations = new Vector<Reccomendation>();
    }

    //////////////////////////////////////
    //logic functions
    //////////////////////////////////////

    public void ReccomendDestinations(String userAcc){
        if (!userAcc.equals("")){
            //pull from seach history
            DBSearch_SearchHistory(userAcc);

            //pull from watchlist
            DBWatchlistRetrieval(userAcc);

            //pull from flight history
            DBFlightHistoryRetrieval(userAcc);

            //pull from recently reccommended
            Vector<City> recentReccomend = DBRecentlyReccomended(userAcc);
            for (City city:recentReccomend){
                for (Reccomendation recc:reccomendations){
                    if (city.getCityCode().equals(recc.getCity().getCityCode())){
                        recc.decreaseWeighting(0.2);
                    }
                }
            }
        }   
    }

    public void reccomendedOnIP(String ip){
        //pull from ip location
        Vector<Reccomendation> IPreccomendations = DBSearchTravelHistoryByIP(ip);
        //aggregate by city and sort by times visited

        //give weighting skewed by popularity 0 to 1
        for (int i = 0; i < IPreccomendations.size(); i++){
            IPreccomendations.get(i).setWeighting((double)i/IPreccomendations.size());
        }

        //add to reccomendations
        for (Reccomendation recc:IPreccomendations){
            reccomendations.add(recc);
        }

        //call to inflate and finalise
        inflateAndFinaliseList();
    }

    private void inflateAndFinaliseList(){
        //for each reccomendation
        for (Reccomendation recc:reccomendations){
            //pull cities in the same country as recc
            //randomly pick one
            //if not in reccomendations, add to reccomendations
        }

        while (reccomendations.size() < 20){
            //pull random city from database
            //if not in reccomendations, add to reccomendations
        }

        //increase each weighting by a noise value between 0 and 0.5
        for (Reccomendation recc:reccomendations){
            recc.incrementWeighting(Math.random()/2);
        }

        //sort by weighting
        sortLocationsOnWeight();
    }

    //////////////////////////////////////
    //database functions
    //////////////////////////////////////
    private void DBSearch_SearchHistory(String user){
        //pull last 20 unique flight locations from flight history

        for (int i = 0; i < 20; i++){
            //add to reccomendations
            //if no more history break loop
        }
    }

    private void DBWatchlistRetrieval(String user){
        //pull watchlist from database
        //for all unique watchlist destinations
        //add to reccomendations
    }

    private void DBFlightHistoryRetrieval(String user){
        //pull flight history from database
        for (int i = 0; i < 10; i++){
            //add to reccomendations
            //if no more history break loop
        }
    }

    private Vector<City> DBRecentlyReccomended(String user){
        Vector<City> returnList = new Vector<City>();
        //pull recently reccomended from database
        return returnList;
    }

    private Vector<Reccomendation> DBSearchTravelHistoryByIP(String ip){
        Vector<Reccomendation> results = new Vector<Reccomendation>();

        //pull travel history from database
        for (int i = 0; i < 20; i++){
            //add to reccomendations
            //if no more history break loop
        }

        return results;
    }

    public void updateReccomendations(){
        for (int i = 0; i<5; i++){
            //update db recently reccomeneded w/ this value
        }
    }

    //////////////////////////////////////
    //sorting functions
    //////////////////////////////////////

    private void sortLocationsOnWeight(){
        //sort reccomendations by weighting
    }

    //////////////////////////////////////
    //getters and setters
    //////////////////////////////////////
    public Vector<Reccomendation> getReccomendations() {
        return reccomendations;
    }

    public void setReccomendations(Vector<Reccomendation> reccomendations) {
        this.reccomendations = reccomendations;
    }

    
}