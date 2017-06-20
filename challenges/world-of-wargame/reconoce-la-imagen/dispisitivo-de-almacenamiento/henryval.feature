# language: en

Feature: Find the answer
  From world of wargame website
  From Recognize the image category
  With my username henryval

  Background:
    Given a picture and a text

  Scenario: Successful solution
    Given the image
    Then I recognize it
    And I solve the challenge
