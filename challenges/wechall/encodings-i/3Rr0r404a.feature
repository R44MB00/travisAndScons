Feature: Solve the challenge Encodings I
  From www.wechall.net
  With my username eRr0r404a

  Scenario: Successful solution
    Given a encode message
    When I count the number of bits
	  And I notice that the message is a 7 bits encode message
	  And I make a python script that add a 0 each 7 bits
      And convert the each 8 bits to ascii
	  And I find the password
    Then  I solve the challenge
