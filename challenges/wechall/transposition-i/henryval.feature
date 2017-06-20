# language: en

Feature: Solve Transposition 1 challenge
  From wechall website
  From Crypto and Training category
  With my username henryval

  Background:
    Given a incoherent characters' string

  Scenario: Failed attempt
    Given the string
    When I input the string in a python script
    And I don't get anything coherent
    Then I don't solve the challenge
    But I conclude I have to try something else

  Scenario: Successful solution
    When I analyze the string
    Then I change my script to try something different
    And I find the solution
    Then I solve the challenge

