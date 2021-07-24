trigger Q7OpportunityBackupTrigger on Opportunity (after update) {
    if(trigger.isBefore){
        if(trigger.isUpdate){
            System.debug('Before Update');
           
           
        }
    }
    else if(trigger.isAfter){
        if(trigger.isUpdate){
           ques2TriggerHelper.Q7opportunityUpdate(trigger.old);
        }
    }

}