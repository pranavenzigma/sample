public class JobCustumController {
   
    public Job_Yourname__c job {get;private set;}
    
    public JobCustumController(){
        Id id=ApexPages.currentPage().getParameters().get('id');
        job = (id==null)?new Job_Yourname__c():
        [SELECT job_Description__c,Number_of_Positions__c,Required_Skills__c,Salary_Offered__c,Total_Applicants__c,Name__c,Manager__c,Job_Type__c,Hired_Applicants__c,Expires_On__c,Active__c ,Qualification_Required__c,Certification_Required__c FROM Job_Yourname__c where Id=:id ];
     }
    
    public PageReference save() {
        try{
            upsert(job);
        }catch(System.DmlException e){
            ApexPages.addMessages(e);
            return null;
        }
        PageReference redirectSuccess = new ApexPages.StandardController(job).view();
        return (redirectSuccess);
            
        }
    
    
    
    
}