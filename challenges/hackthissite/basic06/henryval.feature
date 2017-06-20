# language: en

Feature: Solve the challenge Basic Level 6
  From the hackthissite.org website
  From the basic category
  With my username henryval

  Background:
    Given an empty input for a password
    And an encrypter

  Scenario: Successful solution
    When I input selected words into the encrypter
    Then I start guessing who it works
    Then I find out how it works
    And I try the right combination
    And I got the answer
    Then I solve the challenge
