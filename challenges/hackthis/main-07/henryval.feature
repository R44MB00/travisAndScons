# language: en

Feature: Solve the challenge Main Level 7
  From hackthis.co.uk website
  From the Main category
  With my username henryval

  Background:
    Given some credentials to enter

  Scenario: Failed attempt
    When I look into the source code
    And I don't find anything useful
    Then I don't solve the challenge
    But I conclude I have to try something else

  Scenario: Successful solution
    When I look into the forum for hints
    Then I find a clue about the robots standard
    And I relate it with the password stored in a text file hint
    Then I look into the right URL
    Then I find the answer
    And I solve the challenge
