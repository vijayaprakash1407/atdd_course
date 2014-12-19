Feature: Remove implementation details
  In order to remove implementation details from my steps
  As a student
  I want to express behavior in terms of the business and more concisely

  Background:
    Given I am shopping for puppies

  Scenario: Simple adoption
    When I complete the adoption
    Then I should see "Thank you for adopting a puppy"

  Scenario: Name is required
    When I try to checkout without a name
    Then I should see "Name can't be blank"

  Scenario: Address is required
    When I try to checkout without an address
    Then I should see "Address can't be blank"
