Feature: Solve the challenge Realistic 4
  From www.hackthissite.org
  From Realistic missions
  With my username 3Rr0r404a
  
  Background:
    Given a message from SaveTheWhales
	
  Scenario: Successful solution
    Given the fischer's animal products web page
    When I try to save the email 123 in the mailing list form
      And I receive an error message tha reveals the existence of the table email	
	    And I use a union select 1,2,3,4 in the category parameter
	    And I see that fields 2 and 3 are displayed on the page
	    And I use category=1%20UNION%20ALL%20SELECT%201,%20*,%203,%204%20FROM%20email
	    And I send the email list to SaveTheWhales
    Then  I solve the challenge
