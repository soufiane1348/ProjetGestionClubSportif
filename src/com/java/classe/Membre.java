package com.java.classe;

public class Membre {
    private int PK_Membre;
    private int FK_Club;
    private String Membre_Nom;
    private String Membre_Prenom;
    private String Membre_DateNaissance;
    private String nomClub; // ajout d'un attribu




    public int getPK_Membre() {
        return PK_Membre;
    }

    public int getFK_Club() {
        return FK_Club;
    }

    public String getMembre_Nom() {
        return Membre_Nom;
    }

    public String getMembre_Prenom() {
        return Membre_Prenom;
    }


    public void setPK_Membre(int PK_Membre) {
        this.PK_Membre = PK_Membre;
    }

    public void setFK_Club(int FK_Club) {
        this.FK_Club = FK_Club;
    }

    public void setMembre_Nom(String membre_Nom) {
        Membre_Nom = membre_Nom;
    }

    public void setMembre_Prenom(String membre_Prenom) {
        Membre_Prenom = membre_Prenom;
    }

    public void setMembre_DateNaissance(String membre_DateNaissance) {
        Membre_DateNaissance = membre_DateNaissance;
    }

    public String getMembre_DateNaissance() {
        return Membre_DateNaissance;
    }


    public String getNomClub() {
        return nomClub;
    }

    public void setNomClub(String nomClub) {
        this.nomClub = nomClub;
    }
}
