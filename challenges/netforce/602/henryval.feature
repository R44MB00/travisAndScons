# language: en

Feature: Solve the challenge Are you fast enough?
  From the net-force.nl website
  From the programming category
  With my username henryval

  Background:
    Given a list of steps
    And an empty label

  Scenario: Successful solution
    When I develop a python script following the listed rules
    And using the urllib libraries
    And I execute it catching the data needed
    Then a window is promped into google chrome
    And I solve the challenge
