/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.actions;

import com.mycompany.model.Persona;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.logging.log4j.*;

/**
 *
 * @author grenn
 */
public class PersonasAction extends ActionSupport {
    Logger log = LogManager.getLogger(PersonasAction.class);
    
    private Persona persona;

    @Override
    public String execute(){//Metodo que valida si el objeto persona es nulo o no e imprime en consola el resultado
        if (this.persona != null) {//Si es diferente de nulo
            log.info("\n ");
            log.info("persona: " + persona);
        }else{//Si es nulo 
            log.info("Persona con valor nulo");            
        }
        return SUCCESS;
    }

    public Persona getPersona() {
        return persona;
    }

    public void setPersona(Persona persona) {
        this.persona = persona;
    }
    
    
    
    
    
    
}
