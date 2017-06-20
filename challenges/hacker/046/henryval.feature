# language: en

Feature: Solve the challenge number 46
  Called Web Design 101
  From hacker.org website
  From the Web category
  With my username henryval

  Background:
    Given three numbers in hexadecimal

  Scenario: Failed attempt
    When I see the numberes
    Then I make a coherent input
    But I don't solve the challenge
    Then I conclude I have to try something else

  Scenario: Successful solution
    When I try with complete words
    Then I solve the challenge
