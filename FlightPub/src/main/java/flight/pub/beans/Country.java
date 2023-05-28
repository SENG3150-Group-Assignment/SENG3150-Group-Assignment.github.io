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
public class Country {
    @Id
    @GeneratedValue(GeneratedValue.Type.AUTO)
    private Long id;

    @NonNull
    private String countryCode;
    private String countryName;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getCountryCode() {
        return countryCode;
    }

    public void setCountryCode(String name) {
        this.countryCode = name;
    }

    public String getCountryName() {
        return countryName;
    }

    public void setCountryName(String description) {
        this.countryName = description;
    }
    @Override
    public String toString() {
        return "Country{" +
                "id=" + id +
                ", countryCode='" + countryCode + '\'' +
                ", description='" + countryName + '\'' +
                '}';
    }

    /*-------------------- // TODO Remove DEBUG --------------------*/
    public void nepal() {
        setCountryCode("Nepal");
        setCountryName("Mountainous & Spiritual");
    }

    public void ny() {
        setCountryCode("New York City");
        setCountryName("Cosmopolitan & Diverse");
    }

    public void mystery() {
        setCountryCode("Mystery Flight");
        setCountryName("Excitement & Adventure");
    }
}
