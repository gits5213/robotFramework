*** Settings ***
Documentation    Shared pieces for the live API tests.
...              GITS practice list: https://gitsuniversity.org/practice/api-examples/
...              Those examples are powered by httpbin.org.

Library          RequestsLibrary

*** Variables ***
${HTTPBIN}              https://httpbin.org
${JSONPLACEHOLDER}      https://jsonplaceholder.typicode.com
${REQUEST_TIMEOUT}      30
