/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author AMELIA ULFA
 */
public class TestCasting {
    public static void main(String[] args) {

        Pengguna p = new Siswa("Ahmad Fauzi");

        if (p instanceof Siswa) {
            Siswa s = (Siswa) p;
            s.tampilInfo();
        }
    }
}
