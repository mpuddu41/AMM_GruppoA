/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package amm.scanner.classes;

import java.util.ArrayList;

/**
 *
 * @author mauro
 */
public class ItemFactory {
    
    private static ItemFactory singleton;

    public static ItemFactory getInstance() {
        if (singleton == null) {
            singleton = new ItemFactory();
        }
        return singleton;
    }
    
    private ItemFactory() {

    }
    
    public ArrayList<Item> getItemList() {
    
        ArrayList<Item> itemList = new ArrayList<Item>();
        
        Item item_1 = new Item( 0, 0, "CANON P-215II - Scanner Portatile", 239.99, 12, "Scanner ad alta definizione", "img/canonp215.jpg");
        itemList.add(item_1);
        Item item_2 = new Item( 1, 0, "ION Scanner Pics 2SD", 140.09, 5, "Scanner ad alta definizione", "img/ionscanner.jpg");
        itemList.add(item_2);
        Item item_3 = new Item( 2, 0, "REFLECTA x8-Scan - Scanner per pellicole (35 mm) e diapositive", 290.09, 3, "Scanner ad alta definizione", "img/must.jpg");
        itemList.add(item_3);
        Item item_4 = new Item( 3, 1, "PLUSTEK OpticSlim 1180 - Scanner piano A3", 410.09, 1, "Scanner ad alta definizione", "img/plustek.jpg");
        itemList.add(item_4);
        Item item_5 = new Item( 4, 1, "MUST Scanner ScanExpress A4 USB 2400 Pro", 200.09, 4, "Scanner ad alta definizione", "img/reflectax8.jpg");
        itemList.add(item_5);      
        
        return itemList;
    }
    
    public Item getItemById(int id){
        ArrayList<Item> itemList = this.getItemList();
        for(Item item : itemList){
            if(item.getId() == id){
                return item;
            }
        }
        return null;
    }

    
    public ArrayList<Item> getItemByPriceRange(double minPrice, double maxPrice){
        ArrayList<Item> itemList = this.getItemList();
        ArrayList<Item> itemListByPrice = new ArrayList<Item>();
        for(Item item : itemList){
            if(item.getPrice() >= minPrice && item.getPrice() <= maxPrice){
                itemListByPrice.add(item);
            }
        }
        return itemListByPrice;
    }
}

