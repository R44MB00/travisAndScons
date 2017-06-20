# language: en

Feature: Solve the challenge Main Level 8
  From hackthis.co.uk website
  From the Main category
  With my username henryval

  Background:
    Given some credentials to enter
    And the JPK tool

  Scenario: Successful solution
    When I look into the source code
    Then I find a new URL
    When I access it I find some binary numbers
    And I transform them into hexadecimal
    Then I find the answer
    And I solve the challenge
