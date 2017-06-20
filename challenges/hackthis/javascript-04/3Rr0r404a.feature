Feature: Solve the challenge Javascript Level 4
  From www.hackthis.co.uk
  From Lavels Javascript
  With ny username 3Rr0r404a

  Background:
    Given a hint that say This isn't the page I was looking for...

  Scenario: Successful solution
    Given a web page with password field
      And the web page source code
    When I view the url of the web page i notice that have a strange parameter
      And I view the source code of the web page
      And I delete the parameter of the url
      And I search the word password
      And I write the found value in the password field
    Then I solve the challenge
