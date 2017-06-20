Feature: Solve the challenge Basic Level 3
  From www.hackthis.co.uk
  From Lavels Basic
  With ny username 3Rr0r404a
  
  Background:
    Given a specific score

  Scenario: Successful solution
    Given a flash game
    When I use a proxy like burpsuit to intercept the request of the web page
      And I modified the score parameter with the specific score
    Then I solve the challenge
