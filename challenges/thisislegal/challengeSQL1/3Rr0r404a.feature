Feature: Solve the SQL challenge 1
  From www.thisislegal.com
  From SQL Challenges
  With ny username 3Rr0r404a
  
  Scenario: Successful solution
    Given a logging form
    When I use the basic sql injection ‘or ‘1’=’1 in the password field
      And I use admin in the user field
    Then  I solve the challenge
