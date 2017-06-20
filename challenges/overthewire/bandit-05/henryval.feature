#language: en

Feature: Solve Level 4-5: Bandit5 challenge
  From site overthewire
  From the Bandit category

  Background:
    Given a SSH connection to bandit.labs.overthewire.org
    And the username
    And I have the Linux Mint OS

  Scenario: Successful solution
    When I connect to OTW through SSH
    And I run the ls command with the file
    Then I see the directory and I access it
    And I run the ls command to see all the files
    When I try the right file
    Then I see its content
    And I find the solution
    Then I solve the challenge
