/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package koneksi;
import java.sql.*;

/**
 *
 * @author sheilajavana
 */
public class koneksi {
    private Connection koneksi;
    public Connection connect(){
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            System.out.println("Berhasil Terkoneksi");
        }
        catch(ClassNotFoundException ex){
            System.out.println("Gagal Terkoneksi"+ex);
        }
        String url = "jdbc:mysql://localhost/penjualan";
        try{
            koneksi = DriverManager.getConnection(url,"root","root");
            System.out.println("Berhasil Terkoneksi ke Database");
        }
        catch(SQLException ex){
            System.out.println("Gagal Terkoneksi ke Database"+ex);
        }
        return koneksi;
    }
}
