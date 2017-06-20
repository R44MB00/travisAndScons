# language: en

Feature: Solve Beginners 4 challenge
  From site Valhalla
  From beginners category
  With my username jaguir11

  Background:
    Given the fact that I am registered in site valhalla
    And I have Windows 7 Operating System

  Scenario: First failed attempt
    Given a form to submit
    When I try to input my xss in all fields
    And nothing happens
    Then I realize I have to try something else

  Scenario: Second failed attempt
    Given a form to submit
    When I encode the special chars to bypass any checks
    And I send my xss
    And nothing happens
    Then I realize I have to try something else

  Scenario: Successful solution
    Given a form to submit
    When I look at the form again I realize I have not tried all input fields
    And I modify the source code
    And I send my xss
    Then I solve the challenge
