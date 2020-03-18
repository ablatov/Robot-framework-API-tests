*** Settings ***
Library  Selenium2Library

Test Setup     Open Browser	  http://google.com    Firefox   alias=Firefox
Test Teardown  Close all browsers


*** Test Cases ***
Simple google test
	Go to                https://www.google.com
	Page should contain  Google


