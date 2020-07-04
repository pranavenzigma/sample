trigger T1B on Candidate_Yourname__c (before insert) {
for(Candidate_Yourname__c  c:trigger.new)
{
if(c.Status__c=='false')
{
c.addError(' Hey Tis job is not active');
}
}

}