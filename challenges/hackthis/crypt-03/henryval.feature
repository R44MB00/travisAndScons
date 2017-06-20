# language: en

Feature: Solve the challenge Crypt Level 3
  From hackthis.co.uk website
  From the Crypt category
  With my username henryval

  Background:
    Given a string with dots and lines

  Scenario: Successful solution
    When I use an online morse decoder
    And I input the string
    Then I find the solution
    And I solve the challenge
