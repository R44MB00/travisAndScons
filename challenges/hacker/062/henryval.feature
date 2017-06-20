# language: en

Feature: Solve the challenge number 62
  Called Bit Test
  From hacker.org website
  From the Coding category
  With my username henryval

  Background:
    Given a boolean function

  Scenario: Failed attempt
    Given the code
    When I make a python script similar
    And I execute it
    And I get an error
    Then I don't solve the challenge
    But I conclude I have to try something else

  Scenario: Successful solution
    When I try to translate the code into C/C++
    And I test with one hundred numbers
    And I analyze the results
    And I look for the correct answer
    And I check the forum for hints
    And I find the solution
    Then I solve the challenge
