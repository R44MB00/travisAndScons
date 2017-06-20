Feature: Solve the challenge Basic Level 1
  From www.hackthis.co.uk
  From Lavels Basic
  With ny username 3Rr0r404a
  
  Background:
    Given the b1.txt file

  Scenario: Successful solution
    Given a web page with a loggin form
    When I open the b1.txt file with a image visor
      And use the credentials in the loggin form
    Then I solve the challenge
