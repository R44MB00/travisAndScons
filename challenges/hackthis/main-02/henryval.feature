# language: en

Feature: Solve the challenge Main Level 2
  From hackthis.co.uk website
  From the Main category
  With my username henryval

  Background:
    Given some credentials to enter

  Scenario: Successful solution
    When I look into the source code
    Then I find a the solution within the input labels
    And I solve the challenge
