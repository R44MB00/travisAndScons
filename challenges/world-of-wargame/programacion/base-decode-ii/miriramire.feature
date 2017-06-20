Feature: world-of-wargame 50 Base Decode II
    From site world-of-wargame
    From Coding training category
    With my username miriramire

    Background:
        Given the fact that I am registered on the site world-of-wargame
        And I have Windows 10 Operating System

    Scenario: Successful solution
        Given a clue that there is a codification and the letters are reversed
        When I download the file .txt
        Then I build a for to get the reverse and the base64 decode
        And I put the answer in world-of-wargame
        Then I solve the challenge
