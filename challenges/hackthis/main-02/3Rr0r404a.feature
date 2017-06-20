Feature: Solve the challenge Main Level 2
  From www.hackthis.co.uk
  From Lavels Main
  With ny username 3Rr0r404a
  
  Background:
    Given some user and password

  Scenario: Successful solution
    Given a web page with an loggin form
      And source code
    When I open the page's source code
      And Looking for the word password
      And I find the user next to label username
      And I find the password next to label password
    Then I solve the challenge
