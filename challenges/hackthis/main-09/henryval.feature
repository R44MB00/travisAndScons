# language: en

Feature: Solve the challenge Main Level 9
  From hackthis.co.uk website
  From the Main category
  With my username henryval

  Background:
    Given some credentials to enter
    And a request details option

  Scenario: Successful solution
    When I look into the request details option
    Then I find an empty label with a submit button
    When I inspect the elements
    And I discover the hidden element about the email
    Then I change the email
    And I put my email in
    And I solve the challenge
