Feature:
  In order to
  As a
  I want

  Scenario:
    Given I am shopping for puppies
    When I click the first view details button
    And I click the adopt me button
    And I click the complete adoption button
    And I leave the name field blank
    And I enter "123 Main street" in the address field
    And I enter "randy@leandog.com" in the email field
    And I select "Credit card" in the pay type field
    And I click the place order button
    Then I should see "Name can't be blank"
