Feature: Solve the challenge Javascript Level 2
  From www.hackthis.co.uk
  From Lavels Javascript
  With ny username 3Rr0r404a

  Scenario: Successful solution
    Given a web page with password field
      And the web page source code
    When I view the web page source code
      And I search the word pass
      And I find a javascript function that use the value of the input password
      And I notice that the function compare the input length with a variable
      And I open the google chrome console and consult the value of the variable
      And I write some string in the password field
      And the length of the strings is equal to the variable value
    Then I solve the challenge
