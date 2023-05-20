package flight.pub.beans;

public class FlightBean {
    private String title;
    private String image;

    public FlightBean() {
    }

    public FlightBean(String title, String image) {
        this.title = title;
        this.image = image;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public void temp1() {
        title = "Flight ABC";
        image = "/images/img-placeholder.png";
    }

    public void temp2() {
        title = "Flight NPL";
        image = "/images/nepal.jpg";
    }

    public void temp3() {
        title = "Flight NYC";
        image = "/images/new-york.png";
    }

    public void temp4() {
        title = "Flight XYZ";
        image = "/images/img-placeholder.png";
    }
}
