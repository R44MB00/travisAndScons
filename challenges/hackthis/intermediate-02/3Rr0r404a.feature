Feature: Solve the challenge Intermediate Level 2 
  From www.hackthis.co.uk
  From Lavels Intermediate
  With ny username 3Rr0r404a
  
  Background:
    Given the password flubergump

  Scenario: Successful solution
    Given the instruction of send the given password using POST method
    When I create a html file with a form that have a password field and a submit button
      And I set the method of the form to POST
      And I set the action to www.hackthis.co.uk/levels/intermediate/2
      And I set the name of the field to password
      And I set the value of the field to flubergump
      And I loggin in the web site hackthis
      And open the html file in the same browser where I log in
      And press the submit button
    Then I solve the challenge
