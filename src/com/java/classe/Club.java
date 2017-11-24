package com.java.classe;

public class Club {
    private int PK_Club;
    private String Club_Nom,Club_Type;

    public void setPK_Club(int PK_Club) {
        this.PK_Club = PK_Club;
    }

    public void setClub_Nom(String club_Nom) {
        Club_Nom = club_Nom;
    }

    public void setClub_Type(String club_Type) {
        Club_Type = club_Type;
    }

    public int getPK_Club() {
        return PK_Club;
    }

    public String getClub_Nom() {
        return Club_Nom;
    }

    public String getClub_Type() {
        return Club_Type;
    }
}
