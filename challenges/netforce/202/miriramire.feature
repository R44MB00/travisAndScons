Feature: net-force 202 Decompile me...
From site net-force
From Java Applets category
With my username miriramire

Background:
    Given the fact that I am registered on the site net-force
    And I have Windows 10 Operating System

Scenario: Successful solution
    Given a clue that in the open source there is a link to download a file
    When I compile the file .class
    Then I search for the password
    And I found the answer
    Then I solve the challenge
