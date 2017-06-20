# language: en

Feature: Solve the challenge Javascript Source
  From root-me.org website
  From the Web Client category
  With my username henryval

  Background:
    Given a javascript challenge
    And a password to find

  Scenario: Successful solution
    Given try lo login
    And I fail
    When I look into the sourcecode
    Then I find the answer
    And I solve the challenge
