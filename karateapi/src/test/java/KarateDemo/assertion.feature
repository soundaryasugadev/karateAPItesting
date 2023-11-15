Feature: Check list of users   

Background: 
* url 'https://reqres.in/api/users'
* def expectedOutput = read("exp_result.json")

Scenario: Get list of all the users

Given param page = 2     
When method GET      
Then status 200 
And print response

Scenario: match json

Given param page = 2     
When method GET      
Then status 200 
And print response
#Assert whole actual JSON against expected JSON using match equals (==)
And match response == $
And match response == expectedOutput
And match response == 
"""
{
  "page": 2,
  "per_page": 6,
  "total": 12,
  "total_pages": 2,
  "data": [
    {
      "id": 7,
      "email": "michael.lawson@reqres.in",
      "first_name": "Michael",
      "last_name": "Lawson",
      "avatar": "https://reqres.in/img/faces/7-image.jpg"
    },
    {
      "id": 8,
      "email": "lindsay.ferguson@reqres.in",
      "first_name": "Lindsay",
      "last_name": "Ferguson",
      "avatar": "https://reqres.in/img/faces/8-image.jpg"
    },
    {
      "id": 9,
      "email": "tobias.funke@reqres.in",
      "first_name": "Tobias",
      "last_name": "Funke",
      "avatar": "https://reqres.in/img/faces/9-image.jpg"
    },
{
      "id": 10,
      "email": "byron.fields@reqres.in",
      "first_name": "Byron",
      "last_name": "Fields",
      "avatar": "https://reqres.in/img/faces/10-image.jpg"
    },
    {
      "id": 11,
      "email": "george.edwards@reqres.in",
      "first_name": "George",
      "last_name": "Edwards",
      "avatar": "https://reqres.in/img/faces/11-image.jpg"
    },
    {
      "id": 12,
      "email": "rachel.howell@reqres.in",
      "first_name": "Rachel",
      "last_name": "Howell",
      "avatar": "https://reqres.in/img/faces/12-image.jpg"
    }
  ],
  "support": {
    "url": "https://reqres.in/#support-heading",
    "text": "To keep ReqRes free, contributions towards server costs are appreciated!"
  }
}
 """
 
 #To check whether particular field is present and not null using match !null
And match response.data[0].first_name != null

#To assert response by ignoring value of particular field in response
And match response.data[0] ==  {"id": 7, "email": "#ignore","first_name": "Michael", "last_name": "Lawson", "avatar": "https://reqres.in/img/faces/7-image.jpg"}

#Assertions using match contains
And match response.data[*].id contains [7, 8, 9, 10, 11, 12]
And match response.data[*].id contains [12, 9, 8, 11, 10, 7] 
And match response.data[*].id contains [7, 9, 8, ]
And match response.data[*].email contains 'lindsay.ferguson@reqres.in'
And match response.data[*].first_name contains ['Lindsay', 'Tobias', 'Byron']

#match (not) !contains
And match response.data[*].id !contains [null, 1]
And match response.data[*].id !contains 3
And match response.data[*].id !contains [1, 2, 3]

#match contains only
And match response.data[*].id contains only [7, 8, 9, 10, 11, 12]
And match response.data[*].id contains only [12, 9, 8, 11, 10, 7]

# match size of array
And match response.data == "#[6]"
And match response.data[0].first_name == "#string"
And match response.data[0].id == "#number"

# we can use a marker to indicate whether we expect a null value or not:
#
#null
#notnull
#Or we can use a marker to match a certain type of value in a field:
#
#boolean
#number
#string
#Other markers are available for when we expect a field to contain a JSON object or array:
#
#array
#object



































































And match response.data[0] ==  {"id": 7, "email": "#ignore","first_name": "Michael", "last_name": "Lawson", "avatar": "https://reqres.in/img/faces/7-image.jpg"}