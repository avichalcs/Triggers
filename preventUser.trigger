trigger preventUser on Account (before insert) {
    {
if(trigger.isbefore)
   {
       if(trigger.isupdate)
       {
           accountUpdateRestrict.accRestrict(trigger.new);
       }
   }
else if(trigger.isAfter){
        if(trigger.isUpdate){
            System.debug('After Update');
            
        }
    }
}
}