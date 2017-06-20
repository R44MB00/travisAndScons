Feature: Solve the challenge Coding Level 2
  From www.hackthis.co.uk
  From Lavels Coding
  With ny username 3Rr0r404a
  
  Background:
    Given an encoded string
	    And an encryption method

  Scenario: Successful solution
    Given text area with encoded message
    When I write a javascript function
	    And the function set variable data with the value of the text area
      And the function set each value in data to variable step1
	    And the function substract 32 to variable step1
      And the function set the variable step2 with substract step1 to 95
      And the function set the variable step3 with the adding of step2 and 31
      And the function use String.fromCharCode() to get the ascii character
	    And the function set the text area with the decoded string
	    And the function use the submit method to submit the form
    Then I solve the challenge
