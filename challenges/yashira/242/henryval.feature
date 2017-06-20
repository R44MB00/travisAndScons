# language: en

Feature: Solve the challenge 242
  Called Confused Validation System
  From the yashira website
  From the Lenguajes Diseño Web category
  With my username henryval

  Background:
    Given the challenge
    And its source code
    And I have access to internet

  Scenario: Failed Attempt
    Given the challenge
	When I look into the source code
	Then I find a lot of javascript functions
	And I try some coherent credentials
	Then I don't solve the challenge
	But I realize I have to try the other functions

  Scenario: Successful solution
    When I look into the others functions
    And I find the right credentials
    Then I find the solution
    And I solve the challenge
