/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;
import java.util.ArrayList;

/**
 *
 * @author Desenvolvedor
 */
public class Base {
   private static ArrayList<Contato> contatoList;
   public static ArrayList<Contato> getContatoList(){
         if(contatoList == null){
            contatoList = new ArrayList <>();
            contatoList.add(new Contato ("Vinicius", "19", new Data(1,1,2001)));
        }
         return contatoList;
   }
  
}
