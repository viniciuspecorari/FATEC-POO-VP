
package model;

public class Data {
    private int dia;
    private int mes;
    private int ano;

    //construtor
    public Data(){
        dia = 1;
        mes = 1;
        ano = 2000;
    }
       
    //sobrecarga no construtor
    public Data(int dia, int mes, int ano){
        this.setData(dia, mes, ano);
    }
    
    public String getData(){
        String data = "";
        if(dia < 10) data += "0";
        data += dia+"/";
        if(mes < 10) data += "0";
        data += mes+"/";
        data+=ano;
        
        return dia + "/" + mes + "/" + ano;
    }  
    
     public void setData(int dia, int mes, int ano){
        this.setDia(dia);
        this.setMes(mes);
        this.setAno(ano);
    }
    
    //GEETER AND SEETER
    public int getDia() {
        return dia;
    }

    public void setDia(int dia) {
      
        if(dia<1) this.dia = 1;
        else if(dia > 31) this.dia = 31;
        else this.dia = dia;
    }

    public void setMes(int mes){
        if(mes < 1) this.mes = 1;
        else if(mes > 12) this.mes = 12;
        else this.mes = mes;
    }
           
    public int getAno() {
        return ano;
    }

    public void setAno(int ano) {
        this.ano = ano;
    }    
}
