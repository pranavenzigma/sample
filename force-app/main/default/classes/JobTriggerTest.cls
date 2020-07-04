@isTest
public class JobTriggerTest
{ 
   

    @isTest
    public static void insert_Job()
    {
        Job_Yourname__c job=new Job_Yourname__c();
       
        job.Number_of_Positions__c=5;
        job.Job_Type__c='Manager';
        job.Required_Skills__c='Team Player';
        job.Qualification_Required__c='Bcom';
        job.Certification_Required__c='SAS';
        job.Active__c=true;
        job.Expires_On__c=system.today();   
        job.Manager__c='0032x0000063lyc';
     
       
        test.startTest();
        insert job;
       
         
                                job.Number_of_Positions__c=9;
                                update job;
                                test.stopTest();
       
        List<Job_Yourname__c> joblst=[select Name from Job_Yourname__c where Manager__c=:'0032x0000063lyc'];
        system.assertEquals(1, joblst.size());
        system.assertEquals(true, job.Active__c);
    }

}