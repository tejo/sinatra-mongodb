Feature: Cd Details  

  So that I want to see more detail for a cd
  As a web user
  I want to be able to easily recognize important details
  Scenario: Viewing a cd with several tracks                          
    Given the disc_id                    
    When I view the cd "1234567"                                                     
    Then I should see a track named "Bad reputation"
    And  I should see a track named "Jhonny the fox"       
                                                                               