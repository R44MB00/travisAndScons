# language: en

Feature: Solve the challenge 6
  From the hackthissite.org website
  From the javascript category
  With my username henryval

  Background:
    Given an empty input

  Scenario: Failed attempt
    When I look into the source code
    Then I find a piece of javascript code
    When I analyze it
    Then I come up with a coherent answer
    And I don't solve the challenge
    But I realize something strange

  Scenario: Successful solution
    Given my previous mistake
    When I look in detail to the correct function
    Then I find the true javascript function
    And I figure out the true answer
    And I solve the challenge
