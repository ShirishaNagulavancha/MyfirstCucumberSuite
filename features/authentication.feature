Feature: User Authentication

  Background: User is not authenticated
    Given I am not logged in

  Scenario: Successful Authentication
    * I can able to log in with valid credentials
