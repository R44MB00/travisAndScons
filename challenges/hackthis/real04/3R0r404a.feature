Feature: Solve the challenge Real level 4
  From www.hackthis.co.uk
  From Lavels Real
  With ny username 3Rr0r404a

  Background:
    Given some situation
      And username Revoked.Mayhem
      And an account 

  Scenario: Successful solution
    Given four page links
    When I enter into the top10 page
      And I test the passwords into loggin form of planetbid using user admin
      And I read planetbid members data base and find the id of Revoked.Mayhem
      And I read the bids data to find information about transaction of the sale
      And I find the buyer id
      And I find the value of the transaction
      And I open again the planetbit members database to get info of the buyer
      And I notice interesting parameters in the members database url
      And I change the value of the parameter 2 by pass
      And I find the hash of nemisis
      And I crack the hash in crackstation.net
      And I delete the logs in planetbit
      And I loggin in email beta whit jfelliot and password found
      And I use the forgot password form of safe transfer with nemisis credentials
      And I read the requested details mail in the nemisis email beta inbox
      And I loogin into safe transfer with nemisis credentials
      And I transfer the amount 1.32 to account 64957746
    Then  I solve the challenge
