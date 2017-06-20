# language: en

Feature: Decrypt the stego string 02
  From yoire website
  From the stego category
  With my username henryval

  Background:
    Given an image

  Scenario: Successful solution
    When I download the image
    And I open it with a text editor
    Then I find the answer
    And I solve the challenge
