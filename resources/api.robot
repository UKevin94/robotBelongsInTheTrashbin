*** Settings ***
Library             REST
Documentation       This file contains all operations used with the API

*** Variables ***
${MAIN_ENDPOINT}        http://127.0.0.1:8080/api



*** Keywords ***
Get API Authentification Token
    POST                ${MAIN_ENDPOINT}/authenticate       {"username":"admin","password":"admin","rememberMe":"false"}
    ${ID_TOKEN}=        Output                              $.id_token
    Set Test Variable   ${TOKEN}        ${ID_TOKEN}

Check That The Injected Contact Is Present
    [Arguments]     ${firstname}        ${lastname}
    GET             ${MAIN_ENDPOINT}/contacts/1         headers={"Authorization": "Bearer ${TOKEN}"}
    String          $.firstName         ${firstname}
    String          $.lastName          ${lastname}
