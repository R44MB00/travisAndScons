# language: en

Feature: Solve Crackme 2 challenge
  From site yashira
  From Reverse Engineering category
  With my username jaguir11

  Background:
    Given the fact that I am registered in the site yashira
    And I have Windows 7 Operating System
    And I have solved crackme 1

  Scenario: Successful solution
    Given an executable file
    And the fact that it looks like it never validates my password
    And the offset for the string reference "Good, Ingresa el pass: "
    When I look at the instructions before the reference
    And I see some calls made
    And I see a comparison to the string "23420"
    And I see another comparison to the string "-69"
    When I run the debug again
    And I enter the password "23420-69"
    And I get past the initial validations
    And I get a pop-up message with the password
    Then I solve the challenge
