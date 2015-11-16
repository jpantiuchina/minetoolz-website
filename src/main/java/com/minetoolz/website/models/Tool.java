package com.minetoolz.website.models;

import org.hibernate.validator.constraints.NotBlank;
import org.hibernate.validator.constraints.NotEmpty;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(indexes = @Index(columnList = "urlName", unique = true))
public final class Tool
{
    @Id
    @Column(nullable = false)
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column(nullable = false, length = 31)
    private String urlName;

    @NotBlank
    @Column(nullable = false, length = 255)
    private String name;

    @NotBlank
    @Column(nullable = false, length = 255)
    private String website;

    @NotBlank
    @Column(nullable = false, length = 255)
    private String tinyDescription;

    @Lob
    @Column(nullable = false)
    private String fullDescriptionHtml;

    @Lob
    private byte[] image;

    private String imageType;


    @OneToMany(mappedBy = "tool")
    @OrderBy
    private List<UserRating> userRatings;


    public List<UserRating> getUserRatings()
    {
        return userRatings;
    }

    public void addUserRating(UserRating userRating)
    {
        this.userRatings.add(userRating);
    }

    public int getId()
    {
        return id;
    }

    public void setId(int id)
    {
        this.id = id;
    }

    public String getUrlName()
    {
        return urlName;
    }

    public void setUrlName(String urlName)
    {
        this.urlName = urlName;
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


    public String getTinyDescription()
    {
        return tinyDescription;
    }

    public void setTinyDescription(String tinyDescription)
    {
        this.tinyDescription = tinyDescription;
    }

    public String getFullDescriptionHtml()
    {
        return fullDescriptionHtml;
    }

    public void setFullDescriptionHtml(String fullDescriptionHtml)
    {
        this.fullDescriptionHtml = fullDescriptionHtml;
    }

    public byte[] getImage()
    {
        return image;
    }

    public void setImage(byte[] image)
    {
        this.image = image;
    }

    public String getImageType()
    {
        return imageType;
    }

    public void setImageType(String imageType)
    {
        this.imageType = imageType;
    }
}
