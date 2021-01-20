Feature: Place Order
  Scenario Outline: Adding order to queue successfully by "<ClientType>"
    Given User login with"<ClientID>" belongs to "<ClientType>"
    When User add "<Donuts>" to the order
    Then User sees order created successfully

    Examples:
      | ClientID | Donuts | ClientType |
      | 999 | 10 | Premium |
      | 20000 | 10 | Regular |


  Scenario Outline: "<ClientType>" Client should not able to place more than one order
    Given User login with "<ClientID>" belongs to "<ClientType>"
    When User add "<Donuts>" to the order
    Then User sees order created successfully
    When User try to create second order of "<Donuts>"
    Then User sees an error message "order already exist"

    Examples:
      | ClientID | ClientType | Donuts |
      | 999 | Premium | 10 |
      | 20000 | Regular |10 |

  Scenario Outline: "<ClientType>" Client should not able to edit existing order
    Given User login with "<ClientID>" belongs to "<ClientType>"
    When User add "<Donuts>" to the order
    Then User sees order created successfully
    When User try to edit the above created order
    Then User sees an error message "order can not be edited"

    Examples:
      | ClientID | ClientType | Donuts |
      | 999 | Premium | 10 |
      | 20000 | Regular |10 |

  Scenario Outline: "<ClientType>" Client should be able to cancel the existing order
    Given User login with "<ClientID>" belongs to "<ClientType>"
    And User has already existed order
    When User cancel the existing order for "<ClientID>"
    Then User sees "order cancelled successfully" message

    Examples:
      | ClientID | ClientType |
      | 999 | Premium |
      | 20000 | Regular |



Feature: Place Order
  Scenario: Orders should be sorted by the number of seconds they are in the queue
    Given User is a regular customer login with client ID "1001"
    When User place an order with "10" donuts
    Then User sees order "1" created successfully for client ID "1001"
    Given User is a regular customer with client ID "1002"
    When User place an order with "20" donuts
    Then User sees order "2" created successfully for client ID "1002"
    And User sees order are sorted by the number of seconds

  Scenario: Orders from premium customers always have a higher priority than orders from regular customers
    Given User is a regular customer with client ID "1001"
    When User place an order with "10" donuts
    Then User sees order "1" created successfully for client ID "1001"
    Given User is a premium customer with client ID "999"
    When User place an order with "20" donuts
    Then User sees order "2" created successfully for client ID "999"
    And User sees order from premium customers is given higher priority

  Scenario: Client should be able to check the queue position and wait time
    Given User is a "Regular" client having order in the queue
    Then User sees my order position in the queue along with wait time
    And Wait time should change based on orders in the queue

  Scenario:Manager should be able to see all entries in the queue with the approximate wait time
    Given There are multiple order in the queue
    When Manager check for entries in the queue
    Then All the entries in the queue are listed along with wait time