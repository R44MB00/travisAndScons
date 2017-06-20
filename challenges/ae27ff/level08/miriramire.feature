Feature: ae27ff level 8
    From site ae27ff
    From Crypto training category
    With my username miriramire

    Background:
        Given the fact that I am registered on the site ae27ff
        And I have Windows 10 Operating System

    Scenario: First failed attempt
        Given a clue that we got a math operation
      	And a clue that the math is in an image
        When I try to filter the image with a steganography
        And I didn't find anything
	      Then I failed

    Scenario: Successful solution
        Given a clue that we got a math operation
	      And a clue that the math is in an image
	      Then I resolve the math operation an I got as result 7108
	      And I change the URL for 7180.php
        When I see the source code I found an image in the comments res/horrible_2.jpg
	      Then I realized that when you turn the numbers and change it for letters the result is boil
        And I change the URL for boil.php
	      Then I solve the challenge
