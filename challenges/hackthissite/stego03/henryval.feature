# language: en

Feature: Solve the challenge 03
  From the hackthissite.org website
  From the Steganography category
  With my username henryval

  Background:
    Given a one-colored image
    And the StegSolve tool

  Scenario: Successful solution
    Given the image
    When I download it
    And I analyze the image throught the Gray bits map
    Then I find the solution
    And I solve the challenge
