# language: en

Feature: Solve Substitution 1 challenge
  From wechall website
  From Crypto and Training category
  With my username henryval

  Background:
    Given a incoherent characters' string

  Scenario: Failed attempt
    Given the string
    When I input the string in a python script
    And I don't get anything coherent
    Then I don't solve the challenge
    But I conclude I have to try something else

  Scenario: Successful solution
    When I read the comments section from the Caesar 1 challenge
    Then I discover an online tool called quipqiup
    And I use it to find the solution
    Then I solve the challenge
