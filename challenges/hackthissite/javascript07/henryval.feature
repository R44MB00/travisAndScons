# language: en

Feature: Solve the challenge 7
  From the hackthissite.org website
  From the javascript category
  With my username henryval

  Background:
    Given an empty input

  Scenario: Successful solution
    When I look into the source code
    Then I find a piece of javascript code
    When I translate the hexadecimal words to ascii
    Then I find another piece of javascript
    And I get the answer
    And I solve the challenge
