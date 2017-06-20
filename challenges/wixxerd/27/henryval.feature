# language: en

Feature: Solve the challenge 27
  Called A curious escape
  From the wixxerd website
  From the Cryptography category
  With my username henryval

  Background:
    Given Try the Puzzle button
    And I have access to internet

  Scenario: First Failed Attempt
    Given the challenge
    When I look into the source code
    Then I find a coherent password
    And I try it
    Then I don't solve the challenge
    But I conclude I have to try something else

  Scenario: Second Failed Attempt
    Given my previous mistake
    When I look again with great detail in the source code
    Then I find a javascript script coded in escape - URL
    When I translate it
    And I find another javascript function
    Then I don't solve the challenge
    But I know I'm on the right track

  Scenario: Last Failed Attempt
    Given the new javascript function
    When I investigate about how its methods work
    And I don't solve the challenge
    But I'm able to figure out step by step the solution

  Scenario: Successful solution
    When I try to construct a similar function to find out its result
    Then I come up with the solution coded in between a new string
    And I find the solution
    Then I solve the challenge
