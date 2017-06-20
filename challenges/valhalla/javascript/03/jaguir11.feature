# language: en

Feature: Solve Javascript challenge
  From site Valhalla
  From Javascript category
  With my username jaguir11

  Background:
    Given the fact that I am registered in site valhalla
    And I have Windows 7 Operating System

  Scenario: Successful solution
    Given a password box
    And the page source with the function that calculates the answer
    When I run the js code
    And I print the base
    And I get the answer
    Then I solve the challenge
