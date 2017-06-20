Feature: Solve the challenge Real level 2
  From www.hackthis.co.uk
  From Lavels Real
  With ny username 3Rr0r404a

  Scenario: Successful solution
    Given a loggin form
    When I view the source code of the page
      And I find two interesting javascript functions
      And I notice that the url variable is created with the members credentials
      And I enter to the members path
      And I find the html file of the librarian
      And I use the user and password found into the loggin form
      And I submit the form
    Then  I solve the challenge
