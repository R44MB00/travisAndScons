# language: en

Feature: Solve the challenge 06
  From the hackthissite.org website
  From the Steganography category
  With my username henryval

  Background:
    Given a hackthissite image
    And the StegSolve tool
    And I have access to internet

  Scenario: Failed attempt
    Given the image
    When I download it
    And I put it into the StegSolve tool
    Then I don't find anything useful
    But I conclude I have to try something else

  Scenario: Successful solution
    When I open the image with a text editor
    And I find a 64-based coded string at the end
    Then I use an online 64 base decoder to translate it into ASCII
    And I find the solution
    Then I solve the challenge
