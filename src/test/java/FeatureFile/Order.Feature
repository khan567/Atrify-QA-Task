Feature: Place Order
  Scenario Outline: Adding order to queue successfully by "<ClientID>"
    Given User login with"<ClientID>"
    Then User sees the Home page
    When User search for "<Donuts>"
    Then User sees the Donuts
    When User add "<Donuts>" to the order
    Then User sees order created successfully
    And User logout

    Examples:
      | ClientID | Donuts |
      | 999 | 10 |
      | 20000 | 10 |


  Scenario Outline: "<ClientType>" Client should not able to place more than one order
    Given User login with"<ClientID>"
    Then User sees the Home page
    When User search for "<Donuts>"
    Then User sees the Donuts
    When User add "<Donuts>" to the order
    Then User sees order created successfully
    When User search for second order of "<Donuts>"
    Then User sees an error message "order already exist"
    And User logout

    Examples:
      | ClientID | ClientType | Donuts |
      | 999 | Premium | 10 |
      | 20000 | Regular |10 |

  Scenario Outline: "<ClientType>" Client should not able to edit existing order
    Given User login with"<ClientID>"
    Then User sees the Home page
    When User search for "<Donuts>"
    Then User sees the Donuts
    When User add "<Donuts>" to the order
    Then User sees order created successfully
    When User try to edit the above created order
    Then User sees an error message "order can not be edited"
    Then I see an error message "order can not be edited"
    And User logout

    Examples:
      | ClientID | ClientType | Donuts |
      | 999 | Premium | 10 |
      | 20000 | Regular |10 |

  Scenario Outline: "<ClientType>" Client should be able to cancel the existing order
    Given User login with"<ClientID>"
    Then User sees the existing order for "<ClientID>"
    When User cancel the existing order for "<ClientID>"
    Then User sees "order cancelled successfully" message
    And User logout

    Examples:
      | ClientID | ClientType |
      | 999 | Premium |
      | 20000 | Regular |



  Scenario: Orders should be sorted by the number of seconds they are in the queue
    Given User login with regular customer ID "1001"
    Then User sees the Home page
    Then User search for donuts
    When User add donuts to the order
    Then User sees order "1" created successfully
    And User logout
    Given User login with regular customer ID "1002"
    Then User sees the Home page
    Then User search for donuts
    When User add donuts to the order
    Then User sees order "2" created successfully for client ID "1002"
    And User sees orders are sorted by the number of seconds
    And User logout

  Scenario: Orders from premium customers always have a higher priority than orders from regular customers
    Given User login with regular customer ID "1001"
    Then User sees the Home page
    Then User search for donuts
    When User add donuts to the order
    Then User sees order "1" created successfully
    And User logout
    Given User login with premium customer ID "1002"
    When User sees the Home page
    Then User search for donuts
    When User add donuts to the order
    Then User sees order "2" created successfully
    And User sees order from premium customer is given higher priority
    And User logout

  Scenario: Client should be able to check the queue position and wait time
    Given User login with regular customer ID "1001"
    Then User sees the order position in the queue along with wait time
    And Wait time should change based on orders in the queue
    And User logout

  Scenario:Manager should be able to see all entries in the queue with the approximate wait time
    Given Manager login with ID
    When Manager check for entries in the queue
    And There are multiple order in the queue
    Then Manager sees all the entries in the queue are listed along with wait time
    Given There are multiple order in the queue
    When Manager check for entries in the queue
    Then Manager sees all the entries in the queue are listed along with wait time
    And Manager logout
