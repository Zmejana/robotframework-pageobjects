*** Settings ***

Documentation  Tests for Robot Framework Page Object package.
...
Library    widget_rel_uri_attr.Page
Library    widget_rel_uri_attr.SearchResultPage

*** Test Cases ***

Test Widget Site
    Open Browser  ${BASEURL}/site/index.html
    #Search Widget Page For  cool thing

    # This will fail the assertion
    Title Should Be  foo
    [Teardown]  Close Widget Page
