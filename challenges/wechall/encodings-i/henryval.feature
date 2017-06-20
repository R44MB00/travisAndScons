# language: en

Feature: Solve Encodings 1 challenge
  From wechall website
  From Crypto and Training category
  With my username henryval

  Background:
    Given some binary numbers
    And the JPocketKnife tool

  Scenario: Failed attempt
    Given the tool
    When I input the numbers and transform them
    And I don't find anything coherent
    Then I don't solve the challenge
    But I conclude I have to try something else

  Scenario: Successful solution
    When I do some research about ASCII coding
    Then I find out about the parity bit
    And I use the tool the right way
    Then I find the solution
    And I solve the challenge
