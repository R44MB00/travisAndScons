Feature: world-of-wargame 66 Videojuegos
From site world-of-wargame
From Recognize the image category
With my username miriramire

Background:
    Given the fact that I am registered on the site world-of-wargame

Scenario: Successful solution
    Given a clue that there are two images
    When I recognize both videogames
  	Then I search for who create themn
    And I put the answer in world-of-wargame
    Then I solve the challenge
