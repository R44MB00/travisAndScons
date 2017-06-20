Feature: Solve the challenge 5
  From www.thisislegal.com
  From Basic Challenges
  With ny username 3Rr0r404a

  Scenario: Successful solution
    Given a web page with password field
      And a email password button to remember the password
    When I inspect the button with google chrome developer tools
      And I find a hidden input with an email address
      And I change the mail address by one's own
      And I retrieve the password
      And I use the send password in the password field
    Then  I solve the challenge
