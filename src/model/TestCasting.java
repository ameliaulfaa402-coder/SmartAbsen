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

        Pengguna p = new Admin("Ahmad Fauzi");

        if (p instanceof Admin) {
            Admin s = (Admin) p;
            s.tampilInfo();
        }
    }
}
