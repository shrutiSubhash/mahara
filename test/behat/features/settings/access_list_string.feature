@javascript @core @core_administration

Feature: User reports have been moved to Reports section
In order to make sure admin can still access reports
As an admin
I need to check they correct report is shown

Background:
 Given the following "institutions" exist:
     | name | displayname | registerallowed | registerconfirm |
     | instone | Institution One | ON | OFF |
 Given the following "users" exist:
     | username | password | email | firstname | lastname | institution | authname | role |
     | UserA | Kupuhipa1 | UserA@example.org | Angela | User | instone | internal | member |
     | UserB | Kupuhipa1 | UserB@example.org | Bob | User | instone | internal | member |

Scenario: Accessing user reports
 Given I log in as "admin" with password "Kupuhipa1"
 And I choose "User search" in "Users" from administration menu
 And I check "selectusers_2"
 And I check "selectusers_3"
 And I press "Get reports"
 Then I should see "User details"
 And I should see "2 users selected"