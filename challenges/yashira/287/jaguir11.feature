# language: en

Feature: Solve Acerca de los Dominios 5 challenge
  From site yashira
  From Mix category
  With my username jaguir11

  Background:
    Given the fact that I am registered in site yashira
    And I have Windows 7 Operating System

  Scenario: Successful solution
    Given a domain name
    And I the fact that I need to find descriptive information of the domain
	When I search on google for the different types of DNS records
	And I read about the TXT Record
	And I then search for the TXT records of the domain
	And I see a password
    Then I solve the challenge
