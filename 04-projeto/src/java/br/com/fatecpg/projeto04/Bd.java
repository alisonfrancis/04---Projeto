/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.fatecpg.projeto04;

import java.util.ArrayList;

/**
 *
 * cria um arraylist para cliente e outro para fornecedor.
 */
public class Bd {
    private static ArrayList<Clientes> Cliente = new ArrayList <>();
    
    public static ArrayList<Clientes> getCliente(){
        return Cliente;
    }
}
