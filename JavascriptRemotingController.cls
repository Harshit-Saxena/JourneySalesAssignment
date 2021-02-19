global with sharing class JavascriptRemotingController {
   
	@RemoteAction
    global Static Account AccountName(String fname)
    {
        System.debug('account method in controller');
        Account acc = new Account();
        acc.name = fname;
       
        try {
            insert acc;
            return acc;
        } catch (Exception exp) {
            System.debug('Error:' + exp);
            return null; 
            
        }

    }
}