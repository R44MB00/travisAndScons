# language: en

Feature: Solve Caesar 2 challenge
  From wechall website
  From Crypto and Training category
  With my username henryval

  Background:
    Given a hexadecimal base string of numbers
    And the JPK tool

  Scenario: Failed attempt
    Given the string
    When I input the string into the tool
    And I don't get anything coherent
    Then I don't solve the challenge
    But I conclude I have to try something else

  Scenario: Successful solution
    When I compare the characters with an ASCII chart
    Then I discover it's ciphered
    And I develop a python script
    And I input the string
    And I find the solution
    Then I solve the challenge
