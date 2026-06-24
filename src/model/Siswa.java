/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author AMELIA ULFA
 */
public class Siswa extends Pengguna {
    public Siswa(String username) {
        super(username);
    }

    @Override
    public void tampilInfo() {
        System.out.println("Data Siswa: " + username);
    }
}
