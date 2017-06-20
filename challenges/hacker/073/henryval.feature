# language: en

Feature: Solve the challenge number 73
  Called UpCount
  From hacker.org website
  From the Coding category
  With my username henryval

  Background:
    Given a java file
    And I have Eclipse IDE Java installed

  Scenario: Failed attempt
    Given the file
    When I compile it into Eclipse
    Then I get an error about memory collapsing
    Then I don't solve the challenge
    But I conclude I have to fix the error

  Scenario: Successful solution
    Given the error
    Then I look forward to expand Eclipse's memory
    And I compile the code again
    And I find the solution
    Then I solve the challenge
