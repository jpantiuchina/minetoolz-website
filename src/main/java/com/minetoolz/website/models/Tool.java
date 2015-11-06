package com.minetoolz.website.models;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;

import javax.persistence.*;
import java.sql.Timestamp;

@Entity
public class Tool
{
    @Id
    @Column(nullable = false, length = 31)
    private String id;

    @NotEmpty
    @Column(nullable = false, length = 255)
    private String name;

    @NotEmpty
    @Column(nullable = false, length = 255)
    private String website;

    @Lob
    @Column(nullable = false)
    private String description;

    @Lob
    @Column()
    private byte[] image;

    @Column()
    private byte[] imageType;


    public Tool()
    {
    }


    public String getId()
    {
        return id;
    }

    public void setId(String id)
    {
        this.id = id;
    }

    public String getName()
    {
        return name;
    }

    public void setName(String name)
    {
        this.name = name;
    }

    public String getWebsite()
    {
        return website;
    }

    public void setWebsite(String website)
    {
        this.website = website;
    }

    public String getDescription()
    {
        return description;
    }

    public void setDescription(String description)
    {
        this.description = description;
    }

    public byte[] getImage()
    {
        return image;
    }

    public void setImage(byte[] image)
    {
        this.image = image;
    }

    public byte[] getImageType()
    {
        return imageType;
    }

    public void setImageType(byte[] imageType)
    {
        this.imageType = imageType;
    }
}
