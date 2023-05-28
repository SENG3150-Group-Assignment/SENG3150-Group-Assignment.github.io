package flight.pub.beans;

import io.micronaut.context.annotation.Prototype;
import io.micronaut.core.annotation.Introspected;
import io.micronaut.core.annotation.NonNull;
import io.micronaut.data.annotation.GeneratedValue;
import io.micronaut.data.annotation.Id;
import io.micronaut.data.annotation.MappedEntity;
import io.micronaut.serde.annotation.Serdeable;

@Prototype
@Introspected
@Serdeable
@MappedEntity
public class CountryBean {
    @Id
    @GeneratedValue(GeneratedValue.Type.AUTO)
    private Long id;

    @NonNull
    private String name;
    private String description;
    private String image;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    @Override
    public String toString() {
        return "CountryBean{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", description='" + description + '\'' +
                ", image='" + image + '\'' +
                '}';
    }

    /*-------------------- // TODO Remove DEBUG --------------------*/
    public void nepal() {
        setImage("/images/nepal.jpg");
        setName("Nepal");
        setDescription("Mountainous & Spiritual");
    }

    public void ny() {
        setImage("/images/new-york.png");
        setName("New York City");
        setDescription("Cosmopolitan & Diverse");
    }

    public void mystery() {
        setImage("/images/question-mark.png");
        setName("Mystery Flight");
        setDescription("Excitement & Adventure");
    }
}
