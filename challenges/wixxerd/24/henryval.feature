# language: en

Feature: Solve the challenge 24
  Called Return to Sender
  From the wixxerd website
  From the Cryptography category
  With my username henryval

  Background:
    Given some a string
    And an image of a barcode in the background
    And I have access to internet

  Scenario: Successful solution
    When I look into the source code
    And I find that the background is being mixxed with my image hint
    Then I find the image's URL
    And I remember barcodes store data
    Then I use an online barcode decoder
    And I find the solution
    Then I solve the challenge
