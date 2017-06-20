Feature: Solve the challenge Main Level 8
  From www.hackthis.co.uk
  From Lavels Main
  With ny username 3Rr0r404a

  Background:
    Given a some file with credentials
    And a hint that says the password is encrypted in base 16

  Scenario: Successful solution
    Given a web page with a logging form
    When I looking for word password
      And I find a path with a txt file
      And I open the file
      And convert the binary to base 16 how the hint saids
      And use the converted values in the form
    Then I solve the challenge
