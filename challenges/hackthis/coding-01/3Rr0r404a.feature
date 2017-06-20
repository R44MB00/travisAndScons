Feature: Solve the challenge Coding Level 1
  From www.hackthis.co.uk
  From Lavels Coding
  With ny username 3Rr0r404a
  
  Background:
    Given a word list to sort
	    And a timeout to sort them

  Scenario: Successful solution
    Given text area with words to sort
    When I write a javascript function
	    And the function get the value of the text area
	    And the function use the javascript function sort
	    And the function set the text area with the sort words
	    And the function use the submit method to submit the form
    Then I solve the challenge
