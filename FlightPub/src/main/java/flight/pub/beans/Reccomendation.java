package flight.pub.beans;

public class Reccomendation {
    City city;
    double weighting;

    public Reccomendation(){
        weighting = 0.0;
    }

    public Reccomendation(City city){
        this.city = city;
        weighting = 0.0;
    }

    public Reccomendation(City city, double weighting){
        this.city = city;
        this.weighting = weighting;
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

    public double getWeighting(){
        return weighting;
    }

    public void setWeighting(double weight){
        this.weighting = weight;
    }

    public void incrementWeighting(double weight){
        weighting += weight;
    }

    public void decreaseWeighting(double weight){
        weighting -= weight;
    }
}
