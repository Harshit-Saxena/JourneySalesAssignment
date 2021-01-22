trigger CategoryValueCheck on Demo_Object__c (before insert,before update) 
{
	Demo_Object__c demoObject = new Demo_Object__c();
    LIST<Demo_Object__c> demoList = 
        [select id,name,Opportunity__r.name ,category__c 
         From Demo_Object__c];
// now let's loop it throught 
		LIST<Opportunity> lsNewOpportunities = new LIST<Opportunity>();
for( Demo_Object__c newRecod : Trigger.new)
{
    if(demoObject.category__c == demoObject.Opportunity__r.name)
    {
        
        Opportunity opp = new Opportunity();
        opp.Name =  'trigger opportunity' ; 
        opp.CloseDate =   Date.today().addDays(7);  
        opp.StageName = 'prospecting';
            lsNewOpportunities.add(opp);

    }
}
    insert lsNewOpportunities;


}