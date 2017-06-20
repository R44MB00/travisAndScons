Feature: Solve the challenge Transposition I
  From www.wechall.net
  With my username eRr0r404a
  
  Scenario: Successful solution
    Given a cypher method and a cypher message
    When I split the message in pairs
      And exchange the two positions of each pair
      And I find the password
    Then  I solve the challenge
