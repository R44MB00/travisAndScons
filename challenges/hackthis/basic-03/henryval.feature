# language: en

Feature: Solve the challenge Basic+ Level 3
  From hackthis.co.uk website
  From the Basic+ category
  With my username henryval

  Background:
    Given a flash score submit

  Scenario: First failed attempt
    When I look into the source code
    And I don't find anything useful
    And I don't solve the challenge
    But I conclude I have to try something else

  Scenario: Second failed attempt
    When I look in the forum for hints
    And I discover the Tamper program
    And I install it in google chrome
    And I discover the submit request in a POST method
    But I'm no able to change it
    Then I don't solve the challenge
    But I know I'm close and I have to try something else

  Scenario: Successful solution
    Given my previous discovery
    When I use Firefox to do the job
    And I use the tamper data extension
    Then I'm able to change the POST request body
    And I solve the challenge
