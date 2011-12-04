Feature: Multiply

    Scenario Outline: Multiply two numbers
    Given the number <first> and <second>
    When the calculator multiply them
    Then the output should be "<output>"

    Examples:
        | first | second | output |
        | 2     | 2      | 4      |
        | 3     | 5      | 15     |

