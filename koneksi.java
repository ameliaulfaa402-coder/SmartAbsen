/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package koneksi;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import javax.swing.JOptionPane;

/**
 *
 * @author AMELIA ULFA
 */
public class koneksi {
    private static Connection conn;

    public static Connection getKoneksi() {
        try {
            if (conn == null || conn.isClosed()) {

                String url = "jdbc:mysql://localhost:3306/smartabsen";
                String user = "root";
                String password = "";

                conn = DriverManager.getConnection(url, user, password);

                System.out.println("Koneksi berhasil");
            }
        } catch (SQLException e) {
            JOptionPane.showMessageDialog(null,
                    "Koneksi gagal : " + e.getMessage());
        }

        return conn;
    }
}

