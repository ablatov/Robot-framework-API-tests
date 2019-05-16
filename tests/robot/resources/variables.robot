*** Settings ***
Documentation       Robot resources and variables for all tests
Resource            ../resources/keywords/http_requests_keywords.robot
Resource            ../resources/keywords/json_keywords.robot

*** Variables ***
${TEST_SERVICE_HOST}   http://somehost:someport