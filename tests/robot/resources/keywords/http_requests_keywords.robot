*** Settings ***
Documentation       Http requests keywords
Resource            ../variables.robot
Library             String
Library             OperatingSystem
Library             requests
Library             RequestsLibrary
Library             test_utils.robot.Utils

*** Keywords ***
Make post request
    [Arguments]  ${base_url}  ${uri}  ${rc}  ${headers}  ${data}
                    Create Session               session  ${base_url}  verify=True
    ${resp}=        Post Request                 session    ${uri}     ${data}     headers=${headers}
                    Log to console               ${\n}Response code:'${resp.status_code}', body:'${resp.content}'
                    Log                          Response code:'${resp.status_code}', body:'${resp.content}'
                    Should Be Equal As Strings   ${resp.status_code}  ${rc}
    &{resp_dict}=   Set Variable                 ${resp.json()}
                    Log                          ${resp_dict}
                    Set Test Variable            ${RESPONSE}          ${resp_dict}