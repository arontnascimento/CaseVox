* Settings *
Library           RequestsLibrary

* Variables *
${URL}            http://jsonplaceholder.typicode.com/users

* Test Cases *

    
GET validando o nome Leanne Graham no retorno 
    Create Session    session    ${URL}
    ${response}=      Get Request    session    ${URL}
    Log To Console    ${response}

    Should Be Equal As Strings    ${response.status_code}    200
    ${json_response}=    Set Variable    ${response.json()}
    Log    ${json_response}
    Log    ${response.status_code}
    Log    ${response.content}
    ${response_content_string}    Convert To String    ${response.content}
    Should Contain    ${response_content_string}   "name": "Leanne Graham"


Post 
    ${BODY}    Set Variable    {"name": "Aron Tiago","username": "Bret","email": "Sincere@april.biz","address": {"street": "Kulas Light","suite": "Apt. 556","city": "Gwenborough","zipcode": "92998-3874","geo": {"lat": "-37.3159","lng": "81.1496"}},"phone": "1-770-736-8031 x56442","website": "hildegard.org","company": {"name": "Romaguera-Crona","catchPhrase": "Multi-layered client-server neural-net","bs": "harness real-time e-markets"}}
    
    Create Session    session    ${URL}
    ${response}=      Post Request    session    ${URL}     ${BODY}
    Log To Console    ${response}

    Should Be Equal As Strings    ${response.status_code}    201
    ${json_response}=    Set Variable    ${response.json()}
    Log    ${json_response}
    Log    ${response.status_code}
    Log    ${response.content}
    ${response_content_string}    Convert To String    ${response.content}
    Should Contain    ${response_content_string}   "id": 11

    

Put
    ${BODY}    Set Variable    {"id": 1,"name": "nome modificado"}
    
    Create Session    session    ${URL}
    ${response}=      Put Request    session    ${URL}/1     ${BODY}
    Log To Console    ${response}

    Should Be Equal As Strings    ${response.status_code}    200
    ${json_response}=    Set Variable    ${response.json()}
    Log    ${json_response}
    Log    ${response.status_code}
    Log    ${response.content}
    ${response_content_string}    Convert To String    ${response.content}
    Should Contain    ${response_content_string}  "id": 1
    

Delete    
    Create Session    session    ${URL}
    ${response}=      Delete Request    session    ${URL}/2
    Log To Console    ${response}

    Should Be Equal As Strings    ${response.status_code}    200
    ${json_response}=    Set Variable    ${response.json()}
    Log    ${json_response}
    Log    ${response.status_code}
    Log    ${response.content}
    ${response_content_string}    Convert To String    ${response.content}
