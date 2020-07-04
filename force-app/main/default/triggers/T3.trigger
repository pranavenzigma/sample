trigger T3 on Job_Yourname__c (before delete) {
for(Job_Yourname__c c:trigger.old)
{
if(c.Active__c==true)
{
c.addError('This job is active and cannot be deleted');
}
}

}