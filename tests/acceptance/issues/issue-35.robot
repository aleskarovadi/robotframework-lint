*** Settings ***
Documentation    Suite description
Library     OperatingSystem
Resource    ../SharedKeywords.robot
Test Teardown    Run keyword if    "${TEST STATUS}" == "FAIL"    Log    ${result.stdout}\n${result.stderr}

*** Test Cases ***
Issue 35
    [Tags]    issue-35
    [Documentation]    Write documentation
    Set environment variable    PYTHONIOENCODING    utf-8
    Run rf-lint with the following options:    test_data/acceptance/issue-35.robot
    Rflint should report ${3} errors
    Rflint should report ${2} warnings
    Stderr should be    ${EMPTY}
    Output should contain    + test_data/acceptance/issue-35.robot
    Output should contain    W: 33, 0: Unknown table name 'Настройки' (InvalidTable)
    Output should contain    E: 27, 0: Duplicate keyword name 'Reapeted keyword повтор' (DuplicateKeywordNames)
    Output should contain    E: 16, 0: Duplicate testcase name 'Testcase 1 повтор' (DuplicateTestNames)
    Output should contain    E: 5, 0: space not allowed in tag name: 'tag with пробел' (TagWithSpaces)
    Output should contain    W: 11, 0: '.' in testcase name 'Точка in testcase name.1' (PeriodInTestName)
