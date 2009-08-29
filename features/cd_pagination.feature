Feature: Cds Pagination

  So that I can find cds data
  As a person interested in exploring cds
  I want to browse cds by page

  Scenario: Browsing cds by page

    Given that I am on page 1 
    When I view the page "1" 
    Then the "Sound Of The Swamp - The Best Of Excello Records, Vol" cd should be included in the list
    When I view the page "2" 
    Then the "Blue Lou CD1" cd should be included in the list