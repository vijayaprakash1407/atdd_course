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

  Scenario: Name is required
    When I try to checkout without a name
    Then I should see the error message "Name can't be blank"