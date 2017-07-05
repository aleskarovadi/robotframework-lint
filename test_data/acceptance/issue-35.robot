*** Settings ***
Documentation    Suite description

*** Test Cases ***
Testcase 1 повтор
    [Tags]    tag with пробел
    [Documentation]    Test DuplicateTestNames with non-ASCII symbols (first occurence)
    Log    Duplicate testcase
    No operation

Точка in testcase name.1
    [Documentation]    Test PeriodInTestName with non-ASCII symbols
    Log    Hello
    no operation

Testcase 1 повтор
    [Documentation]    Test DuplicateTestNames with non-ASCII symbols (secodn occurence)
    Log    Duplicate testcase
    No operation

*** Keywords ***
Reapeted keyword повтор
    [Documentation]    Test DuplicateKeywordNames with non-ASCII symbols (first occurence)
    Log    Repeated Keyword
    No operation

Reapeted keyword повтор
    [Documentation]    Test DuplicateKeywordNames with non-ASCII symbols (second occurence)
    Log    Repeated Keyword
    No operation

# Invalid table contains non-ASCII symbols
*** Настройки ***
