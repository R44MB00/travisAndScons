# language: en

Feature: Solve the challenge Javascript Native code
  From root-me.org website
  From the Web Client category
  With my username henryval

  Background:
    Given a javascript challenge
    And a password to find
    And I have access to internet

  Scenario: Failed Attempt
    Given the challenge
    When I look into the sourcecode
    Then I find a really weird script
    And I look for it on the internet
    Then I don't find anything useful
    But I conclude I have to look around

  Scenario: Successful solution
    When I look into the challenge's forum
    Then I find the right hint
    And I replace a character
    And I get the real function
    Then I find the solution
    And I solve the challenge
