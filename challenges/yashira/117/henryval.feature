# language: en

Feature: Solve the challenge 117
  Called RFI 1
  From the yashira.org website
  From the Seguridad category
  With my username henryval

  Background:
    Given a non-existing vulnerable domain
    And its vulnerable script
    And a rute to find

  Scenario: Failed Attempt
    When I look on the internet for a way to do RFIs
    Then I find out about what they are
    And some default routes for php servers
    Then I come up with a coherent solution
    And I try it
    And I don't solve the challenge
    But I conclude I have to try something else
    
  Scenario: Successful solution
    When I look for clues on the forum
    Then I find a nice hint about a syntaxis problem
    And I investigate some more about the vulnerable URL
    And where the script should go
    And what's the vulnerable variable
    Then I find the solution
    And I solve the challenge
