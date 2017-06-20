# language: en

Feature: Solve the challenge Main Level 4
  From hackthis.co.uk website
  From the Main category
  With my username henryval

  Background:
    Given some credentials to enter

  Scenario: Successful solution
    When I look into the source code
    Then I find a weird URL path
    When I try the right new URL
    Then I find the answer
    And I'm able to solve the challenge
