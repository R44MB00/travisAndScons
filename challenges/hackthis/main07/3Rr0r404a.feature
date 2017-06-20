Feature: Solve the challenge Main Level 7
  From www.hackthis.co.uk
  From Lavels Main
  With ny username 3Rr0r404a

  Background:
    Given a some file with credentials

  Scenario: Successful solution
    Given a web page with a logging form
      And a hint that say that the username and password are saved into a file
      And the file have been excluded for search bots
    When I looking for robots.txt file en the site
      And I find a path with a txt file
      And I open the file
      And copy and paste the values in the form and submit
    Then I solve the challenge
