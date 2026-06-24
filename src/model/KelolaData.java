/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author AMELIA ULFA
 */
public interface KelolaData {
    void simpan();
    void ubah();
    void hapus();

    default void info() {
        System.out.println("Kelola Data SmartAbsen");
    }

    static void aplikasi() {
        System.out.println("SmartAbsen");
    }
    
}
