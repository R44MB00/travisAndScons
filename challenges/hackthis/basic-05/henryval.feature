# language: en

Feature: Solve the challenge Basic+ Level 5
  From hackthis.co.uk website
  From the Basic+ category
  With my username henryval

  Background:
    Given some credentials to pass the challenge
    And a picture

  Scenario: Successful solution
    When I download the image
    And I open it with a text editor
    Then I see some readable data at the end of file
    And I find the solution
    Then I solve the challenge
