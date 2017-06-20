# language: en

Feature: Solve the challenge 234
  Called CharSet?
  From the yashira.org website
  From the Web category
  With my username henryval

  Background:
    Given a challenge webpage with strange characters
    And the charset hint
    And the uppercase hint

  Scenario: Failed Attempt
    When I download the webpage for testing
    And I try to change the charset encoding in the html heading
    Then I don't solve the challenge
    But I conclude I have to try something else
    
  Scenario: Successful solution
    When I look for more charset types
    Then I change my html header again
    And I find the solution
    Then I solve the challenge
