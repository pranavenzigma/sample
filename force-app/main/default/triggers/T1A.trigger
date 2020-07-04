trigger T1A on Candidate_Yourname__c (before Insert) {

for(Candidate_Yourname__c c:trigger.new)
{
if(c.Expected_Salary__c==null)
{
 c.addError('Expected salary field is missing');
}
}
}