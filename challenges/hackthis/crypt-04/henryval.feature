# language: en

Feature: Solve the challenge Crypt Level 4
  From hackthis.co.uk website
  From the Crypt category
  With my username henryval

  Background:
    Given a strange and incoherent text

  Scenario: Successful solution
    When I use the online tool quipqiup
    Then I find the solution
    And I solve the challenge
