public class HelperClassForJob {
    //before Insert
    public static void afterInsert(List<Job_Yourname__c> can )
    {
        for(Job_Yourname__c  job:can)
        {
        if(job.Number_of_Positions__c==job.Hired_Applicants__c)
      {
        EmailManager.sendMail('pranavsnaik@gmail.com','No Job Position left','all required candidate has been hire for this job'+job.LastModifiedById );
      }  
        }
    }
    
    
    //beforeDelete
     public static void beforeDelete(List<Job_Yourname__c> job)
    {
        for(Job_Yourname__c j:job){
           if(j.Active__c==true)
          {
            j.addError('This Job is active and can not be deleted');
          }
       }  
    }
    
    //
    public static void afterUpdate()
    {
        List<Job_Yourname__c> jobs=new List<Job_Yourname__c>();
    for(Job_Yourname__c j:[SELECT Number_of_Positions__c,Hired_Applicants__c,Active__c FROM Job_Yourname__c WHERE Active__c !=true]){
        if(j.Hired_Applicants__c < j.Number_of_Positions__c){
            j.Active__c=true;
            jobs.add(j);
        }
    }
   if(jobs.size()>0){
        update jobs;
    }    
         
            List<Job_Yourname__c> job=new List<Job_Yourname__c>();
               for(Job_Yourname__c j:[SELECT Number_of_Positions__c,Hired_Applicants__c,Active__c FROM Job_Yourname__c WHERE Active__c =true]){
                 if(j.Hired_Applicants__c==j.Number_of_Positions__c){
                    j.Active__c=false;
                   job.add(j);
                 }
         }
           if(job.size()>0){
                 update job;
                        }
    }
    
    

}