Feature: Substract

    Scenario Outline: Substract one number to another
    Given the number <first> and <second>
    When the calculator substract the <second> to the <first>
    Then the output should be "<output>"

    Examples:
        | first | second | output |
        | 4     | 2      | 2      |
        | 99    | 1      | 98     |

