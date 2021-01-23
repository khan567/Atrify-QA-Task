Feature: Donut Priority Queue for premium and regular customers

  Scenario Outline: Adding order to queue successfully by Premium and Regular Client
    Given User login with "<ClientID>" belongs to "<ClientType>"
    When User add "<Donuts>" to the order
    Then User sees "<Message>"

    Examples:
      | ClientID | Donuts | ClientType | Message                     |
      | 999      | 10     | Premium    | Order created successfully  |
      | 20000    | 10     | Regular    | order created successfully  |

  Scenario Outline: Premium and Regular Client should not able to place more than one order
    Given User login with "<ClientID>" belongs to "<ClientType>"
    When User add "<Donuts>" to the order
    Then User sees "<Message1>"
    When User try to create second order of "<Donuts>"
    Then User sees "<Message2>"

    Examples:
      | ClientID | ClientType | Donuts | Message1                      | Message2           |
      | 999      | Premium    | 10     |  order created successfully   |order already exist |
      | 20000    | Regular    | 10     |  order created successfully   |order already exist |

  Scenario Outline: Premium and Regular Client should not able to edit existing order
    Given User login with "<ClientID>" belongs to "<ClientType>"
    When User add "<Donuts>" to the order
    Then User sees "<Message1>"
    When User try to edit the above created order
    Then User sees "<Message2>"

    Examples:
      | ClientID | ClientType | Donuts | Message1                    | Message2                |
      | 999 	 | Premium    | 10     | Order created successfully  | Order can not be edited |
      | 20000    | Regular    | 10     | Order created successfully  | Order can not be edited |

  Scenario Outline: Premium and Regular Client should be able to cancel the existing order
    Given User login with "<ClientID>" belongs to "<ClientType>"
    And User has already existed order
    When User cancel the existing order for "<ClientID>"
    Then User sees "<Message>"

    Examples:
      | ClientID | ClientType | Message                      |
      | 999      | Premium    | Order cancelled successfully |
      | 20000    | Regular    | Order cancelled successfully |

  Scenario Outline: Orders should be sorted by the number of seconds they are in the queue
    Given User login with "<ClientID1>" belongs to "<ClientType1>"
    When User place an order with "<Donuts>"
    Then User sees "<Message>"
    Given User login with "<ClientID2>" belongs to "<ClientType2>"
    When User place an order with "<Donuts>"
    Then User sees "<Message>"
    And User sees order are sorted by the number of seconds

Examples:
      | ClientType1 |ClientType2 |ClientID1 |ClientID2 | Donuts | Message                    |
      | Regular    | Regular     |  1001    |	 1002  | 10     | Order created successfully |
      | Premium    | Premium     |  998     |	 999   | 10     | Order created successfully |


  Scenario Outline: Orders from premium customers always have a higher priority than orders from regular customers
    Given User login with "<ClientID1>" belongs to "<ClientType1>"
    When User place an order with "<Donuts>"
    Then User sees "<Message>"
    Given User login with "<ClientID2>" belongs to "<ClientType2>"
    When User place an order with "<Donuts>"
    Then User sees "<Message>"
    And User sees order from premium customers is given higher priority

    Examples:
      | ClientType1 |ClientType2  | ClientID1 |ClientID2 | Donuts | Message                    |
      | Regular     | Premium     |  1001     |	 999     | 10     | Order created successfully |
      | Premium     | Regular     |  998      |	 1002    | 10     | Order created successfully |


  Scenario: Client should be able to check the queue position and wait time
    Given User having order in the queue
    Then User sees order position in the queue along with wait time
    And Wait time should change based on orders in the queue

  Scenario: Manager should be able to see all entries in the queue with the approximate wait time
    Given There are multiple order in the queue
    When Manager check for entries in the queue
    Then All the entries in the queue are listed along with wait time