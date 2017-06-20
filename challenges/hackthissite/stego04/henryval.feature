# language: en

Feature: Solve the challenge 04
  From the hackthissite.org website
  From the Steganography category
  With my username henryval

  Background:
    Given a hackthissite image
    And the StegSolve tool
    And the JPK tool

  Scenario: Failed attempt
    Given the image
    When I download it
    And I put it into the StegSolve tool
    Then I don't find anything useful
    But I conclude I have to try something else

  Scenario: Successful solution
    When I open the image with a text editor
    And I find a binary string at the end
    Then I use the JPK tool to translate it into ASCII
    And I find the solution
    Then I solve the challenge
