public class CandidateVFController {
    
    
 
    
    public Candidate_Yourname__c candidate{get;set;}
    
    public List<Candidate_Yourname__c> getCandidateList(){
        return[SELECT First_Name__c,Last_Name__c,Email__c,Country__c,State__c,Status__c,Job_Yournames__c FROM Candidate_Yourname__c];
    }



}