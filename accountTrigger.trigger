trigger accountTrigger on Account (after update, before update)
{
    if(trigger.isBefore){
        if(trigger.isUpdate){
           trigger.new[0].Check_Validation__c =200;
        }
    }
    else if(trigger.isAfter){
        if(trigger.isInsert)
           {
            //accountTriggerHelper.methodForCreateOpp(trigger.new);
        }
    }}