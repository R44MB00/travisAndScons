Feature: Solve the challenge Real level xmax
  From www.hackthis.co.uk
  From Lavels Real
  With ny username 3Rr0r404a
  Background:
    Given a xmas_new.html page

  Scenario: Successful solution
    Given a page to deface
    When I look for attack vectors in the web page
      And I find the submit.php form
      And I see the source code looking for relevant info
      And I open de mod.php file
      And I use a SQLi to bypass the loggin form
      And I use the form to open the index.php
      And I edit the index.php with the given xmas_new.html page
    Then  I solve the challenge
