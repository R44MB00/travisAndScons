# language: en

Feature: Solve Beginners 1 challenge
  From site Valhalla
  From beginners category
  With my username jaguir11

  Background:
    Given the fact that I am registered in site valhalla
    And I have Windows 7 Operating System

  Scenario: Successful solution
    Given the link to the challenge
    And a login box with no credential
    When I look at the source
    And I input the debug user credentials
    Then I solve the challenge
