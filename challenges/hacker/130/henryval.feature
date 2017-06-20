# language: en

Feature: Solve the challenge number 130
  Called Didactic Text 2
  From hacker.org website
  From the Crypto category
  With my username henryval

  Background:
    Given some large text
    And I have access to internet

  Scenario: First Failed attempt
    When I look up for the texts on internet
    And I compare it with the originals ones
    But I don't find anything coherent
    Then I don't solve the challenge
    But I conclude I have to try something else

  Scenario: Second Failed attempt
    When I look for a hint on the forum
    And I find a helpful clue
    Then I do some research about the quotes on the texts
    And I input an answer based on some numbers
    Then I don't solve the challenge
    But I conclude I have to try something else

  Scenario: Last Failed attempt
    Given my last mistake
    When I look for the ASCII value of the numbers
    And I don't find anything coherent
    Then I don't solve the challenge
    But I conclude I have to try something else

  Scenario: Successful solution
    Given my previous mistake
    When I try different numbers
    Then I find the solution
    And I solve the challenge
