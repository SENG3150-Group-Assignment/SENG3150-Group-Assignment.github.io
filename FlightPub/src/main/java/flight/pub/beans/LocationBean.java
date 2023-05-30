package flight.pub.beans;

import java.util.Vector;


public class LocationBean {
    Vector<Location> cities;

    public LocationBean(){
        cities = new Vector<Location>();
    }

    //populates the bean with loki-search locations
    public void populateBean(String tagSelection[], String weather, String temperature){
        //search database for locations with matching tags
        Vector<Location> temp = DBTagSearch(tagSelection);

        //selectivly filter weather and temp tags
        for (Location loc:temp){
            //if weather and temp tag match, add to city list
        }

        //if there arent enough cities, try again without weather tags
        if (cities.size() < 20){
            //zero list
            cities.clear();
            
            //try again
            for (Location loc:temp){
                //if tag temp match, add to city list
            }
        }

        //count tag matches
        for (String tag:tagSelection){
            for (Location loc:cities){
                //if tag matches, increment tag matches
                loc.incrementMatches();
            }
        }

        //sort vector on tag matches
        sortByMatches();
        
    }

    private Vector DBTagSearch(String tagSelection[]){
        Vector<Location> returnList = new Vector<Location>();
        //search database for locations with matching tags
        //add location to vector
        //set tag matches
        return returnList;
    }

    private void sortByMatches(){
        //sort cities by number of tag matches
    }

}
