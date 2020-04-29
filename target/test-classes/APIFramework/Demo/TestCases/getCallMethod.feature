Feature: checked get method using API
	Background:
					
					* def ExpectedResult = read('../Data/result1.json')
					
Scenario: Fetch the list of all Users
Given url someUrlBase
And path listAllUsersEndPoint 
When method get
Then status 200
Then print response
Then print ExpectedResult[0]
And match response == ExpectedResult[0]

Scenario: Fetch the details of single user
Given url someUrlBase 
And path singleUserEndPoint
When method get
Then status 200
And match response == ExpectedResult[1]

Scenario: Fetch the details of Single User with Id 23 that is not present
Given url someUrlBase
And path singleUserNotFoundEndPoint
When method get
Then status 404
And match response == ExpectedResult[2]

			  