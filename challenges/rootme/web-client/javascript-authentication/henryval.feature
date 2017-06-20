# language: en

Feature: Solve the challenge Javascript Authentication
  From root-me.org website
  From the Web Client category
  With my username henryval

  Background:
    Given a javascript challenge
    And some credentials to find

  Scenario: Successful solution
    Given the challenge
    When I try lo login I fail
    And I look for the sourcecode
    Then I find a login.js function
    And I see the solution in there
    Then I solve the challenge
