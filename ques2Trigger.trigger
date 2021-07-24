trigger ques2Trigger on Opportunity (before insert) {
    if(trigger.isBefore){
        if(trigger.isInsert){
           ques2TriggerHelper.methodForCheckOpp(trigger.new);
        }
    }
    else if(trigger.isAfter){
        if(trigger.isInsert){
           
            System.debug('After Insert');
        }
    }

}