Feature: Adding

    Scenario Outline: Add two numbers
    Given the number <first> and <second>
    When the calculator sum them
    Then the output should be "<output>"

    Examples:
        | first | second | output |
        | 2     | 2      | 4      |
        | 98    | 1      | 99     |

