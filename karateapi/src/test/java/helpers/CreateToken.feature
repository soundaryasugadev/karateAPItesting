
Feature: login_token
 

  @tag1
  Scenario: Create Token
   Given url loginUrl
	Given path "users/login"
	When request {user: {email: "#(username)", password: "#(userpassword)"}}
	When method post
Then status 200
Then print response
And def authtoken = response.user.token
And print authtoken

taking from config file
