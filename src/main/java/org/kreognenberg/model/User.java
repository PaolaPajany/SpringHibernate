package org.kreognenberg.model;

import org.hibernate.validator.constraints.Length;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

public class User {

    public User(){}

    @NotNull
    @Size(min=2, max=12)
    private String name;
    @NotNull
    @Pattern(regexp=".+@.+\\..+")
    private String email;
    @NotNull
    @Length(min=8, max=15)
    private String pwd;
    @NotNull
    private String type_of_beer;
    @NotNull
    private String gender;
    @NotNull
    private String interest;


    public String getName() {
        return name;
    }

    public String getEmail() {
        return email;
    }

    public String getPwd() {
        return pwd;
    }

    public String getType_of_beer() {
        return type_of_beer;
    }

    public String getGender() {
        return gender;
    }

    public String getInterest() {
        return interest;
    }


    public void setName(String name) {
        this.name = name;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setPwd(String pwd) {
        this.pwd = pwd;
    }

    public void setType_of_beer(String type_of_beer) {
        this.type_of_beer = type_of_beer;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public void setInterest(String interest) {
        this.interest = interest;
    }
}
