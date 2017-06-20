# language: en

Feature: Solve the challenge number 143
  Called A Little Python
  From hacker.org website
  From the Coding category
  With my username henryval

  Background:
    Given a segment of python code

  Scenario: Failed attempt
    When I try to run the code as it is
    And I get an error
    Then I don't solve the challenge
    But I conclude I have to try something else

  Scenario: Successful solution
    When I adapt the code to something similar
    Then I find the solution
    And I solve the challenge
