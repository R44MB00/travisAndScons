Feature: Solve the challenge Main Level 3
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
      And find javascript function that compare the value of password and user
      And I read the value of user and password
    Then I solve the challenge
