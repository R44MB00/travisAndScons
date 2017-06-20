# language: en

Feature: Solve the challenge Another picture
  From the net-force.nl website
  From the steganography category
  With my username henryval

  Background:
    Given a picture about the cookie monster
    And the JPK tool

  Scenario: Successful solution
    When I download the image
    And I open it with a text editor
    And I find some binary numbers
    And I use the JPK tool to translate them
    Then I find the answer
    And I solve the challenge
