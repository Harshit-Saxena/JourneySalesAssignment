public class opportunityList 
{   
    public String searchName{get;set;}  // string that will be searched in the search box.
    List<Opportunity> searchResults; // List will save all the search results.
    public String Name {get;set;} 
    Public String Stage {get;set;}
    public String CloseDate {get;set;}
    //public String Opp {get;set;}  get and set the list of all the opportunity
   public list <opportunity> oppList ; // To save all the records in opportunity

   public List<Opportunity> getOpp()
    {
          List<Opportunity> oppList = new List<Opportunity>();
          for (Opportunity fetchOpp : [SELECT id,name,CloseDate,StageName FROM opportunity order by CloseDate DESC])
           {
              oppList.add(fetchOpp);
          }
          
            return oppList; 

    }  
    public string getssearchName(){
        return searchName;
    }
    public List<Opportunity> getsearchResults()
    {
        return searchResults;
    }
    public void setsearchName(String keyword) // this is the method to pass the parameter to the get method
    {
        searchName = keyword;
        System.debug('search');
        System.debug(keyword);

    }
             

    public Pagereference search() // In this we have used sosl to search by name (given string)
    {
        searchResults =( List<Opportunity>) [FIND :searchName IN ALL FIELDS RETURNING Opportunity(Name,StageName,CloseDate)][0];
         System.debug(searchResults);
        return null; 
        
          
    }
   
}