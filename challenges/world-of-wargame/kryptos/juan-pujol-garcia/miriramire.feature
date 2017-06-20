Feature: world-of-wargame 61 Juan Pujol Garcia
    From site world-of-wargame
    From Crypto training category
    With my username miriramire

    Background:
        Given the fact that I am registered on the site world-of-wargame
        And I have Windows 10 Operating System

  Scenario: First failed attempt
        Given a clue that there is an image
        And tehre is a message hidden into the letters
        When I try to decipher using Steganography
        And I realized that there is no message hiden in the image
        Then I failed

    Scenario: Successful solution
        Given a clue that there is a message hidden into the letters
        When I search for Garbos Code
        Then I start to decipher the code
        And I put the answer in world-of-wargame
        Then I solve the challenge
