Feature: Solve the challenge 1
  From www.thisislegal.com
  From Basic Challenges
  With ny username 3Rr0r404a

  Scenario: Successful solution
    Given a web page with password field
    When I looking for a password in the source code
      And I find a comment with the password
      And I use the found password in the password field
      And I submit the form
    Then  I solve the challenge
