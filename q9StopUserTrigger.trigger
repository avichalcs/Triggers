trigger q9StopUserTrigger on Opportunity (before insert) {
    if(trigger.isBefore){
        if(trigger.isInsert){
           ques2TriggerHelper.q9StopUserTrigger(trigger.new);
        }
    }
    else if(trigger.isAfter){
        if(trigger.isInsert){
           
            System.debug('After Insert');
        }
    }

}