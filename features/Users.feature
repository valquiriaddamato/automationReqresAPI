Feature: User
	
Scenario: Create user successfully
	Given that I want to create a user
	When I run the resquest (POST)URL_Base/api/users
	And the request body with the following data: name, job
	Then code status equal to 201
	And a response request returns me json with the following user data: id, name, job and create date 
	
Scenario: View single user successfully
	Given that I want to view data for a specific user
	When I run the resquest (GET)URL_Base/api/users/{ID}
	And with the following data: ID
	Then code status equal to 200
	And a response request returns me json with the following user data: id, email, first name, last name, avatar and support (url and text)

Scenario: View more users successfully
	Given that I want to view data for a more users
	When I run the resquest (GET)URL_Base/api/users?page=1
	And the params with the following data: page
	Then code status equal to 200
	And a response request returns me json with the following data from all users on the selected page: id, email, first name, last name, avatar and support (url and text)
	
Scenario: User not found
	Given that I want to search a user not found
	When I run the resquest (GET)URL_Base/api/users/{ID}
	And with the following data: ID (not found)
	Then code status equal to 404
	And a response request not returns me json with the user data

Scenario: Update some data user successfully
	Given that I want to update some data a user
	When I run the resquest (PATCH)URL_Base/api/users/{ID}
	And with the following data: ID
	And the request body with the following data: name or job
	Then code status equal to 200
	And a response request returns me json with the following user data: name or job and create date 

Scenario: Update all data user successfully
	Given that I want to update all data a user
	When I run the resquest (PUT)URL_Base/api/users/{ID}
	And with the following data: ID
	And the request body with the following data: name, job
	Then code status equal to 200
	And a response request returns me json with the following user data: name, job and create date

Scenario: Delete user successfully
	Given that I want to delete a user
	When I run the resquest (DELETE)URL_Base/api/users/{ID}
	And with the following data: ID
	Then code status equal to 204
	And a response request not returns me json with the user data