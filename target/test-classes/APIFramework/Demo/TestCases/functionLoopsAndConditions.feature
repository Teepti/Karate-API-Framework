Feature: checked get method using API

  Background: 
   
    * def ExpectedResult = read('../Data/result.json')

  Scenario: List all Users
    Given url someUrlBase
    And  path 'api/users?page=2'
    When method get
    Then status 200
    * def data = response.data
    And print 'data ---->',data
    * def myFun =
      """
          function(arg) {
              for(i =0; i<arg.length; i++){
              			if(arg[i].id == 6){
              			     return arg[i]
              		   }
              }			     		
              			
          }
      """
    * def result = call myFun data
    Then print 'result is--->',result
