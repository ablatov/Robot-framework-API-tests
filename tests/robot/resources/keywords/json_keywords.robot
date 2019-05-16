*** Settings ***
Documentation       Json files robot resources
Resource            ../variables.robot
Library             OperatingSystem

*** Keywords ***
Make json from file
    [Arguments]  ${path_to_file}
    ${file} =  Abs path for file  ${path_to_file}
    ${json} =  Json from file 	  ${file}
    [Return]  ${json}