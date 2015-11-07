package com.minetoolz.website.models;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotBlank;
import org.hibernate.validator.constraints.NotEmpty;

import javax.persistence.*;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import java.sql.Timestamp;

@Entity
public final class UserRating
{
    @Id
    @Column(nullable = false)
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Email
    @Column(length = 127)
    private String email;

    @Column(nullable = false, columnDefinition = "TIMESTAMP DEFAULT CURRENT_TIMESTAMP")
    private Timestamp timestamp;


    @ManyToOne(optional = false)
    private Tool tool;

    @Column(nullable = false, length = 45)
    private String ip;


    @NotBlank
    @Column(nullable = false, length = 4000)
    private String comment;

    @NotBlank
    @Column(nullable = false, length = 63)
    private String name;


    @Min(1)
    @Max(5)
    @NotNull(message = "Please rate the tool")
    @Column(nullable = false)
    private Integer starCount;



    public Integer getStarCount()
    {
        return starCount;
    }

    public void setStarCount(Integer starCount)
    {
        this.starCount = starCount;
    }

    public String getComment()
    {
        return comment;
    }

    public void setComment(String comment)
    {
        this.comment = comment;
    }

    public String getName()
    {
        return name;
    }

    public void setName(String name)
    {
        this.name = name;
    }

    public Tool getTool()
    {
        return tool;
    }

    public void setTool(Tool tool)
    {
        this.tool = tool;
    }

    public int getId()
    {
        return id;
    }

    public void setId(int id)
    {
        this.id = id;
    }

    public String getEmail()
    {
        return email;
    }

    public void setEmail(String email)
    {
        this.email = email;
    }

    public Timestamp getTimestamp()
    {
        return timestamp;
    }

    public void setTimestamp(Timestamp timestamp)
    {
        this.timestamp = timestamp;
    }

    public String getIp()
    {
        return ip;
    }

    public void setIp(String ip)
    {
        this.ip = ip;
    }
}
