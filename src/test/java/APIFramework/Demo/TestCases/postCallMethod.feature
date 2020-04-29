Feature: Post an API
 Background: 
       * url 'https://reqres.in/'
       * def jsonPayLoad = read('../Data/request.json')
       
Scenario: Create User
Given url someUrlBase
Given path createUserEndPoint
And request jsonPayLoad
And header Content-Type = 'application/json'
When method POST
Then status 201
       
       