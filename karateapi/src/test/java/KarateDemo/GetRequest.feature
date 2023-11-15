Feature: GET mothos, URL, Path param

Scenario: Get request
 Given url 'https://www.kloia.com/'
 And path 'blog', 'karate'
 When method GET
 Then status 200
 


Scenario: Scenario1

#When, Then, And, *, But, Given -> 

Given url "https://dummyjson.com/products"
When method get
Then status 200 
And print response
* print response.products[0].title
* print response.products[10].images[0]
* print response.products[10].images


