# language: en

Feature: ae27ff level 4
    From site ae27ff
    From php training category
    With my username miriramire

    Background:
        Given the fact that I am registered on the site ae27ff
        And I have Windows 10 Operating System

    Scenario: First failed attempt
        Given a clue that we got some numbers
	      And a clue that the spiders can counted with their legs
        When I try to find a number to see an increment or decrement
        And I changed the URL for 160.php
	      Then I failed

    Scenario: Second failed attempt
        Given a clue that we got some numbers
	      And a clue that the spiders can counted with their legs
        When I try to find a number to see an increment or decrement
        And I changed the URL for 90.php
	      Then I failed

    Scenario: Successful solution
        Given a clue that we got some numbers
	      And a clue that the spiders can counted with their legs
        And my last failed attempt
        When I read about the encryption in Hexadecimal
	      And I try to change the URL for manitoba.php
        Then I solve the challenge
