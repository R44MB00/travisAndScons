#language: en

Feature: Solve Level 3-4: Bandit4 challenge
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
    And I run the ls -a command to see the hidden files
    When I run the cat command again
    Then I see the hidden file's content
    And I find the solution
    Then I solve the challenge
