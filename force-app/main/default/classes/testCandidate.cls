@isTest
public class testCandidate {
    static testMethod void myTest()
    {
     Candidate_Yourname__c c=new  Candidate_Yourname__c();
   c.Name = 'pranav007';
   c.First_Name__c = 'pranav';
   c.Last_Name__c = 'naik';
   c.Status__c = 'Hired' ;
   c.Job_Yournames__c = 'a012x00000ADqY5';
  
  
        
   Test.startTest();
 c.Expected_Salary__c = 12000;
        insert c;
 

   Test.stopTest();
       // date d=
       
        
  List<Candidate_Yourname__c> listc = [SELECT Name,First_Name__c,Last_Name__c,Status__c,Job_Yournames__c,Expected_Salary__c,Application_Date__c from Candidate_Yourname__c where Job_Yournames__c='a012x00000ADqY5'];

        System.assertEquals(12000, c.Expected_Salary__c);
        System.assertEquals(system.today()+1,listc[0].Application_Date__c);
       
    }
    }