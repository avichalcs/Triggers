trigger annualRevenueUpdate on Account (before Update) {
    if(trigger.isBefore){
        if(trigger.isUpdate){
           accountHelper.checkRating(trigger.new,trigger.oldMap);
        }
    }
    else if(trigger.isAfter){
        if(trigger.isUpdate){
           
            System.debug('After Update');
        }
    }

}