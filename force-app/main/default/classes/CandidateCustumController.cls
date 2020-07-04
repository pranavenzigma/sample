public class CandidateCustumController {
    
     public Candidate_Yourname__c candidate {get;private set;}
    
    public CandidateCustumController(){
        Id id=ApexPages.currentPage().getParameters().get('id');
        candidate = (id==null)?new Candidate_Yourname__c():
        [SELECT Salutation__c,First_Name__c,Last_Name__c,Date_of_Birth__c,Email__c,Expected_Salary__c,Application_Date__c,Country__c,State__c,Status__c,Job_Yournames__c FROM Candidate_Yourname__c where Id=:id];
     }
    
    public PageReference save() {
        try{
            upsert(candidate);
        }catch(System.DmlException e){
            ApexPages.addMessages(e);
            return null;
        }
        PageReference redirectSuccess = new ApexPages.StandardController(candidate).view();
        return (redirectSuccess);
            
        }
        
    }