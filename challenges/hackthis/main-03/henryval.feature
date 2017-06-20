# language: en

Feature: Solve the challenge Main Level 3
  From hackthis.co.uk website
  From the Main category
  With my username henryval

  Background:
    Given some credentials to enter

  Scenario: Successful solution
    When I look into the source code
    Then I find a short javascript code
    Then I find the answer
    And I solve the challenge
