# language: en

Feature: Solve the challenge 18
  Called New wave gibberish
  From the wixxerd website
  From the Cryptography category
  With my username henryval

  Background:
    Given the challenge
    And a hidden image
    And I have access to internet

  Scenario: Successful solution
    When I look into the source code
    And I find a hidden URL leading to an image
    Then I download it
    And I analyze it on an online QR decoder
    Then I find the solution
    And I solve the challenge
