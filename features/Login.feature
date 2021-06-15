Feature: Login
	
Scenario: Login successfully
	Given that I want to login successfully
	When I run the resquest (POST)URL_Base/api/login
	And the request body with the following valid data: email, password
	Then code status equal to 200
	And a response request returns me json with the following user data: token

Scenario: Login unsuccessfully without password
	Given that I want to login unsuccessfully
	When I run the resquest (POST)URL_Base/api/login
	And the request body with the following valid data: email, password (null)
	Then code status equal to 400
	And a response request returns me json with the following error message: "error: Missing password"
	
Scenario: Login unsuccessfully with user not found
	Given that I want to login unsuccessfully
	When I run the resquest (POST)URL_Base/api/login
	And the request body with the following valid data: email (not found), password
	Then code status equal to 400
	And a response request returns me json with the following error message: "error: user not found"