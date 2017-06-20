# language: en

Feature: Solve the challenge number 136
  Called Didactic Bits
  From hacker.org website
  From the Crypto category
  With my username henryval

  Background:
    Given a large string of as and bs

  Scenario: Failed attempt
    When I change the letters for binary numbers
    Then I get a binary number
    And I turn it into ASCII
    Then I don't solve the challenge
    But I conclude I have to try something else

  Scenario: Successful solution
    Given my previous mistake
    When I try a different combination
    Then I find the solution
    And I solve the challenge
