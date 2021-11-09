public class LastTaskAndEvent_CC {
    /**
     * getAccountLastTask
     * @param accountId Record ID for the account record that the last task should be retrieved for.
     * @return `Task` The last task (if one exists)
     */
    @AuraEnabled(cacheable=true)
    public static Task getAccountLastTask(Id accountId) {
        Task accountLastTask;

        List<Task> accountTasks = [
            SELECT Id, Subject, ActivityDate
            FROM Task
            WHERE AccountId = :accountId AND ActivityDate < TODAY
            ORDER BY ActivityDate DESC
        ];
        if (!accountTasks.isEmpty()) {
            accountLastTask = accountTasks[0];
        }

        return accountLastTask;
    }

    @AuraEnabled
    public static Event getAccountLastEvent(Id accountId) {
        //TODO: Implement method logic to retrieve last event for passed account id.
    }
}
