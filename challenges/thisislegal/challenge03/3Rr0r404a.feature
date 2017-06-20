Feature: Solve the challenge 3
  From www.thisislegal.com
  From Basic Challenges
  With ny username 3Rr0r404a

  Background:
    Given the file c99.txt hosted in www.thisislegal.com/challenge3/c_99.txt

  Scenario: Successful solution
    Given a web page with a url parameter file
    When I set the file parameter with the given file url
    Then  I solve the challenge
