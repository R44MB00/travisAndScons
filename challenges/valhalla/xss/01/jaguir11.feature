# language: en

Feature: Solve XSS1 challenge
  From site Valhalla
  From xss category
  With my username jaguir11

  Background:
    Given the fact that I am registered in site valhalla
    And I have Windows 7 Operating System

  Scenario: First failed attempt
    Given a search box
    When I try to inject an alert
    And I get nothing
    Then I realize I have to look at the source code

  Scenario: Successful solution
    Given a search box
    And the page source
    When I inject the alert with the neccesary comment tags
    Then I solve the challenge
