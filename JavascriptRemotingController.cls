global with sharing class JavascriptRemotingController {
   
	@RemoteAction
    global Static Account AccountName(String fname) // parameter passed form the VF page.
    {
        System.debug('account method in controller');
        Account acc = new Account(); // create an object for Account
        acc.name = fname; //assign the account name to fname(parameter)
       
       // TRY-CATCH for the exeption handling
        try {
            insert acc; // inserting the object to the org, saving the record on the org.
            return acc; // return statement due to method of type Account.
        } catch (Exception exp)
         {
            System.debug('Error:' + exp);
            return null; 
            
        }

    }
}