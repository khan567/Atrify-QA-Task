Feature: Place Order
  Scenario Outline: Adding order to queue successfully by Premium and Regular Client
    Given User login with <ClientID> belongs to <ClientType>
    When User add <Donuts> to the order
    Then User sees <Message>

    Examples:
      | ClientID | Donuts | ClientType | Message                      |
      | 999      | 10     | Premium    |“Order created successfully”  |
      | 20000    | 10     | Regular    |“order created successfully”  |


  Scenario Outline: Premium and Regular Client should not able to place more than one order
    Given User login with <ClientID> belongs to <ClientType>
    When User add <Donuts> to the order
    Then User sees order created successfully
    When User try to create second order of <Donuts>
    Then User sees <Message>

    Examples:
      | ClientID | ClientType | Donuts | Message               |
      | 999      | Premium    | 10     | “order already exist” |
      | 20000    | Regular    | 10     | “order already exist” |

  Scenario Outline: Premium and Regular Client should not able to edit existing order
    Given User login with "<ClientID>" belongs to "<ClientType>"
    When User add "<Donuts>" to the order
    Then User sees order created successfully
    When User try to edit the above created order
    Then User sees <Message>

    Examples:
      | ClientID | ClientType | Donuts | Message                    |
      | 999 	  | Premium    | 10     | “Order can not be edited”  |
      | 20000    | Regular    | 10     | “Order can not be edited”  |

  Scenario Outline: Premium and Regular Client should be able to cancel the existing order
    Given User login with "<ClientID>" belongs to "<ClientType>"
    And User has already existed order
    When User cancel the existing order for "<ClientID>"
    Then User sees <Message>

    Examples:
      | ClientID | ClientType | Message                        |
      | 999      | Premium    | “Order cancelled successfully” |
      | 20000    | Regular    | “Order cancelled successfully” |


  Scenario Outline: Orders should be sorted by the number of seconds they are in the queue
    Given User is a regular customer login with <ClientID1>
    When User place an order with "10" donuts
    Then User sees <Message> for <ClientID1>
    Given User is a regular customer with <ClientID2>
    When User place an order with "20" donuts
    Then User sees <Message> for <ClientID2>
    And User sees order are sorted by the number of seconds

Examples:
      | ClientID1 | ClientID2 | Message                      |
      | 1001      | 1002	| “Order created successfully” |

  Scenario Outline: Orders from premium customers always have a higher priority than orders from regular customers
    Given User is a <ClientType> with <ClientID>
    When User place an order with "10" donuts
    Then User sees <Message> for <ClientID>
    Given User is a <ClientType> with <ClientID>
    When User place an order with "20" donuts
    Then User sees <Message> for <ClientID>
    And User sees order from premium customers is given higher priority

Examples:
      |ClientType       | ClientID   | Message                      |
      |Regular customer | 1001       | “Order created successfully” |
      |Premium customer | 999        | “Order created successfully” |

  Scenario: Client should be able to check the queue position and wait time
    Given User is a "Regular" client having order in the queue
    Then User sees order position in the queue along with wait time
    And Wait time should change based on orders in the queue



  Scenario:Manager should be able to see all entries in the queue with the approximate wait time
    Given There are multiple order in the queue
    When Manager check for entries in the queue
    Then All the entries in the queue are listed along with wait time