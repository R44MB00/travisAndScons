# language: en

Feature: Solve the challenge 1
  From the hackthissite.org website
  From the javascript category
  With my username henryval

  Background:
    Given an empty label

  Scenario: Successful solution
    When I look into the source code
    And I find a javascript function
    And I analyze it
    Then I get the answer
    And I solve the challenge
