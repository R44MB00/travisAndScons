# language: en

Feature: Solve the challenge Main Level 6
  From hackthis.co.uk website
  From the Main category
  With my username henryval

  Background:
    Given a list and a button
    And no username called Ronald
    And I use google chrome as my browser

  Scenario: Successful solution
    When I inspect the elements
    And I look for the select element and its options
    And I change one of those to Ronald
    Then I solve the challenge
