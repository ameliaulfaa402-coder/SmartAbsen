/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package koneksi;
import java.sql.Connection;

/**
 *
 * @author AMELIA ULFA
 */
public class TesKoneksi {
    public static void main(String[] args) {

        Connection conn = koneksi.getKoneksi();

        if (conn != null) {
            System.out.println("Database SmartAbsen berhasil terhubung!");
        } else {
            System.out.println("Database gagal terhubung!");
        }
    }
}
