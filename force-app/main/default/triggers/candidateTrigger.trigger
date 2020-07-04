trigger candidateTrigger on Candidate_Yourname__c (before insert) {
    if( activateTrigger__c.getInstance().activateTriggerTask__c ){
        if(Trigger.isbefore && Trigger.isinsert)
        {
         
        HelperClassForCandidate.beforeInsert(Trigger.new);
          
            
        }
      }    
      
    }