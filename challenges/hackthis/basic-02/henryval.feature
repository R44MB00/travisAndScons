# language: en

Feature: Solve the challenge Basic+ Level 2
  From hackthis.co.uk website
  From the Basic+ category
  With my username henryval

  Background:
    Given a text asking for the correct user agent

  Scenario: Failed attempt
    Given the user agent thing
    When I look into google searching for info
    And I find the howtogeek.com website
    And I find a tutorial in it
    Then I follow the steps
    And I choose a user agent given the steps
    And I don't solve the challenge
    But I conclude I have to try something else

  Scenario: Successful solution
    Given the previous actions
    Then I decide to look for a hint on the forum
    And I find out I can create a custom agent
    Then I solve the challenge
