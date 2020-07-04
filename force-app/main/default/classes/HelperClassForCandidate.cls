public class HelperClassForCandidate {
    public static void beforeInsert(List<Candidate_Yourname__c> can)
    {
            for(Candidate_Yourname__c c:can)
            {
        if(c.Expected_Salary__c==NULL){
            c.addError('Expected Salary field is missing');
        }
            }
                
                for(Candidate_Yourname__c c:can){
             
                c.Application_Date__c=system.today()+1;
             }   
        
    }
    }