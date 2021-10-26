/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author Desenvolvedor
 */
public class horario {
    
   private int hora;
   private int minuto;
   private int segundos;

   
   public horario(int hora, int minuto, int segundo){
       this.setHorario(hora, minuto, segundo);
   }
   
   public void setHorario(int hora, int minuto, int segundo){
       this.setHora(hora);
       this.setMinuto(minuto);
       this.setSegundos(segundo);
   }
   
   public String getHorario(){      
       return hora + ":" + minuto + ":" + segundos;
   }
   
   
    public int getHora() {
        return hora;
    }

    public void setHora(int hora) {
        this.hora = hora;
    }

    public int getMinuto() {
        return minuto;
    }

    public void setMinuto(int minuto) {
        this.minuto = minuto;
    }

    public int getSegundos() {
        return segundos;
    }

    public void setSegundos(int segundos) {
        this.segundos = segundos;
    }
    
    
    
}
