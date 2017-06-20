Feature: Solve the challenge Intermediate Level 1 
  From www.hackthis.co.uk
  From Lavels Intermediate
  With ny username 3Rr0r404a
  
  Background:
    Given the password flubergump

  Scenario: Successful solution
    Given the instruction of send the given password using GET method
    When I pass the parametrer password in the challenge url using ?password
      And I set the parameter with the given password
      And press enter
    Then I solve the challenge
