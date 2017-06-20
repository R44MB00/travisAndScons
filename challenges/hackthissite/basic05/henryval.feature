# language: en

Feature: Solve the challenge Basic Level 5
  From the hackthissite.org website
  From the basic category
  With my username henryval

  Background:
    Given an empty input
    And a password reminder

  Scenario: Successful solution
    When I inspect the password reminder with Google Chrome
    Then I find an email address in a hidden input
    And I change it to mine
    And I got the answer
    Then I solve the challenge
