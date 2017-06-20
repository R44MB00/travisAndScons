
Feature: ae27ff level 5
    From site ae27ff
    From Examination training category
    With my username miriramire

    Background:
        Given the fact that I am registered on the site ae27ff
        And I have Windows 10 Operating System

    Scenario: Successful solution
        Given a clue is the tittle
	      And the letter
        When I select all the capital letters
        And I changed the URL for talbut.php
	      Then I solve the challenge
