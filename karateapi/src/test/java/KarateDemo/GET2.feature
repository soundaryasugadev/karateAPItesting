
Feature: GET mothos, URL, Path param

Background: Define URL
Given url "https://dummyjson.com/"
* print "Starting Scenario"

Scenario: Scenario1
#When, Then, And, *, But, Given, URl, path, get -> 
When path "products"
When method get
Then status 200 
And print response
* print response.products[0].title
* print response.products[10].images[0]


Scenario: Scenario2

#When, Then, And, *, But, Given -> 
When path "products/1"
When method get
Then status 200 
And print response

===============


Scenario: Scenario2
* print "This is an example for Param keyword"
When param limit = 5
When url "https://dummyjson.com/products"
When method get
Then status 200 
And print response
