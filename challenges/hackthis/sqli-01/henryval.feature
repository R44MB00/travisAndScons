# language: en

Feature: Solve the challenge SQLi 1
  From the hackergateway website
  From the SQLi category
  With my username henryval

  Background:
    Given some credentiales to enter

  Scenario: Failed Attempt
    Given the challenge
    When I try the tipical basic SQL injection
    And it doesn't work
    Then I don't solve the challenge
    But I conclude I have to try something else

  Scenario: Successful solution
    When I adjust the basic SQL injection with a username
    And I try it
    Then I solve the challenge
