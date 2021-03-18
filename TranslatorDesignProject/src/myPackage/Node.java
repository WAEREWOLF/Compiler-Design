/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package myPackage;

import java.util.ArrayList;

/**
 *
 * @author ANGHEL PAUL
 */
public class Node {       
    public String data;
    public String type;
    private ArrayList<Node> children = new ArrayList<Node>();
    
    public Node(String type, String data) {        
        this.data = data;
        this.type = type;
    }
    
    public static Node createNode(String data){
        Node node = new Node("", data);        
        return node;
    } 
    
    public static Node createNode(String type, String data){
        Node node = new Node(type, data);        
        return node;
    }
    
    public void addLink(Node child) {
        if (child != null){
            children.add(child);
        }        
    }
    
    public void printAst(int level) {
        
        for (int index = 0; index < level; ++index) {
            System.out.print(" ");           
            
            if (type != null) {
                System.out.print(" - " + type);
            }

            if (children.size() > 0) {
                System.out.print(" [" + children.size() + "]\n");
            }
            for (Node node : children) {
                node.printAst(level + 1);
            }                
        }
    }
    
    
    // Syntax metods
    
    public static Node createHtmlNode(Node htmlContent){
        Node htmlNode = createNode("Html node", "");
        
        if (htmlNode != null){
            htmlNode.children.add(htmlContent);            
        }
        
        return htmlNode;
    }
    
    public static Node createHtmlContentNode(Node body, Node head){
        Node htmlContentNode = createNode("Html_Content node");
        
        if (htmlContentNode != null){
            htmlContentNode.children.add(body);
            htmlContentNode.children.add(head);
        }
        
        return htmlContentNode;
    }
    
    // remove parameter
    public static Node createHeadNode(String value){
        Node headNode = createNode("Head node", value);
        
        if (headNode != null && value != null){
            headNode.data = value;            
        }
        
        return headNode;
    }
    
     public static Node createBodyContentNode(Node area, Node hr, Node del, Node address){
        Node bodyNode = createNode("Body node");
        
        if (bodyNode != null){
            bodyNode.children.add(address);
            bodyNode.children.add(area);
            bodyNode.children.add(del);
            bodyNode.children.add(del);
        }
        
        return bodyNode;
    }
     
    public static Node createBodyNode(Node bodyContent){
        Node bodyNode = createNode("Body node", "");
        
        if (bodyNode != null){
            bodyNode.children.add(bodyContent);            
        }
        
        return bodyNode;
    }
    // 
    public static Node createBodyContentList(Node bodyContent){
        Node contentList = new Node("bodyContentList", "");
        
        if(bodyContent != null){
            contentList.addLink(bodyContent);
        }
        
        return contentList;
    }
    // ??
    public static Node addToBodyContentList(Node list, Node bodyContent){
        
        if (bodyContent != null){
            list.addLink(bodyContent);
        }
        return list;
    }
    
    public static Node createBodyAttrList(Node bodyAttr){
        Node bodyAttrList = new Node("Body Attribute list", "");
        
        if(bodyAttr != null){
            bodyAttrList.addLink(bodyAttr);
        }
        
        return bodyAttrList;
    }
     
    public static Node createAreaNode(String value){
        Node areaNode = createNode("Area node", "");
        
        if (areaNode != null && value != null){
            areaNode.data = value;            
        }
        
        return areaNode;
    }
    
    public static Node createHrNode(String value){
        Node hrNode = createNode("Hr node", "");
        
        if (hrNode != null && value != null){
            hrNode.data = value;            
        }
        
        return hrNode;
    }
    
    public static Node createHrAreaNode(Node hrNode, Node areaNode){
        Node listNode = createNode("Hr & Area", "");
        
        
        if (hrNode != null && areaNode != null){
            listNode.children.add(hrNode);
            listNode.children.add(areaNode);
        }
        
        return listNode;
    }
       
    // Nodes
    
    public static Node createDelNode(String value){
        Node delNode = createNode("Del node", "");
        
        if (delNode != null && value != null){
            delNode.data = value;            
        }
        
        return delNode;
    }
    
    public static Node createAddressNode(String value){
        Node addressNode = createNode("Address node", "");
        
        if (addressNode != null && value != null){
            addressNode.data = value;            
        }
        
        return addressNode;
    }
    
    // Attributes
    public static Node createAlignAttr(String value){
        Node alignAttr = createNode("Align attribute", "");
        
        if (alignAttr != null && value != null){
            alignAttr.data = value;            
        }
        
        return alignAttr;
    }
    
    public static Node createSizeAttr(String value){
        Node sizeAttr = createNode("Size attribute", "");
        
        if (sizeAttr != null && value != null){
            sizeAttr.data = value;            
        }
        
        return sizeAttr;
    }
    
    public static Node createWidthAttr(String value){
        Node widthAttr = createNode("Width attribute", "");
        
        if (widthAttr != null && value != null){
            widthAttr.data = value;            
        }
        
        return widthAttr;
    }
    
    public static Node createBgcolorAttr(String value){
        Node bgColorAttr = createNode("Bgcolor attribute", "");
        
        if (bgColorAttr != null && value != null){
            bgColorAttr.data = value;            
        }
        
        return bgColorAttr;
    }
    
    public static Node createBackgroundAttr(String value){
        Node backgroundAttr = createNode("Background attribute", "");
        
        if (backgroundAttr != null && value != null){
            backgroundAttr.data = value;            
        }
        
        return backgroundAttr;
    }
    
    public static Node createTextAttr(String value){
        Node textAttr = createNode("Text attribute", "");
        
        if (textAttr != null && value != null){
            textAttr.data = value;            
        }
        
        return textAttr;
    }
    
    public static Node createLinkAttr(String value){
        Node linkAttr = createNode("Link attribute", "");
        
        if (linkAttr != null && value != null){
            linkAttr.data = value;            
        }
        
        return linkAttr;
    }
    
    public static Node createVlinkAttr(String value){
        Node vlinkAttr = createNode("Vlink attribute", "");
        
        if (vlinkAttr != null && value != null){
            vlinkAttr.data = value;            
        }
        
        return vlinkAttr;
    }
    
    public static Node createAlinkAttr(String value){
        Node alinkAttr = createNode("Alink attribute", "");
        
        if (alinkAttr != null && value != null){
            alinkAttr.data = value;            
        }
        
        return alinkAttr;
    }
}
