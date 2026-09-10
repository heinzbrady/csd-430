package com.heinz.beans;

import java.io.Serializable;

/*
 * Brady Heinz
 * 9/6/26
 * Module 4.2 Assignment
 */
public class MarvelCharacter implements Serializable {

    private static final long serialVersionUID = 1L;

    private String characterName;
    private String realName;
    private String team;
    private String power;
    private String firstMovie;
    private String alignment;

    public MarvelCharacter() {
    }

    public MarvelCharacter(String characterName, String realName,
            String team, String power, String firstMovie,
            String alignment) {

        this.characterName = characterName;
        this.realName = realName;
        this.team = team;
        this.power = power;
        this.firstMovie = firstMovie;
        this.alignment = alignment;
    }

    public String getCharacterName() {
        return characterName;
    }

    public void setCharacterName(String characterName) {
        this.characterName = characterName;
    }

    public String getRealName() {
        return realName;
    }

    public void setRealName(String realName) {
        this.realName = realName;
    }

    public String getTeam() {
        return team;
    }

    public void setTeam(String team) {
        this.team = team;
    }

    public String getPower() {
        return power;
    }

    public void setPower(String power) {
        this.power = power;
    }

    public String getFirstMovie() {
        return firstMovie;
    }

    public void setFirstMovie(String firstMovie) {
        this.firstMovie = firstMovie;
    }

    public String getAlignment() {
        return alignment;
    }

    public void setAlignment(String alignment) {
        this.alignment = alignment;
    }
}