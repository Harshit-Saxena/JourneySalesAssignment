trigger CategoryValueCheck on Demo_Object__c (before insert,before update ) 
{
	Demo_Object__c demoObject = new Demo_Object__c();
    
   Map<Demo_Object__c, Opportunity> mappingofDemoToOpportunities = new Map<Demo_Object__c, Opportunity>(); // let's take a map of key- dmeo object and value - Opportunities
    for(Demo_Object__c demoMap : Trigger.new)
    {
        if(demoMap.Category__c == 'opportunity')
        { // adding new record with static code (hardcording the values of the newly created opportunity)
             Opportunity newOppForDemo = new Opportunity(Name =  'Demo opporutuntiy' , CloseDate = Date.today().addDays(7) , Stagename = 'prospecting'); 
            mappingofDemoToOpportunities.put(demoMap, newOppForDemo); 
        }
    }
    // inserting the values of the map 
insert mappingofDemoToOpportunities.values(); 
for(Demo_Object__c demoMap : Trigger.new)
{
    Opportunity mappingofDemoToOpportunities = mappingofDemoToOpportunities.get(demoMap); // getting the values from the map 
    // chacking if there is no opporutnity entered then then there is no change in flow of the code.
    if(mappingofDemoToOpportunities == null)
    {
        continue; // do what are you instructed to do . 
    }
    demoMap.Opportunity__c = mappingofDemoToOpportunities.Id; // we can only get the Opportunity with Id only. 
}
}