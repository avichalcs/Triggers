trigger ValidateOppStage on Opportunity (before insert) {
    If(Trigger.isUpdate && Trigger.isBefore) {
			ques2TriggerHelper.q8ValidateOppStageMethod(trigger.new,trigger.old);
		}

}