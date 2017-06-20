# language: en

Feature: Solve the challenge Basic+ Level 1
  From hackthis.co.uk website
  From the Basic+ category
  With my username henryval

  Background:
    Given some credentials to enter
    And a text file

  Scenario: Successful solution
    When I look into the file
    And I see the beginning of the file
    Then I open the file using paint
    And I find the solution
    Then I solve the challenge
