Feature: Solve the challenge Get Sourced
  From www.wechall.net
  With my username eRr0r404a

  Scenario: Successful solution
    Given a web page with answer field
    When I looking for a password in the source code
      And I find a comment with the password
      And I use the found password in the answer field
      And I submit the form
    Then  I solve the challenge
