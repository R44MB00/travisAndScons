# language: en

Feature: Solve the challenge Basic+ Level 4
  From hackthis.co.uk website
  From the Basic+ category
  With my username henryval

  Background:
    Given some credentials to pass the challenge
    And a picture

  Scenario: Failed attempt
    When I download the image
    And I open it with a text editor
    Then I see some readable data
    And I try some username and password
    And I don't solve the challenge
    But I conclude I have to try something else

  Scenario: Successful solution
    Given my previous mistake
    When I try another combination
    And it doesn't work
    Then I look into the forum
    And I find the right hint
    And I find the solution
    Then I solve the challenge
