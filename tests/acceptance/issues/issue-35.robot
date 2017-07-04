*** Settings ***
Documentation    Suite description
Resource    ../SharedKeywords.robot

*** Test Cases ***
Issue 35
    [Tags]    issue-35
    [Documentation]    Write documentation
    Run rf-lint with the following options:
    ...    test_data/acceptance/issue-35.data.robot
    Rflint should report ${3} errors
    Rflint should report ${3} warnings
    Stderr should be    ${EMPTY}
    Stdout should be
    ...    + test_data/acceptance/issue-35.data.robot
    ...    W: 0, 0: '.' in suite name 'issue-35.data' (PeriodInSuiteName)
    ...    W: 33, 0: Unknown table name 'Comments' (InvalidTable)
    ...    E: 27, 0: Duplicate keyword name 'Reapeted keyword' (DuplicateKeywordNames)
    ...    E: 16, 0: Duplicate testcase name 'Test case 1' (DuplicateTestNames)
    ...    E: 5, 0: space not allowed in tag name: 'tag with пробел' (TagWithSpaces)
    ...    W: 11, 0: '.' in testcase name 'Preiod in testcase name.1' (PeriodInTestName)
