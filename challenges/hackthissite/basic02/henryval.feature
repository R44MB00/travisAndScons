# language: en

Feature: Solve the challenge Basic Level 2
  From the hackthissite.org website
  From the basic category
  With my username henryval

  Background:
    Given an empty input

  Scenario: Failed attempt
    When I look into the source code
    And I don't find anything useful
    Then I don't solve the code
    But I realize about the hint

  Scenario: Successful solution
    When I analyze the hint
    Then I input the right answer
    And I solve the challenge
