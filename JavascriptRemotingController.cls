public inherited sharing class JavascriptRemotingController {
    public JavascriptRemotingController() {

    }
    public static void creatRecord(String fname, String lname, String eml)
    {
        System.debug('creatRecord');
        List<Contact> contactList = new List<Contact>();
        for (Contact inputContact : contactList) {
            contact con = new contact();
            con.FirstName = fname;
            con.LastName = lname; 
            con.Email = eml;
            contactList.add(con);
            
        }
        
        insert contactList;


       


    }
}