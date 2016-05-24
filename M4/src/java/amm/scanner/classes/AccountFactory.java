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
public class AccountFactory {
    
    private static AccountFactory singleton;
    private static String connectionString;

    public static AccountFactory getInstance() {
        if (singleton == null) {
            singleton = new AccountFactory();
        }
        return singleton;
    }
    
    private AccountFactory() {

    }
    
    public void setConnectionString(String s){
	this.connectionString = s;
    }
    
    public String getConnectionString(){
	return this.connectionString;
    }
    
    public ArrayList<Account> getAccountList() {
    
        ArrayList<Account> accountList = new ArrayList<Account>();
        
        Account account_1 = new Account(0, 5879.79);
        accountList.add(account_1);
        Account account_2 = new Account(1, 3863.00);
        accountList.add(account_2);
        Account account_3 = new Account(2, 652.50);
        accountList.add(account_3);
        Account account_4 = new Account(3, 152.60);
        accountList.add(account_4);
        
        return accountList;
    }
    
    public Account getAccountById(int id){
        ArrayList<Account> accountList = this.getAccountList();
        for(Account account : accountList){
            if(account.getUserId() == id){
                return account;
            }
        }
        return null;
    }
}
