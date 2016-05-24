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
public class UserFactory {
    
    private static UserFactory singleton;
    private static String connectionString;
    
    public static UserFactory getInstance() {
        if (singleton == null) {
            singleton = new UserFactory();
        }
        return singleton;
    }
    
    private UserFactory() {

    }
    
    
    public void setConnectionString(String s){
	this.connectionString = s;
    }
    
    public String getConnectionString(){
	return this.connectionString;
    }
    
    
    public ArrayList<User> getUserList(){
        
        ArrayList<User> userList = new ArrayList<User>();
        
        // Vendor_1
        Vendor vendor_1 = new Vendor();
        vendor_1.setId(0);
        vendor_1.setFname("Mauro");
        vendor_1.setLname("Puddu");
        vendor_1.setUsername("maurop");
        vendor_1.setPassword("studente");
        userList.add(vendor_1);
        
        // Vendor_2
        Vendor vendor_2 = new Vendor();
        vendor_2.setId(1);
        vendor_2.setFname("Ken");
        vendor_2.setLname("Follet");
        vendor_2.setUsername("kenf");
        vendor_2.setPassword("scrittore");
        userList.add(vendor_2);
        
        Buyer buyer_1 = new Buyer();
        buyer_1.setId(2);
        buyer_1.setFname("Gianni");
        buyer_1.setLname("Morandi");
        buyer_1.setUsername("giannim");
        buyer_1.setPassword("cantante");
        userList.add(buyer_1);
        
        // Buyer_2
        Buyer buyer_2 = new Buyer();
        buyer_2.setId(3);
        buyer_2.setFname("Roberto");
        buyer_2.setLname("Benigni");
        buyer_2.setUsername("robertob");
        buyer_2.setPassword("attore");
        userList.add(buyer_2);
        
        return userList;
    }
    
    public User getUserById(int id){
        ArrayList<User> userList = this.getUserList();
        for(User user : userList){
            if(user.getId() == id){
                return user;
            }
        }
        return null;
    }
    
}
