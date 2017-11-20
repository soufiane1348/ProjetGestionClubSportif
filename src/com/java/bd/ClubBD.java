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
    public static int save(Club u){
        int status=0;
        try{
            Connection con=getConnection();
            PreparedStatement ps=con.prepareStatement(
                    "insert into club(club_nom,club_type) values(?,?)");
            ps.setString(1,u.getClub_nom());
            ps.setString(2,u.getClub_type());
            status=ps.executeUpdate();
        }catch(Exception e){System.out.println(e);}
        return status;
    }
    public static int update(Club u){
        int status=0;
        try{
            Connection con=getConnection();
            PreparedStatement ps=con.prepareStatement(
                    "update club set club_nom=?,club_type=? where pk_club=?");
            ps.setString(1,u.getClub_nom());
            ps.setString(2,u.getClub_type());
            ps.setInt(3,u.getPk_club());
            status=ps.executeUpdate();
        }catch(Exception e){System.out.println(e);}
        return status;
    }
    public static int delete(Club u){
        int status=0;
        try{
            Connection con=getConnection();
            PreparedStatement ps=con.prepareStatement("delete from club where pk_club=?");
            ps.setInt(1,u.getPk_club());
            status=ps.executeUpdate();
        }catch(Exception e){System.out.println(e);}

        return status;
    }
    public static List<Club> getAllRecords(){
        List<Club> list=new ArrayList<Club>();

        try{
            Connection con=getConnection();
            PreparedStatement ps=con.prepareStatement("select * from club");
            ResultSet rs=ps.executeQuery();
            while(rs.next()){
                Club u=new Club();
                u.setPk_club(rs.getInt("pk_club"));
                u.setClub_nom(rs.getString("club_nom"));
                u.setClub_type(rs.getString("club_type"));
                list.add(u);
            }
        }catch(Exception e){System.out.println(e);}
        return list;
    }
    public static Club getRecordById(int pk_club){
        Club u=null;
        try{
            Connection con=getConnection();
            PreparedStatement ps=con.prepareStatement("select * from club where pk_club=?");
            ps.setInt(1,pk_club);
            ResultSet rs=ps.executeQuery();
            while(rs.next()){
                u=new Club();
                u.setPk_club(rs.getInt("pk_club"));
                u.setClub_nom(rs.getString("club_nom"));
                u.setClub_type(rs.getString("club_type"));
            }
        }catch(Exception e){System.out.println(e);}
        return u;
    }
}