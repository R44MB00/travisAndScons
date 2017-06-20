Feature: net-force 201 Training - Sweet little applet...
    From site net-force
    From Java Applets category
    With my username miriramire

    Background:
        Given the fact that I am registered on the site net-force
        And I have Windows 10 Operating System

    Scenario: Successful solution
        Given a clue that there is a link
        When I open the link and found a solution.php
        Then I change the URL
        And I found the answe
        Then I solve the challenge
