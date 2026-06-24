/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author AMELIA ULFA
 */
public class Pengguna {
    protected String username;

    public Pengguna(String username) {
        this.username = username;
    }

    public void tampilInfo() {
        System.out.println("Username: " + username);
    }
}
