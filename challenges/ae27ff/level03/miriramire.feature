# language: en

Feature: ae27ff level 3
    From site ae27ff
    From php training category
    With my username miriramire

    Background:
        Given the fact that I am registered on the site ae27ff
        And I have Windows 10 Operating System

    Scenario: First failed attempt
        Given a clue that the amount of bits to represent a character
	      And a number to multiply
        When I try to multiply it for 8 a got a different resulto
        And I change the URL for 13616.php
	      Then I failed

    Scenario: Successful solution
        Given a clue that the amount of bits to represent a character
	      And a number to multiply
        And my last failed attempt
        When I read about the amount of numbers to represent a character is 7
	      And I changed the URL for 11914.php
        Then I solve the challenge
