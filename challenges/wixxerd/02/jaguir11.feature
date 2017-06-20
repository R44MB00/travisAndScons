# language: en

Feature: Solve I came I solved I encrypted challenge
    From site Wixxerd
    From enumaration category
    With my username jaguir11

    Background:
        Given the fact that I am registered on the site wixxerd
        And I have Windows 7 Operating System

    Scenario: Successful solution
        Given an encrypted message
        And my assumption of it being a Caesar cipher
        When I tried to decipher it
        And I get a readable message
        Then I solve the challenge
