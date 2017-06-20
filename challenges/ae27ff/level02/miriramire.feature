# language: en

Feature: Solve level02
    From site ae27ff
    From php training category
    With my username miriramire

    Background:
        Given the fact that I am registered on the site ae27ff
        And I have Windows 10 Operating System

    Scenario: Successful solution
        Given a clue that the this page got a typo
	      Then I deduced that the mistake is in the URL
        When I changed the URL of the page at the end for three.php
        Then I solve the challenge
