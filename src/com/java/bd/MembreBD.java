package com.java.bd;
import java.sql.*;
import java.time.Clock;
import java.util.ArrayList;
import java.util.List;

import com.java.classe.Membre;

import static javax.swing.DropMode.ON;

public class MembreBD {

    public static Connection getConnection() {


        Connection con = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bdd", "root", "");


        } catch (Exception e) {
            System.out.println(e);
        }
        return con;
    }

    /* Méthode pour ajouter membre */

    public static int save(Membre u) {
        int status = 0;
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement(
                    "insert into Membres(Membre_Nom,Membre_Prenom, Membre_DateNaissance, FK_Club) values(?,?,?,?)");
            ps.setString(1, u.getMembre_Nom());
            ps.setString(2, u.getMembre_Prenom());
            ps.setString(3, u.getMembre_DateNaissance());
            ps.setInt(4, u.getFK_Club());
            status = ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
        return status;
    }

    /* Méthode pour modifier les membres */

    public static int update(Membre u){
        int status=0;
        try{
            Connection con=getConnection();
            PreparedStatement ps=con.prepareStatement(
                    "update Membres set Membre_Nom=?,Membre_Prenom=?, Membre_DateNaissance=?, FK_club=? where PK_Membre=?");
            ps.setString(1,u.getMembre_Nom());
            ps.setString(2,u.getMembre_Prenom());
            ps.setString(3,u.getMembre_DateNaissance());
            ps.setInt(4,u.getFK_Club());
            ps.setInt(5,u.getPK_Membre());
            status=ps.executeUpdate();
        }catch(Exception e){System.out.println(e);}
        return status;
    }

    /* Suppresion de l'ID membre */

    public static int delete(Membre u){
        int status=0;
        try{
            Connection con=getConnection();
            PreparedStatement ps=con.prepareStatement("delete from membres where PK_Membre=?");
            ps.setInt(1,u.getPK_Membre());
            status=ps.executeUpdate();
        }catch(Exception e){System.out.println(e);}

        return status;
    }

    /* Récupération de tous les entrées */

    public static List<Membre> getAllRecords() {
        List<Membre> listMembre = new ArrayList<Membre>();

        try {
             Connection con = getConnection();
            Statement state = con.createStatement();


            // Jointure table Membre et Club

            String query = "SELECT Membres.PK_Membre,Membres.Membre_Nom,Membres.Membre_Prenom,Membres.Membre_DateNaissance, Clubs.PK_Club as FK_Club,";
            query += "Clubs.Club_Nom, Clubs.Club_Type FROM Membres inner join Clubs on(Membres.FK_Club=Clubs.PK_Club) ";

            ResultSet rs = state.executeQuery(query);



            while (rs.next()) {

                Membre u = new Membre();

                System.out.println("mon test 2 " + rs.getString("Clubs.Club_Nom"));
                u.setPK_Membre(rs.getInt("Membres.PK_Membre"));
                u.setMembre_Nom(rs.getString("Membres.membre_Nom"));
                u.setMembre_Prenom(rs.getString("Membres.membre_Prenom"));
                u.setMembre_DateNaissance(rs.getString("Membres.membre_DateNaissance"));
                u.setNomClub(rs.getString("Clubs.Club_Nom"));

                listMembre.add(u);

            }

        } catch (Exception e) {
            System.out.println(e);
        }


        return listMembre;
    }

    /* Recupération de l'ID pour la modif */

    public static Membre getRecordById(int PK_Membre){
        Membre u=null;
        try{
            Connection con=getConnection();
            PreparedStatement ps=con.prepareStatement("select * from Membres where PK_Membre=?");
            ps.setInt(1,PK_Membre);
            ResultSet rs=ps.executeQuery();
            while(rs.next()) {
                u = new Membre();
                u.setPK_Membre(rs.getInt("PK_Membre"));
                u.setMembre_Nom(rs.getString("membre_Nom"));
                u.setMembre_Prenom(rs.getString("membre_Prenom"));
                u.setMembre_DateNaissance(rs.getString("membre_DateNaissance"));
                u.setFK_Club(rs.getInt("FK_Club"));

            }
        }catch(Exception e){System.out.println(e);}
        return u;
    }

}


