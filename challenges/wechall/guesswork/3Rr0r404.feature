Feature: Solve the challenge Guesswork
  From www.wechall.net
  With my username eRr0r404a
  
  Scenario: First try
    Given an username
      And a conversation between Wechall and Gizmore
    When I read the chat for a while
      And I use variations of the user name as password
    Then  I don't solve the challenge
    But I got a clue telling me I'm close

  Scenario: Successful solution
    Given an username
      And a conversation between Wechall and Gizmore
    When I read the people questions in the forum
      And I find a clue that tell no person
      And I try a new password
    Then  I solve the challenge
