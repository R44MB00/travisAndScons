# language: en

Feature: Solve Realistic 4 challenge
  From site hackthissite
  From Realistic category
  With my username jaguir11

  Background:
    Given the fact that I am registered in site wechall
    And I have Windows 7 Operating System

  Scenario: First failed attempt
    Given a website that lists products
    And a button to insert a new email into the mailing list
    When I add add an invalid email
    And I see an error message with the email table name
    Then I use sqli to select all elements in that table
    And I get nothing
    Then I realize I need to learn more about sqli

  Scenario: Second failed attempt
    Given a website that lists products
    And the name of the email table
    And some new knowledge about UNION Based sqli
    When I try to ennumerate the columns in the table
    And I get a blanc page, I keep adding columns
    Then I finally got a valid page back
    And I understand I now know the number of columns in the table
    Then I realize I need to know which columns give me the values I need

  Scenario: Third failed attempt
    Given a website that lists products
    And the name of the email table
    And the correct number of columns in the table
    When I change the initial paramter to a negative number
    And I get a valid page with two numbers on it
    And I realize those are the columns which echo back data
    Then I replace those columns numbers with the right name
    And I get a blanc page back
    And I do not solve the challenge

  Scenario: Successful solution
    Given a website that lists products
    And the name of the email table
    And the correct number of columns in the table
    And the exact columns that echo back data
    When I place my injection in the url
    Then I get a valid page with a list of products and emails
    And I send the page source to the user that requested it
    And I solve the challenge
