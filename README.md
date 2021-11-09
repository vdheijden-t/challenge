# Hands-On Challenge

For this scenario we have been requested to create a way that a user can quickly tell when the last task and the last event for the current account record occurred. Even though the activity timeline is great at providing a high level overview, it might be hard to see at a glance when the last event occurred vs. the last task. The ActivityDate on the Account record is great for showing the last date of activity overall but not so great for showing the date of the last event separately from the date of the last task.

In this hands-on-challenge, you will be implementing a Lightning Web Component that will display the date of the last event as well as the date of the last task associated with an account record. A start for the UI in the Lightning Web Component has been provided. The Lightning Web Component will rely on an Apex class to retrieve the latest task record and the latest event record. The method that retrieves the last task has already been implemented and a stub for the method that will retrieve the last event has been provided. It's expected that unit tests are written for each method. Stubs of both the unit test methods and the test data setup have been provided in the test class.

The new LWC should be displayed above the activity timeline. Here is a sample of what the LWC should look like once completed:  
![LWC Sample Image](images/sampleLwc.png)

Please note: It is **not** expected that you complete this challenge from memory. Feel free to reference Salesforce developer documentation as you complete this challenge.

## Part 1: Connect to org

### Access to developer edition org

URL: https://login.salesforce.com  
Username: iview20@example.com  
Password: interview20 
NOTE: Multifactor Authentication has been set up in the org so an additional code will be required to log in. We will provide this code to you when you attempt to log in.

## Part 2: Clone starter code from git repository

Repository URL: https://git.arda.cf/iview20/interview-challenge
Username: iview20  
Password: interview20

## Part 3: Implement code

This includes the following tasks:

* Implement Apex method to retrieve the last event (LastTaskAndEvent_CC)
* Complete unittests for the two Apex methods (LastTaskAndEvent_CC_Test)
* Implement logic in LWC to call the Apex methods to retrieve the last task as well as last event (lastTaskAndEvent)
* Place LWC on the account flexipage

## Part 4: Deploy code to Salesforce and demo the results

## Part 5: Commit completed code to git.
Commit your changes to the same repository you cloned in part 2.

## Part 6: Celebrate!