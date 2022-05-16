public with sharing class ContactListController {
    public ContactListController() {


    }
    @AuraEnabled(cacheable=true)
    public static List<Contact>  getContacts(){
    return [SELECT id, firstname,lastname FROM Contact];   

    }
}