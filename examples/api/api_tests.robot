*** Settings ***
Documentation    Live API tests. No Chrome window opens.
...              These send messages to a server and check the reply.
...
...              httpbin.org is the service behind the GITS API Practice Center:
...              https://gitsuniversity.org/practice/api-examples/
...
...              jsonplaceholder is a simple fake user/post API for extra practice.

Resource         resources.robot

*** Test Cases ***
Httpbin get is healthy
    [Documentation]    Asking GET /get should come back OK (status 200).
    ${response}=    GET    ${HTTPBIN}/get    expected_status=200    timeout=${REQUEST_TIMEOUT}
    Status Should Be    200    ${response}

Httpbin get echoes the course name
    [Documentation]    If we send course=robot, the reply should repeat it.
    ${response}=    GET    ${HTTPBIN}/get    params=course=robot    expected_status=200    timeout=${REQUEST_TIMEOUT}
    ${body}=    Set Variable    ${response.json()}
    Should Be Equal    ${body}[args][course]    robot

Httpbin json returns a slideshow
    [Documentation]    GET /json should include a slideshow author and title.
    ${response}=    GET    ${HTTPBIN}/json    expected_status=200    timeout=${REQUEST_TIMEOUT}
    ${body}=    Set Variable    ${response.json()}
    Should Be Equal    ${body}[slideshow][author]    Yours Truly
    Should Not Be Empty    ${body}[slideshow][title]

Httpbin missing page returns 404
    [Documentation]    Status 404 means “this is not here.” That can still be a passing test.
    ${response}=    GET    ${HTTPBIN}/status/404    expected_status=404    timeout=${REQUEST_TIMEOUT}
    Status Should Be    404    ${response}

Httpbin post echoes the student name
    [Documentation]    POST /post should send our JSON back in the reply.
    ${payload}=    Create Dictionary    firstName=John    lastName=Doe
    ${response}=    POST    ${HTTPBIN}/post    json=${payload}    expected_status=200    timeout=${REQUEST_TIMEOUT}
    ${body}=    Set Variable    ${response.json()}
    Should Be Equal    ${body}[json][firstName]    John
    Should Be Equal    ${body}[json][lastName]    Doe

Jsonplaceholder returns the first user
    [Documentation]    A real-looking user API. User 1 should be Leanne Graham.
    ${response}=    GET    ${JSONPLACEHOLDER}/users/1    expected_status=200    timeout=${REQUEST_TIMEOUT}
    ${body}=    Set Variable    ${response.json()}
    Should Be Equal As Integers    ${body}[id]    1
    Should Be Equal    ${body}[name]    Leanne Graham
    Should Be Equal    ${body}[email]    Sincere@april.biz

Jsonplaceholder missing user returns 404
    [Documentation]    User 9999 does not exist, so the API should say 404.
    ${response}=    GET    ${JSONPLACEHOLDER}/users/9999    expected_status=404    timeout=${REQUEST_TIMEOUT}
    Status Should Be    404    ${response}

Jsonplaceholder create post returns 201
    [Documentation]    POST /posts should accept a new post and return 201 Created.
    ${payload}=    Create Dictionary    title=Robot Framework practice    body=Learning API tests    userId=${1}
    ${response}=    POST    ${JSONPLACEHOLDER}/posts    json=${payload}    expected_status=201    timeout=${REQUEST_TIMEOUT}
    ${body}=    Set Variable    ${response.json()}
    Should Be Equal    ${body}[title]    Robot Framework practice
    Should Be Equal As Integers    ${body}[userId]    1
    Should Be True    ${body}[id] > 0
