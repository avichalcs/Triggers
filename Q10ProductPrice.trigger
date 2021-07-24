trigger Q10ProductPrice on OpportunityLineItem (before insert) {
    if(trigger.isBefore){
        if(trigger.isInsert){
           ques2TriggerHelper.q10OpportunityProductPrice(trigger.new);
        }
    }
    else if(trigger.isAfter){
        if(trigger.isInsert){
           
            System.debug('After Insert');
        }
    }

}