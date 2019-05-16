*** Settings ***
Documentation   Some API checks
Test Timeout    1 minute
Resource        ../../resources/variables.robot


*** Test Cases ***
Check 0 response code
    [Documentation]  POST /?cmd=predictionReq
    [Tags]  positive
    ${headers} =  Create Dictionary     Content-Type=application/json  Accept=application/json
    ${data} =     Make json from file   path_to_file=resources/test_data/apiResSuccess.json
    Make post request  base_url=${TEST_SERVICE_HOST}
    ...  uri=/?cmd=predictionReq
    ...  rc=200
    ...  headers=${headers}
    ...  data=${data}
    Dictionary Should Contain Item  ${RESPONSE}  targetValName  count
    Dictionary Should Contain Item  ${RESPONSE}  resultCode  0
    Dictionary Should Contain Key   ${RESPONSE}  result

Check 3 response code
    [Documentation]  POST /?cmd=predictionReq
    [Tags]  positive
    ${headers} =  Create Dictionary     Content-Type=application/json  Accept=application/json
    ${data} =     Make json from file   path_to_file=resources/test_data/apiResInvalidRequestFormat.json
    Make post request  base_url=${TEST_SERVICE_HOST}
    ...  uri=/?cmd=predictionReq
    ...  rc=200
    ...  headers=${headers}
    ...  data=${data}
    Dictionary Should Contain Item  ${RESPONSE}  targetValName  count
    Dictionary Should Contain Item  ${RESPONSE}  resultCode  3
    Dictionary Should Contain Key   ${RESPONSE}  result

Check 11 response code
    [Documentation]  POST /?cmd=predictionReq
    [Tags]  positive
    ${headers} =  Create Dictionary     Content-Type=application/json  Accept=application/json
    ${data} =     Make json from file   path_to_file=resources/test_data/apiResPointHasTooManyMissingValues.json
    Make post request  base_url=${TEST_SERVICE_HOST}
    ...  uri=/?cmd=predictionReq
    ...  rc=200
    ...  headers=${headers}
    ...  data=${data}
    Dictionary Should Contain Item  ${RESPONSE}  targetValName  count
    Dictionary Should Contain Item  ${RESPONSE}  resultCode  11
    Dictionary Should Contain Key   ${RESPONSE}  result

Check 12 response code
    [Documentation]  POST /?cmd=predictionReq
    [Tags]  positive
    ${headers} =  Create Dictionary     Content-Type=application/json  Accept=application/json
    ${data} =     Make json from file   path_to_file=resources/test_data/apiResNoPointsForPredict.json
    Make post request  base_url=${TEST_SERVICE_HOST}
    ...  uri=/?cmd=predictionReq
    ...  rc=200
    ...  headers=${headers}
    ...  data=${data}
    Dictionary Should Contain Item  ${RESPONSE}  targetValName  count
    Dictionary Should Contain Item  ${RESPONSE}  resultCode  12
    Dictionary Should Contain Key   ${RESPONSE}  result

Check 13 response code
    [Documentation]  POST /?cmd=predictionReq
    [Tags]  positive
    ${headers} =  Create Dictionary     Content-Type=application/json  Accept=application/json
    ${data} =     Make json from file   path_to_file=resources/test_data/apiResNotEnoughDataForPredict.json
    Make post request  base_url=${TEST_SERVICE_HOST}
    ...  uri=/?cmd=predictionReq
    ...  rc=200
    ...  headers=${headers}
    ...  data=${data}
    Dictionary Should Contain Item  ${RESPONSE}  targetValName  count
    Dictionary Should Contain Item  ${RESPONSE}  resultCode  13
    Dictionary Should Contain Key   ${RESPONSE}  result