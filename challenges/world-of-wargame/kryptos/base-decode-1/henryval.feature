# language: en

Feature: Solve base decode 1 challenge
  From world of wargame website
  From Kryptos category
  With my username henryval

  Background:
    Given the challenge
    And some coded string

  Scenario: Successful solution
    Given the description
    When find an online base64 decoder
    Then I input the string in
    And I get another base64-coded string
    Then I do it again
    Then I find the solution
    And I solve the challenge
