Feature: Browse Cds

  So that I can find cds data
  As a person interested in exploring cds
  I want to browse cds by various method

  Scenario: Browsing cds 

    Given a "The Rhythm Method" cd 
    And a "The Real New Fall LP (American Version)" cd 
    When I view the list of cds
    Then the "The Rhythm Method" cd should be included in the list
    And the "Salad. Mmmm."  cd not be included in the list
    And the "The Real New Fall LP (American Version)"  cd be included in the list
