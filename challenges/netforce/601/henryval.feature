# language: en

Feature: Solve the challenge Keep walking...
  From the net-force.nl website
  From the programming category
  With my username henryval

  Background:
    Given a list of steps
    And an empty label

  Scenario: Successful solution
    When I develop a python script following the listed rules
    And I execute it
    Then I find the solution
    And I solve the challenge
