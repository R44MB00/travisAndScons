Feature: Solve the challenge Javascript Level 1
  From www.hackthis.co.uk
  From Lavels Javascript
  With ny username 3Rr0r404a

  Scenario: Successful solution
    Given a web page with password field
      And the web page source code 
    When I view the web page source code
      And I search the word pass
      And I find a javascript function that use the value of the input field 
      And I notice that the function compare the input value with a variable
      And I search that variable in web page source code
      And I use the variable value in the password field to make the comparison true
    Then I solve the challenge
