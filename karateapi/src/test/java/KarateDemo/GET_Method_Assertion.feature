Feature: GET mothos, URL, Path param

Background: Define URL
Given url "https://dummyjson.com/"
* print "Starting Scenario"

#Scenario: Scenario1
#When, Then, And, *, But, Given, URl, path, get -> 
#When path "products"
#When method get
#Then status 200 
#And print response
#* print response.products[0].title
#* print response.products[10].images[0]
#
#
#Scenario: Scenario2
#
#When, Then, And, *, But, Given -> 
#When path "products/1"
#When method get
#Then status 200 
#And print response

Scenario: Scenario3
When url "https://jsonplaceholder.typicode.com/users"
When method get
Then status 200
And print response
And match response == $

Scenario: Scenario4
* def exp_result = 
"""
{
    "id": 1,
    "title": "iPhone 9",
    "description": "An apple mobile which is nothing like apple",
    "price": 549,
    "discountPercentage": 12.96,
    "rating": 4.69,
    "stock": 94,
    "brand": "Apple",
    "category": "smartphones",
    "thumbnail": "https://i.dummyjson.com/data/products/1/thumbnail.jpg",
    "images": [
        "https://i.dummyjson.com/data/products/1/1.jpg",
        "https://i.dummyjson.com/data/products/1/2.jpg",
        "https://i.dummyjson.com/data/products/1/3.jpg",
        "https://i.dummyjson.com/data/products/1/4.jpg",
        "https://i.dummyjson.com/data/products/1/thumbnail.jpg"
    ]
}

"""
When url "https://dummyjson.com/"
When path "products/1"
When method get
Then status 200 
And print response
And match response == exp_result
And match response contains {"id":1, "brand":"Apple"}
And match response !contains {"rating": 100}
And match response == "#object"
And match response.images == "#[5]"
And match response.stock == "#notnull"
And match response.images == "#array"














