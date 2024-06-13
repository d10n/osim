Feature: Flaw detail testing on embargo flaw

    Background: Before run scenarios
      Given I am an analyst AND I am logged into OSIM
      And I set the bugzilla api key and jira api key
      And I go to an embargoed flaw detail page

    Scenario: Modify embargoed flaw with past public date
      When I update the embargoed flaw with a past public date
      Then The embargoed flaw update is failed

    Scenario: Modify embargoed flaw with future public date
      When I update the embargoed flaw with a future public date
      Then The embargoed flaw is updated

    Scenario: Update affects for embargoed flaw
      When I update the affects of the flaw and click 'Save Changes' button
      Then All changes are saved

    Scenario: Make flaw public and add public data
      When I unembargo this flaw and add public date
      Then Flaw is unembargoed and have public date

     Scenario: Add new affect for an embargoed flaw
      When I add a new affect with valid data
      When The affect is added

    Scenario: Update affects for an embargoed flaw
      When I update the affects of the flaw and click 'Save Changes' button
      Then All changes are saved

    Scenario: Delete an affect from a flaw
      When I delete an affect of the flaw
      Then The affect is deleted