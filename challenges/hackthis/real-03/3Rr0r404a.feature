Feature: Solve the challenge Real level 3
  From www.hackthis.co.uk
  From Lavels Real
  With ny username 3Rr0r404a

  Scenario: Long successful solution
    Given a loggin form
    When I view the source code of the page
      And I find two interesting javascript functions
      And I reversing the makehash function
      And I reversing the hash into login.js file
      And I use the user and password found into the loggin form
      And I submit the form
    Then  I solve the challenge

  Scenario: Short successful solution
    Given a hit that say find some more information about the code being used
    When I think about the hint for hours
      And I try to find some file that stoting the credentials in plain text
      And I try some different files names like users, members, etc
      And I try combine the names with different extensions like html, txt, js 
      And I find a valid file name
      And I use the user and password found into the loggin form
      And I submit the form
    Then  I solve the challenge
