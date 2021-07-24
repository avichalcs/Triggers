trigger updateAutoNumber on Account__c (after insert) {
    if(trigger.isBefore){
        if(trigger.isUpdate){
           System.debug('before Update');
        }
    }
    else if(trigger.isAfter){
        if(trigger.isInsert){
            
         accountUpdateHelper.accountAutoNumberUpdate(trigger.new);
        }
    }

}