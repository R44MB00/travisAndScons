Feature: world-of-wargame 81 Batch I
    From site world-of-wargame
    From Coding training category
    With my username miriramire

    Background:
        Given the fact that I am registered on the site world-of-wargame
        And I have Windows 10 Operating System

    Scenario: Successful solution
        Given a file with a code .bat
        When I open the file I can see the code
        Then I find the password that match with cont
        And I put the answer in world-of-wargame
        Then I solve the challenge
