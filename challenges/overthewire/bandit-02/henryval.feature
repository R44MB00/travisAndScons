#language: en

Feature: Solve Level 1-2: Bandit2 challenge
  From site overthewire
  From the Bandit category

  Background:
    Given a SSH connection to bandit.labs.overthewire.org
    And the username
    And I have the Linux Mint OS
    And its given the file's name

  Scenario: Failed attempt
    When I connect to OTW through SSH
    And I run the cat command with the name of the file
    Then I'm not able to see its content
    But I know I have to try something else

  Scenario: Successful solution
    When I invetigate for dashed filename
    And I run the command pwd to see my path
    And I run the cat command with the path
    Then I'm able to see the solution
    And I solve the challenge
