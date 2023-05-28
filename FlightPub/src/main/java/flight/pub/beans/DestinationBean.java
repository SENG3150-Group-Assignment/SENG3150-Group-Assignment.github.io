package flight.pub.beans;

import io.micronaut.context.annotation.Prototype;
import io.micronaut.core.annotation.Introspected;

@Prototype
@Introspected
public class DestinationBean {
    private String name;
    private String shortDescription;
    private String[] description;
    private String image;

    public DestinationBean() {
    }

    public DestinationBean(String name, String shortDescription, String[] description, String image) {
        this.name = name;
        this.shortDescription = shortDescription;
        this.description = description;
        this.image = image;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getShortDescription() {
        return shortDescription;
    }

    public void setShortDescription(String shortDescription) {
        this.shortDescription = shortDescription;
    }

    public String[] getDescription() {
        return description;
    }

    public void setDescription(String[] description) {
        this.description = description;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    /*-------------------- // TODO Remove DEBUG --------------------*/
    public void nepal() {
        setImage("/images/nepal.jpg");
        setName("Nepal");
        setShortDescription("Mountainous & Spiritual");
        String[] longDescript = {
                "Nestled in the heart of the Himalayas, Nepal is a country of natural and cultural wonders that are sure to leave you awe-struck. Home to the world\'s highest mountain, Mount Everest, Nepal offers breathtaking views of the majestic peaks that surround it.",
                "The country's rich cultural heritage is equally impressive, with ancient temples, stupas, and palaces that reflect the diverse religious traditions and artistic expressions of its people. Whether you're looking for adventure, spiritual renewal, or simply a break from the hustle and bustle of daily life, Nepal has something for everyone. From trekking in the Himalayas to exploring the ancient city of Kathmandu, Nepal is a destination that promises to leave a lasting impression on your heart and soul." };
        setDescription(longDescript);
    }

    public void ny() {
        setImage("/images/new-york.png");
        setName("New York City");
        setShortDescription("Cosmopolitan & Diverse");
    }

    public void mystery() {
        setImage("/images/question-mark.png");
        setName("Mystery Flight");
        setShortDescription("Excitement & Adventure");
    }

}
