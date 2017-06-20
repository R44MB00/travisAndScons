# language: en

Feature: Solve the challenge Main Level 5
  From hackthis.co.uk website
  From the Main category
  With my username henryval

  Background:
    Given a prompt message asking for a password

  Scenario: Successful solution
    When I look into the source code in another tab
    Then I find a piece of javascript code
    Then I find the answer
    And I'm able to solve the challenge
