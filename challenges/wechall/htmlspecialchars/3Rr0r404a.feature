Feature: Solve the challenge htmlspecialchars
  From www.wechall.net
  With my username eRr0r404a
  
  Scenario: Successful solution
    Given a line of php code that use htmlspecialchars
     And the code is vulnerable to xss
    When I use single quote and the onclick event to make a xss exploit 
	    And I change the single quotes for double quotes in the given code
    Then  I solve the challenge
