# language: en

Feature: Solve Realistic 4 challenge
  From site Challengeland
  From Realistic category
  With my username jaguir11

  Background:
    Given the fact that I am registered in site challengeland.co
    And I have Windows 7 Operating System

  Scenario: First failed attempt
    Given a login panel
    And a site to contact the admin
    When I try the basic sqli, 'OR 'a' = 'a
    And I get a troll face telling me to try harder
    Then I decide to try a different injection

  Scenario: Second failed attempt
    Given a login panel
    And a site to contact the admin
    When I try another sqli, admin --
    And I get the troll face mocking me again
    Then I realize the contact form must be there for something

  Scenario: Third failed attempt
    Given a login panel
    And a site to contact the admin
    When I test the contact form for xss with an alert
    And I do not get the alert pop up
    Then I decide to read more about xss

  Scenario: Successful solution
    Given a login panel
    And a site to contact the admin
    And some reading of the OWASP xss documentation
    When I try to grab the cookie in the contact form with xss
    And I get the cookie auth value
    And I go back to the login panel
    And I try to authenticate with user admin and any password
    And I intercept the request and change the auth cookie value
    And I get the challenge password
    Then I solve the challenge
