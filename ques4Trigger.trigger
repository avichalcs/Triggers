trigger ques4Trigger on Account (before delete) {
    if(trigger.isBefore){
        if(trigger.isDelete){
           ques2TriggerHelper.q4PreventDelete(trigger.old);
        }
    }
    else if(trigger.isAfter){
        if(trigger.isdelete){
           
            System.debug('After Insert');
        }
    }
}