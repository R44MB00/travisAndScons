Feature: Solve the challenge 6
  From www.thisislegal.com
  From Basic Challenges
  With ny username 3Rr0r404a

  Scenario: Successful solution
    Given a hint tha tell us that find the robots.txt file
    When I find the robots.txt file
      And I entered the url address found in that file
    Then  I solve the challenge
