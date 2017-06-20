# language: en

Feature: Solve the riddle 265
  From bqbi.net brainquest website
  From the mix category
  With my username henryval

  Background:
    Given a coffee machine

  Scenario: Failed attempt
    Given the coffee machine
    When I try translating coffee-related words to numbers
    Then I don't solve the challenge
    But I notice something in the machine

  Scenario: Successful solution
    When I look some nearly invisible stains on some numbers
    Then I find the solution
    And I solve the challenge
