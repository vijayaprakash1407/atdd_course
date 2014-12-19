Feature: Valid Payment options
  In order
  As a
  I want

  Scenario: list of payment options is correct
    Given I am shopping for puppies
    When I am checking out
    Then I see the following payment options:
      | pay_type       |
      | Check          |
      | Credit card    |
      | Purchase order |
