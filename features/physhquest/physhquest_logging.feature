Feature: PhyshQuest logging

  To help debugging and troubleshooting
  As the server administrator
  I want to have logging in the application.

  Scenario: start logging when the application starts
    Given the application is not running
    When I start the application
    Then a log file should be created
    And the log file should capture data