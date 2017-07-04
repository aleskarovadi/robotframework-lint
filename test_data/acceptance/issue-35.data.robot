*** Settings ***
Documentation    Suite description

*** Test Cases ***
Test case 1
    [Tags]    tag with пробел
    [Documentation]    Test DuplicateTestNames with non-ASCII symbols (first occurence)
    Log    Duplicate testcase
    No operation

Preiod in testcase name.1
    [Documentation]    Test PeriodInTestName with non-ASCII symbols
    Log    Hello
    no operation

Test case 1
    [Documentation]    Test DuplicateTestNames with non-ASCII symbols (secodn occurence)
    Log    Duplicate testcase
    No operation

*** Keywords ***
Reapeted keyword
    [Documentation]    Test DuplicateKeywordNames with non-ASCII symbols (first occurence)
    Log    Repeated Keyword
    No operation

Reapeted keyword
    [Documentation]    Test DuplicateKeywordNames with non-ASCII symbols (second occurence)
    Log    Repeated Keyword
    No operation

# Invalid table contains non-ASCII symbols
*** Comments ***
