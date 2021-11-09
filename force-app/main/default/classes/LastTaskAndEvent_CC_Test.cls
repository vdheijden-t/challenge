@isTest
public class LastTaskAndEvent_CC_Test {
    @TestSetup
    static void testSetup() {
        //Create test account
        Account testAccount = new Account(Name = 'Test Account');
        insert testAccount;

        //Create task associated with test account
        Task testTask = new Task(
            Subject = 'Test Task',
            Type = 'Follow Up Call',
            Priority = 'Normal',
            WhatId = testAccount.Id,
            ActivityDate = Date.today().addDays(-30)
        );
        insert testTask;

        //Create event associated with test account
        Event testEvent = new Event(
            Subject = 'Test Event',
            DurationInMinutes = 30,
            WhatId = testAccount.Id,
            ActivityDate = Date.today().addDays(-45),
            ActivityDateTime = DateTime.now().addDays(-45)
        );
        insert testEvent;
    }

    @isTest
    static void testGetAccountLastTask() {
        //TODO: Implement unittest for LastTaskAndEvent_CC.getAccountLastTask()
    }

    @isTest
    static void testGetAccountLastEvent() {
        //TODO: Implement unittest for LastTaskAndEvent_CC.getAccountLastEvent()
    }
}
