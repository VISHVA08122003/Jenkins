***Settings***
Documentation   This robot framework used for github work
Library         DataDriver  file=${EXCEL}   sheet=data
Library         ${CURDIR}/sample.py
Test Template   Sample
Library         Collections

***Variables***
${EXCEL}    ${CURDIR}/robot.xlsx

***Test Cases***
Test case using for the github :: ${test_id}

***Keywords***
Sample
    [Arguments]    ${test_id}   ${test_case}    ${num1}    ${num2}

    ${final_data}   extract_data_from_excel    ${EXCEL}   data
    Log     ${final_data}

    ${sum_output}   add     ${num1}     ${num2}
    Log     ${sum_output}