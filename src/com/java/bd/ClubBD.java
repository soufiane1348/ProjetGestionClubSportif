package com.java.bd;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import com.java.classe.Club;

public class ClubBD {

    public static Connection getConnection(){
        Connection con=null;
        try{
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bdd","root","");
        }catch(Exception e){System.out.println(e);}
        return con;
    }

    /* Méthode pour ajouter nom club et type  */

    public static int save(Club u){
        int status=0;
        try{
            Connection con=getConnection();
            PreparedStatement ps=con.prepareStatement(
                    "insert into Clubs(Club_Nom,Club_Type) values(?,?)");
            ps.setString(1,u.getClub_Nom());
            ps.setString(2,u.getClub_Type());
            status=ps.executeUpdate();
        }catch(Exception e){System.out.println(e);}
        return status;
    }

    /* Méthode pour modifier le nom du club et le type */

    public static int update(Club u){
        int status=0;
        try{
            Connection con=getConnection();
            PreparedStatement ps=con.prepareStatement(
                    "update Clubs set Club_Nom=?,Club_Type=? where PK_Club=?");
            ps.setString(1,u.getClub_Nom());
            ps.setString(2,u.getClub_Type());
            ps.setInt(3,u.getPK_Club());
            status=ps.executeUpdate();
        }catch(Exception e){System.out.println(e);}
        return status;
    }

    /* Suppression du Club */

    public static int delete(Club u){
        int status=0;
        try{
            Connection con=getConnection();
            PreparedStatement ps=con.prepareStatement("delete from Clubs where PK_Club=?");
            ps.setInt(1,u.getPK_Club());
            status=ps.executeUpdate();
        }catch(Exception e){System.out.println(e);}

        return status;
    }

    /* Récupération des enregistrements */

    public static List<Club> getAllRecords(){
        List<Club> list=new ArrayList<Club>();

        try{

            Connection con=getConnection();
                PreparedStatement ps=con.prepareStatement("select * from Clubs");
                ResultSet rs=ps.executeQuery();
                while(rs.next()){
                    Club u=new Club();
                    u.setPK_Club(rs.getInt("PK_Club"));
                    u.setClub_Nom(rs.getString("club_Nom"));
                    u.setClub_Type(rs.getString("club_Type"));
                    list.add(u);


                }
        }catch(Exception e){System.out.println(e);}
        return list;
    }

    /* Récupération de l'ID enregistré */

    public static Club getRecordById(int PK_Club){
        Club u=null;
        try{
            Connection con=getConnection();
            PreparedStatement ps=con.prepareStatement("select * from Clubs where PK_Club=?");
            ps.setInt(1,PK_Club);
            ResultSet rs=ps.executeQuery();
            while(rs.next()){
                u=new Club();
                u.setPK_Club(rs.getInt("PK_Club"));
                u.setClub_Nom(rs.getString("club_Nom"));
                u.setClub_Type(rs.getString("club_Type"));
            }
        }catch(Exception e){System.out.println(e);}
        return u;
    }
}