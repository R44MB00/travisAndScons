# language: en

Feature: Solve the challenge 5
  From the hackthissite.org website
  From the javascript category
  With my username henryval

  Background:
    Given an empty input

  Scenario: Successful solution
    When I look into the source code
    Then I find a piece of javascript code
    When I look into the variables
    Then I use an online URL decoder to find the answer
    And I solve the challenge
