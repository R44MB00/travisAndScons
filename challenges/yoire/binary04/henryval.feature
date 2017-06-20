# language: en

Feature: Decrypt the binary string 4
  From yoire website
  From binary conversion category
  With my username henryval

  Background:
    Given a strange string
    And the JPK tool

  Scenario: Successful solution
    When I develop a python code that can transform the string to binary
    Then I use the JPK tool
    And I input the result string
    And I decode the binary string
    Then I find the solution
    And I solve the challenge
