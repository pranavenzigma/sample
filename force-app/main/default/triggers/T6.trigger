trigger T6 on Job_Yourname__c (after update)
{

for(Job_Yourname__c  c:trigger.new)
{
if(c.Number_of_Positions__c>c.Hired_Applicants__c && c.Active__c==false)
{
c.Active__c=true;
}
}
}