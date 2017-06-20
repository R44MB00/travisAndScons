# language: en

Feature: Solve XSS4 challenge
  From site Valhalla
  From xss category
  With my username jaguir11

  Background:
    Given the fact that I am registered in site valhalla
    And I have Windows 7 Operating System

  Scenario: Successful solution
    Given a text box to post a message
    And the script that displays messages
    When I see the method strip_tags I know what to do
    And I inject the alert
    Then I solve the challenge
