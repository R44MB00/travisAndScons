# language: en

Feature: Decrypt the string
  From yoire website
  From base64 category
  With my username henryval

  Background:
    Given a base-64 coded string

  Scenario: Successful solution
    When I use an online base-64 decoder
    And I input the string
    Then I find the solution
    And I solve the challenge
