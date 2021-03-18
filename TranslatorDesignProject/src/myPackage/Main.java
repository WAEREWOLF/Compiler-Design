/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package myPackage;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
/**
 *
 * @author Anghel Paul
 */
public class Main {

    /**
     * @param args the command line arguments
     */
    public static void generateLexer(String path1, String path2, String[] pathS) throws IOException, Exception{
        File file = new File(path1);
        JFlex.Main.generate(file);
        file = new File(path2);
        JFlex.Main.generate(file);
        java_cup.Main.main(pathS);
        
        Path pathSym = Paths.get("D:/FACULTATE AUTOMATICA/ANI de studiu/ANUL 4/TranslatorDesignProject/src/myPackage/sym.java");
        if (Files.exists(pathSym)) {
            Files.delete(pathSym);
        }
        Files.move(
                Paths.get("D:/FACULTATE AUTOMATICA/ANI de studiu/ANUL 4/TranslatorDesignProject/sym.java"), 
                Paths.get("D:/FACULTATE AUTOMATICA/ANI de studiu/ANUL 4/TranslatorDesignProject/src/myPackage/sym.java")
        );
        Path pathSin = Paths.get("D:/FACULTATE AUTOMATICA/ANI de studiu/ANUL 4/TranslatorDesignProject/src/myPackage/Sintax.java");
        if (Files.exists(pathSin)) {
            Files.delete(pathSin);
        }
        Files.move(
                Paths.get("D:/FACULTATE AUTOMATICA/ANI de studiu/ANUL 4/TranslatorDesignProject/Sintax.java"), 
                Paths.get("D:/FACULTATE AUTOMATICA/ANI de studiu/ANUL 4/TranslatorDesignProject/src/myPackage/Sintax.java")
        );
    
    }
    
    public static void main(String[] args) throws Exception{
        String path1 = "D:/FACULTATE AUTOMATICA/ANI de studiu/ANUL 4/TranslatorDesignProject/src/myPackage/Lexer.flex";
        String path2 = "D:/FACULTATE AUTOMATICA/ANI de studiu/ANUL 4/TranslatorDesignProject/src/myPackage/LexerCup.flex";
        String[] pathS = {"-parser", "Sintax", "D:/FACULTATE AUTOMATICA/ANI de studiu/ANUL 4/TranslatorDesignProject/src/myPackage/Sintax.cup"};
        generateLexer(path1, path2, pathS);
    }
   

}
