Feature:
  In order to have enough information to complete a puppy adoption
  As a adoption agency fulfillment agent
  I want to ensure the adopter provides all necessary information

  Background:
    Given I am shopping for puppies

  Scenario: Name is required
    When I click the first view details button
    And I click the adopt me button
    And I click the complete adoption button
    And I leave the name field blank
    And I enter "123 Main street" in the address field
    And I enter "randy@leandog.com" in the email field
    And I select "Credit card" in the pay type field
    And I click the place order button
    Then I should see "Name can't be blank"

  Scenario: Address is required
    When I click the first view details button
    And I click the adopt me button
    And I click the complete adoption button
    And I enter "Randy" in the name field
    And I leave the address field blank
    And I enter "randy@leandog.com" in the email field
    And I select "Credit card" in the pay type field
    And I click the place order button
    Then I should see "Address can't be blank"



