# language: en

Feature: Solve the challenge Can you see me?
  From the net-force.nl website
  From the steganography category
  With my username henryval

  Background:
    Given a hidden hint

  Scenario: Failed attempt
   When I look into the source code
   Then I find the hidden hint about an image
   Then I go and look into the robots file of the site
   But I don't find anything useful
   And I don't solve the challenge
   But I conclude I have to try something else

  Scenario: Successful solution
    Given my previous error
    When I get to the right URL
    Then I download the image
    And I open it with a text editor
    Then I find the answer
    And I solve the challenge
