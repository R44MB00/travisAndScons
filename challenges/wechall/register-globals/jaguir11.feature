# language: en

Feature: Solve Register Globals challenge
    From site Wechall
    From php training category
    With my username jaguir11

    Background:
        Given the fact that I am registered on the site wechall
        And I have Windows 7 Operating System

    Scenario: First failed attempt
        Given a PHP script
        And a test account for the script
        And a clue that the register globals is enabled
        When I try to log in with admin and a default password
        And I get an error
        Then I decide to read some more about register globals

    Scenario: Second failed attempt
        Given a PHP script
        And a clue that the register globals is enabled
        And some knowing the vars in the request are available for the script
        When I try to add the value for username, admin, in the URL
        And I get an error
        Then I realize I have to try something else

    Scenario: Successful solution
        Given a PHP script
        And an example of the script in action
        And my last failed attempt
        When I read the source once again I see the value expected is an array
        And I try to add the value in the URL as a position in an array
        Then I solve the challenge
