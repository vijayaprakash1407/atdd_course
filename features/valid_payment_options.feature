Feature: Valid Payment options
  In order to
  As a
  I want

  Scenario: list of payment options is correct
    Given
    When I am checking out
    Then I see the following payment options:
      | pay_type       |
      | Check          |
      | Credit card    |
      | Purchase order |
