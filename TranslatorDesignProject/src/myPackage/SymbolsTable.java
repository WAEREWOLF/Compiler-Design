/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package myPackage;

import java.util.HashMap;

/**
 *
 * @author ANGHEL PAUL
 */
public class SymbolsTable {
     
    public HashMap<String, Integer> symEntryHM = new HashMap<String, Integer>();
    
    public SymbolsTable(){          
    }
    
    public void addSymbolsToTable(String tagName){
        
       symEntryHM.put(tagName, symEntryHM.getOrDefault(tagName, 0) + 1);
        
    }
    
    public void printSymbolsTable(){
        System.out.println("*** Symbols Table ***\n");
        symEntryHM.keySet().forEach((tagName) -> {
            System.out.println("Tag name: " + tagName + " Count: " + symEntryHM.getOrDefault(tagName, 0));
        });
    }
    
}
