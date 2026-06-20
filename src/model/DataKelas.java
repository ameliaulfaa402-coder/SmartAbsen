/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author AMELIA ULFA
 */
public class DataKelas {
    private int idKelas;
    private String namaKelas;

    public int getIdKelas() {
        return idKelas;
    }

    public void setIdKelas(int idKelas) {
        this.idKelas = idKelas;
    }

    public String getNamaKelas() {
        return namaKelas;
    }

    public void setNamaKelas(String namaKelas) {
        this.namaKelas = namaKelas;
    }
    
    public void info() {
        System.out.println("Informasi Kelas");
    }

    public void info(String namaKelas) {
        System.out.println("Nama Kelas: " + namaKelas);
    }
}
