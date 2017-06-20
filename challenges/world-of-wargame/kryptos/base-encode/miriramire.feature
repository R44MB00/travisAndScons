Feature: world-of-wargame 49 Base Encode
    From site world-of-wargame
    From Crypto training category
    With my username miriramire

    Background:
        Given the fact that I am registered on the site world-of-wargame
        And I have Windows 10 Operating System

    Scenario: Successful solution
        Given a clue that there is a file and a combination between base 64 and ascii
        When I download the file .bin
        Then I search to decrypt the file with a base 64 decoder with ascii
        And I put the answer in world-of-wargame
        Then I solve the challenge
