# language: en

Feature: Solve VIP challenge
  From site Hackergateway
  From web category
  With my username jaguir11

  Background:
    Given the fact that I am registered in site hackergateway
    And I have Windows 7 Operating System

  Scenario: First failed attempt
    Given the link to the challenge
    When I click on it, I am redirected back to home
    And I get a message that says only users from the white house are allowed
    Then I realize I have to try something else

  Scenario: Second failed attempt
    Given the link to the challenge
    And a message telling me who is allowed to visit the site
    And a web browser extention
    When I click on the link and I intercept the request
    Then I change the referrer on the initial request
    And I get redirected back to home
    Then I realize I have to try something else

  Scenario: Successful solution
    Given the link to the challenge
    And a message telling me who is allowed to visit the site
    And a web browser extention
    When I click on the link and I intercept the request
    Then I change the referrer on the initial request
    And I keep intercepting the following request
    Then I modify an other request
    And I get to the challenge
    And I enter the answer
    Then I solve the challenge
