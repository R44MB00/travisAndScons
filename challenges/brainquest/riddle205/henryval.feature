# language: en

Feature: Solve the riddle 205
  From bqbi.net brainquest website
  From the stegano category
  With my username henryval

  Background:
    Given a QR Code
    And a QR-reading app on my cellphone

  Scenario: Successful solution
    When I scan the code
    Then I find the solution
    And I solve the challenge
