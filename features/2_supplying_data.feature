Feature: Supplying data
  In order to have enough information to complete a puppy adoption
  As a adoption agency fulfillment agent
  I want to ensure the adopter provides all necessary information

  Background:
    Given I am shopping for puppies
    When I view the puppy "Brook"
    And I click the adopt me button
    And I click the complete adoption button

  Scenario: using a table
    When I checkout with:
  | name  | address         | email             | pay_type    | expected_message               |
  | Randy | 123 Main street | randy@leandog.com | Credit card | Thank you for adopting a puppy |
    Then I should see "Thank you for adopting a puppy"

  Scenario: Example using default data
    When I checkout
    Then I should see "Thank you for adopting a puppy"

  Scenario: Example using overriding default data
    When I checkout using a purchase order
    Then I should see "Thank you for adopting a puppy"





