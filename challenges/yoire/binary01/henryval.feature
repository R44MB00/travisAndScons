# language: en

Feature: Decrypt the binary string 1
  From yoire website
  From binary conversion category
  With my username henryval

  Background:
    Given a binary coded string
    And the JPK tool

  Scenario: Successful solution
    When I use the JPK tool
    And I input the string
    And I decode the string
    Then I find the solution
    And I solve the challenge
