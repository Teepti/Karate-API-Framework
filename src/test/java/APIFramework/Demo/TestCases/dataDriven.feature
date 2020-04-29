Feature: Post request using Data Driven approach 
 Background: 
       
       * def jsonPayLoad = read('../Data/request.json')
       
Scenario: Create User
Given url someUrlBase
And path 'api/users/'
And request jsonPayLoad
And header Content-Type = 'application/json'
And param delay = 3
When method POST
Then status 201