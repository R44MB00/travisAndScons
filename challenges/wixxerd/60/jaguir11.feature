# language: en

Feature: Solve Javascript Entertainment challenge
    From site Wixxerd
    From enumaration category
    With my username jaguir11

    Background:
        Given the fact that I am registered on the site wixxerd
        And I have Windows 7 Operating System

    Scenario: Successful solution
        Given a button that executes a script
        And the script
        When I look at the button source
        And I see the script calculates the password value
        Then I execute the script to find out the answer
        Then I solve the challenge
