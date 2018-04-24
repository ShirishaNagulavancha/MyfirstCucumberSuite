Feature: Event Browsing

  Background: User is not authenticated
    Given I am on the Home page

  Scenario: User tries to browse all the events for all dates from serach area
    Given I enter Chicago as my location
    When I select All Dates from drop down list
    And I click on Search button
    Then I am able to see events for selected criteria

  Scenario: User tries to edit the location from Events for you in field
    Given I click on Cancel Current location
    When I edit the location from Events for you in field
   Then The location in search area should change to the location I entered
    And I click on Search button
    And I am able to see events for selected criteria

    Scenario: User tries to change the location on Events page
      Given I click on Search button
      When I change the location from Browsing in
      Then I am able to see events for selected criteria