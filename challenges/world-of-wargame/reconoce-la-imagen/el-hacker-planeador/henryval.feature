# language: en

Feature: Find the answer
  From world of wargame website
  From Recognize the image category
  With my username henryval

  Background:
    Given a picture and its description
    And I have access to internet

  Scenario: Successful solution
    Given the image
    Then I look for it on google
    Then I find the answer
    And I solve the challenge
 