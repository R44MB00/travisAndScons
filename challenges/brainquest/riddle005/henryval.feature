# language: en

Feature: Solve the riddle 5
  From bqbi.net brainquest website
  From the crypto category
  With my username henryval

  Background:
    Given a incoherent string
    And the quipqiup tool

  Scenario: Successful solution
    When I use then online decryption tool
    And I find the solution
    Then I solve the challenge
