Feature: Am testing full method

Background: 
Given url loginUrl
#Given path "users/login"
#When request {user: {email: "jsoundarya2017@gmail.com", password: "@Password17"}}
#When method post
#Then status 200
#Then print response
#And def authtoken = response.user.token
#And print authtoken

#* def tokenResponse = call read('classpath:helpers/CreateToken.feature')
#* def tokenResponse = callonce read('classpath:helpers/CreateToken.feature')
#{"email": "jsoundarya2017@gmail.com", "password": "@Password17"}
#* def token = tokenResponse.authtoken

Scenario: Create new Article
* print env
#https://api.realworld.io/api/articles
#Given header Authorization = "Token " + token
Given path "articles"
When request {"article":{"title":"MY ARTCLE23","description":"MY DESC","body":"MY ARTCLEMY ARTCLEMY ARTCLEMY ARTCLEMY ARTCLEMY ARTCLEMY ARTCLEMY ARTCLEMY ARTCLEMY ARTCLEMY ARTCLEMY ARTCLEMY ARTCLEMY ARTCLEMY ARTCLEMY ARTCLEMY ARTCLE","tagList":[]}}
When method post
Then status 201
And print response
And def id =  response.article.slug
And print id

Scenario: Create new Article2
#https://api.realworld.io/api/articles
#Given header Authorization = "Token " + token
Given path "articles"
When request {"article":{"title":"MY ARTCLE 42","description":"MY DESC","body":"MY ARTCLEMY ARTCLEMY ARTCLEMY ARTCLEMY ARTCLEMY ARTCLEMY ARTCLEMY ARTCLEMY ARTCLEMY ARTCLEMY ARTCLEMY ARTCLEMY ARTCLEMY ARTCLEMY ARTCLEMY ARTCLEMY ARTCLE","tagList":[]}}
When method post
Then status 201
And print response
And def id =  response.article.slug
And print id


#
#Scenario: Update article
#https://api.realworld.io/api/articles/MY-ARTCLE-235656
#Given header Authorization = "Token " +authtoken
#Given path "articles", id
#When request {"article":{"title":"MY ARTCLEmodify17","description":"MY DESC modified","body":"MY ARTCLE modified","tagList":[]}}
#When method put
#Then status 200
#And print response
#And def title =  response.article.title
#And print title
#And def id2 =  response.article.slug
#And print id2
#
#Scenario: Delete Article
#https://api.realworld.io/api/articles/MY-ARTCLEmodify-235656
#Given header Authorization = "Token " + authtoken
#Given path "articles", id2
#When method delete
#Then status 204
  #
Scenario: Create all List
#GET ALL LIST
#https://conduit.productionready.io/api/articles?limit=10&offset=0
Given url "https://conduit.productionready.io/api/"
Given path "articles"
Given params {limit:10, offset:0}
When method get
Then status 200
And print response


  
