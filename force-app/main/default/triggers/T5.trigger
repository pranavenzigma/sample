trigger T5 on Job_Yourname__c (after insert, after update)
 {
 Job_Yourname__c  job=Trigger.New[0];

 if(job.Number_of_Positions__c==job.Hired_Applicants__c)
 {
EmailManager.sendMail('pranavsnaik@gmail.com','No Job Position left','all required candidate has been hire for this job'+job.LastModifiedById );
 
 
 }

}