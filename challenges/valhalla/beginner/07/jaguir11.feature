# language: en

Feature: Solve Beginners 7 challenge
  From site Valhalla
  From beginners category
  With my username jaguir11

  Background:
    Given the fact that I am registered in site valhalla
    And I have Windows 7 Operating System

  Scenario: Successful solution
    Given a blog
    And a logged in account
    And a post from the blog admin to delete
    And a button to delete my own blog entries
    When I look at the source for the delete button
    And I change the post id to be deleted
    Then I solve the challenge
