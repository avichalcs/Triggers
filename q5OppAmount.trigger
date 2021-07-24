trigger q5OppAmount on Opportunity (before insert) {
    if(trigger.isBefore){
        if(trigger.isInsert){
            ques2TriggerHelper.q5OppAmount(trigger.new);
            
          
        }
    }
    else if(trigger.isAfter){
        if(trigger.isInsert){
            System.debug('After Insert');
            
        }
    }

}