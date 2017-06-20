# language: en

Feature: Solve level01
    From site ae27ff
    From php training category
    With my username miriramire

    Background:
        Given the fact that I am registered on the site ae27ff
        And I have Windows 10 Operating System

    Scenario: Successful solution
        Given a clue that the this page is start.php
	      Given a clue that the next is thr3e.php
        When I changed the URL of the page at the end for thr3e.php
        Then I solve the challenge
