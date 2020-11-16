
package utils;

import java.util.Calendar;
import java.sql.Date;

public class ConversorData {
    
   public static java.sql.Date conv(Calendar d){
       java.sql.Date data = new java.sql.Date(d.getTime().getTime());
       return data;
    } 
  
   public static Calendar conv(Date d ){
       
       Calendar c = null  ;
       
       return c;
   }

   
}

    

    