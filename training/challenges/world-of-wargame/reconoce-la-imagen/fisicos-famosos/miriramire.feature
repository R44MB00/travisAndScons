Feature: world-of-wargame 19 Fisicos Famosos
    From site world-of-wargame
    From recognize the image  category
    With my username miriramire

    Background:
        Given the fact that I am registered on the site world-of-wargame

    Scenario: Successful solution
        Given a clue that there are three images
        When I recognize the three physicists
        And I put the answer in world-of-wargame
        Then I solve the challenge
