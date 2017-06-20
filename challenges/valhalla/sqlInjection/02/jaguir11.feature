# language: en

Feature: Solve SQL Injection 2 challenge
  From site Valhalla
  From sqli category
  With my username jaguir11

  Background:
    Given the fact that I am registered in site valhalla
    And I have Windows 7 Operating System

  Scenario: First failed attempt
    Given a login form
    And the source code for the login page
    When I try the basic injection
    And I get nothing
    And I take a closer look at the code
    Then I realize I can not use sql commands

  Scenario: Successful solution
    Given a login form
    And the source code for the login page
    And some reading on bypassing and filter evasion
    When I try the new injection in the user with out any sql commands
    And I login
    Then I solve the challenge
