# language: en

Feature: Solve the challenge 41
  Called Visitame please
  From the yashira.org website
  From the Mix category
  With my username henryval

  Background:
    Given a challenge about visits into a webpage
    And a cookie editor

  Scenario: Failed Attempt
    Given the challenge
    When I look into the forum for some clues
    Then I find out I have to crack the cookies into what I need
    And I use a google chrome extension to do the work
    And I edit the visit cookies into the number asked
    Then I get message asking for more visits
    And I conclude I have to keep trying numbers

  Scenario: Successful solution
    When I get the right number of visits
    Then I get the solution
    And I solve the challenge

