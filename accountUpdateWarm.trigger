trigger accountUpdateWarm on Account (after Update) {
     if(trigger.isBefore){
        if(trigger.isUpdate){
           System.debug('before Update');
        }
    }
    else if(trigger.isAfter){
        if(trigger.isUpdate){
            
         accountUpdateHelper.accountUpdate(trigger.new);
        }
    }

}