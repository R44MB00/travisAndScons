# language: en

Feature: Solve Enlightment challenge
  From wechall website
  From Encoding category
  With my username henryval

  Background:
    Given three binary big numbers
    And the JPK tool

  Scenario: First Failed attempt
    Given the tool
    When I input the numbers and transform them
    And I don't find anything coherent
    Then I don't solve the challenge
    But I conclude I have to try something else

  Scenario: Second Failed attempt
    Given the questions made by other users
    When I read something that can help me
    And I find a clue given by xyberz09
    Then I do research about the clue
    And I do an operation between the numbers
    Then I don't solve the challenge
    But I conclude I have to try something else

  Scenario: Last Failed attempt
    When I do the right operation I find something coherent
    But I still don't solve the challenge
    Then I have to continue with the second part of the challenge
    And I do an operation within the new numbers
    But I don't solve the challenge
    Then I conclude I have to try something else

  Scenario: Successful solution
    When I do the right operation
    Then I find the solution
    And I solve the challenge
