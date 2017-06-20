Feature: Solve the challenge Main Level 1
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
      And I find a credentials inside a comment
    Then I solve the challenge
