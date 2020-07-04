public class JobCustumControllerApex {
    
    public Job_Yourname__c job{get;set;}
    
    public List<Job_Yourname__c> getDetail(){
        return[SELECT Number_of_Positions__c,Required_Skills__c,Salary_Offered__c,Name__c,Manager__c,Job_Type__c,Expires_On__c,Active__c,Qualification_Required__c,Certification_Required__c  FROM Job_Yourname__c ];
    }

}