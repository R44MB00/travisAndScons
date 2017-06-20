# language: en

Feature: Solve the challenge Main Level 10
  From hackthis.co.uk website
  From the Main category
  With my username henryval

  Background:
    Given some credentials to enter

  Scenario: Successful solution
    When I look into the source code
    Then I find a new URL
    And I look into it
    And I discover encrypted numbers
    Then I use an online tool
    Then I find the answer
    And I solve the challenge
