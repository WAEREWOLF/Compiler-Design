/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package myPackage;

import javax.swing.JTextArea;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

/**
 *
 * @author ANGHEL PAUL
 */
public class DomParser { 
  

  public void printNode(NodeList nodeList, JTextArea outputBox) {

    for (int count = 0; count < nodeList.getLength(); count++) {

    Node tempNode = (Node) nodeList.item(count);

    // make sure it's element node.
    if (tempNode.getNodeType() == Node.ELEMENT_NODE) {

        // get node name and value
        outputBox.append("\nNode Name = " + tempNode.getNodeName() + " [OPEN]");
        outputBox.append("\n    Node Value = " + tempNode.getTextContent());
        
                
        if (tempNode.hasAttributes()) {

            // get attributes names and values
            NamedNodeMap nodeMap = tempNode.getAttributes();

            for (int i = 0; i < nodeMap.getLength(); i++) {

                Node node = nodeMap.item(i);
                outputBox.append("\n    attr name : " + node.getNodeName());
                outputBox.append("\n    attr value : " + node.getNodeValue());

            }
        }

        if (tempNode.hasChildNodes()) {

            // loop again if has child nodes
            printNode(tempNode.getChildNodes(), outputBox);

        }

        outputBox.append("\nNode Name = " + tempNode.getNodeName() + " [CLOSE]");

    }

    }
  }  
}
