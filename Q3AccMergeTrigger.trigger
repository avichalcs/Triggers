trigger Q3AccMergeTrigger on Account (after delete) {
     if(trigger.isBefore){
        if(trigger.isdelete){
            System.debug('Before Delete');
           
        }
    }
    else if(trigger.isAfter){
        if(trigger.isDelete){
           
            ques2TriggerHelper.q3backupAccount(Trigger.old);
        }

}
}