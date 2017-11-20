package com.java.classe;

public class Club {
    private int pk_club;
    private String club_nom,club_type;

    public void setPk_club(int pk_club) {
        this.pk_club = pk_club;
    }

    public void setClub_nom(String club_nom) {
        this.club_nom = club_nom;
    }

    public void setClub_type(String club_type) {
        this.club_type = club_type;
    }

    public int getPk_club() {
        return pk_club;
    }

    public String getClub_nom() {
        return club_nom;
    }

    public String getClub_type() {
        return club_type;
    }
}
