# language: en

Feature: Solve the challenge Main Level 1
  From hackthis.co.uk website
  From the Main category
  With my username henryval

  Background:
    Given some credentials to enter

  Scenario: Successful solution
    When I look into the source code
    And I find a comment with the solution
    Then I solve the challenge
