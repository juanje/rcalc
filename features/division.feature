Feature: Division

    Scenario Outline: Divide two numbers
    Given the number <first> and <second>
    When the calculator divide the <first> by the <second>
    Then the output should be "<result>"

    Examples:
        | first | second | result |
        | 4     |    2   | 2      |
        | 20    |    4   | 5      |


