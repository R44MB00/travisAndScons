Feature: Solve the challenge Main Level 10
  From www.hackthis.co.uk
  From Lavels Main
  With ny username 3Rr0r404a
  Background:
    Given some credentials
      And source code
  Scenario: Successful solution
    Given a web page with a logging form
    When I looking for word password in the source code
      And I find a hidden field with a name of txt file
      And I open the file
      And I use crack station to crack the hashes
      And use the result in loggin form
    Then I solve the challenge
