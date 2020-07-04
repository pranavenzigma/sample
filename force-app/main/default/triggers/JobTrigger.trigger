trigger JobTrigger on Job_Yourname__c (before delete,after insert,after update) {
    if(Trigger.isbefore && Trigger.isdelete)
       {      
         HelperClassForJob.beforeDelete(Trigger.old);
    }
        
   if(Trigger.isafter && Trigger.isupdate)
      {         
         HelperClassForJob.afterUpdate();
     }
     
   if(Trigger.isafter && Trigger.isinsert)
        {
            HelperClassForJob.afterUpdate();
            HelperClassForJob.afterInsert(Trigger.new);
         }

    
        
 }