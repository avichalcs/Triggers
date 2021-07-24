trigger Q6LeadConvertTrigger on Lead (After insert) {
    if(trigger.isBefore){
        if(trigger.isInsert){
           System.debug('Insert');
        }
    }
    else if(trigger.isAfter){
        if(trigger.isinsert){
            ques2TriggerHelper.q6LeadConvertTrigger(trigger.new);
            
        }
    }

}