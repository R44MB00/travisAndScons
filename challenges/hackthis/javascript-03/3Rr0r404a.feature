Feature: Solve the challenge Javascript Level 3
  From www.hackthis.co.uk
  From Lavels Javascript
  With ny username 3Rr0r404a

  Scenario: Successful solution
    Given a web page with password field
      And the web page source code
    When I view the web page source code
      And I search the word pass
      And I find a javascript function that use the value of the input password
      And I notice that the function compare the input value with a variable
      And I open the google chrome console and consult the value of the variable
      And I write the value of the variable in the password field
    Then I solve the challenge
