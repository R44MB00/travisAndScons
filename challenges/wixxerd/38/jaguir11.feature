# language: en

Feature: Solve Where Ya Coming From challenge
    From site Wixxerd
    From enumaration category
    With my username jaguir11

    Background:
        Given the fact that I am registered on the site wixxerd
        And I have Windows 7 Operating System
        And a browser extention to tamper request

    Scenario: First failed attempt
        Given a link to the challenge
        When I try go to the link
        And I get an invalid referring domain
        Then I realize I have to change the referring domain

    Scenario: Successful solution
        Given a link to the challenge
        And an invalid referring domain error
        And the desired domain
        When I intercept the request
        And I change the referring domain in the header
        Then I solve the challenge
