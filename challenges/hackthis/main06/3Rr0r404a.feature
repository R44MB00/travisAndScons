Feature: Solve the challenge Main Level 6
  From www.hackthis.co.uk
  From Lavels Main
  With ny username 3Rr0r404a

  Scenario: Successful solution
    Given a web page with a usernames combo box
      And source code
    When I inspect the combo box with google chrome
      And I modified the value of option tag
      And I submit the form
    Then I solve the challenge
