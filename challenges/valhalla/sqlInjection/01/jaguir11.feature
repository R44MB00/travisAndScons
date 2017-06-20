# language: en

Feature: Solve SQL Injection 1 challenge
  From site Valhalla
  From sqli category
  With my username jaguir11

  Background:
    Given the fact that I am registered in site valhalla
    And I have Windows 7 Operating System
    And I have to gain credentials to log in

  Scenario: First failed attempt
    Given a login form
    And an input to poke another user while you log in
    When I try an injection to insert a new user into the table with 2 values
    And I do not get any error but the injection fails
    Then I decide to read more about sqli

  Scenario: Second failed attempt
    Given a login form
    And an input to poke another user while you log in
    When I try an injection with increasing params to insert a new user
    And I do not get any error but the injection fails
    Then I decide to read more about sqli

  Scenario: Successful solution
    Given a login form
    And an input to poke another user while you log in
    And some new knowledge on how to denote the end of an sql statement
    When I try an injection with increasing params
    And I terminate my query appropriately with --
    And I log in and see the challenge password
    Then I solve the challenge
