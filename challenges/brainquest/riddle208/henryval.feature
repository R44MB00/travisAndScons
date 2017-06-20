# language: en

Feature: Solve the riddle 208
  From bqbi.net brainquest website
  From the orbis pictus category
  With my username henryval

  Background:
    Given a strange picture
    And I have access to internet

  Scenario: Successful solution
    Given the image
    When I see look for it on google images
    And I don't find the solution
    But I see some related results
    Then I find the solution
    And I solve the challenge
