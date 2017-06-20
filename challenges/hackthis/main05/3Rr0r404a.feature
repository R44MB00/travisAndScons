Feature: Solve the challenge Main Level 5
  From www.hackthis.co.uk
  From Lavels Main
  With ny username 3Rr0r404a
  
  Background:
    Given some password

  Scenario: Successful solution
    Given a web page with a password prompt
      And source code
    When I open the page's source code
      And Looking for the word password
      And I find javascript prompt
      And I find an if that compare the pass with a value 
      And I copy and paste the value in the prompt 
    Then I solve the challenge
