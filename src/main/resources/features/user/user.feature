Feature: user API testing
 Scenario: client makes call to POST /user default
    	Given base url "HTTPS://petstore.swagger.io/v2"
    	And resource path "/user"
    	And content type "application/xml, application/json"
    	And operation "POST"
    	And accept type ""
    	And performing "POST"
    	Then call the service
    	And validate the http returned status code matches with default
    		
   	 |baseurl | resource | contenttype | accepttype | operation | expectedstatuscode |
	 |HTTPS://petstore.swagger.io/v2 | /user | $eachpath.produces[0] | $eachpath.consumes[0] | POST | default |
	  
 Scenario: client makes call to POST /user/createWithArray default
    	Given base url "HTTPS://petstore.swagger.io/v2"
    	And resource path "/user/createWithArray"
    	And content type "application/xml, application/json"
    	And operation "POST"
    	And accept type ""
    	And performing "POST"
    	Then call the service
    	And validate the http returned status code matches with default
    		
   	 |baseurl | resource | contenttype | accepttype | operation | expectedstatuscode |
	 |HTTPS://petstore.swagger.io/v2 | /user/createWithArray | $eachpath.produces[0] | $eachpath.consumes[0] | POST | default |
	  
 Scenario: client makes call to POST /user/createWithList default
    	Given base url "HTTPS://petstore.swagger.io/v2"
    	And resource path "/user/createWithList"
    	And content type "application/xml, application/json"
    	And operation "POST"
    	And accept type ""
    	And performing "POST"
    	Then call the service
    	And validate the http returned status code matches with default
    		
   	 |baseurl | resource | contenttype | accepttype | operation | expectedstatuscode |
	 |HTTPS://petstore.swagger.io/v2 | /user/createWithList | $eachpath.produces[0] | $eachpath.consumes[0] | POST | default |
	  
 Scenario: client makes call to GET /user/login 200
    	Given base url "HTTPS://petstore.swagger.io/v2"
    	And resource path "/user/login"
    	And content type "application/xml, application/json"
    	And operation "GET"
    	And accept type ""
    	And performing "GET"
    	Then call the service
    	And validate the http returned status code matches with 200
    		
   	 |baseurl | resource | contenttype | accepttype | operation | expectedstatuscode |
	 |HTTPS://petstore.swagger.io/v2 | /user/login | $eachpath.produces[0] | $eachpath.consumes[0] | GET | 200 |
	  
 Scenario: client makes call to GET /user/login 400
    	Given base url "HTTPS://petstore.swagger.io/v2"
    	And resource path "/user/login"
    	And content type "application/xml, application/json"
    	And operation "GET"
    	And accept type ""
    	And performing "GET"
    	Then call the service
    	And validate the http returned status code matches with 400
    		
   	 |baseurl | resource | contenttype | accepttype | operation | expectedstatuscode |
	 |HTTPS://petstore.swagger.io/v2 | /user/login | $eachpath.produces[0] | $eachpath.consumes[0] | GET | 200 |
	  
 Scenario: client makes call to GET /user/logout default
    	Given base url "HTTPS://petstore.swagger.io/v2"
    	And resource path "/user/logout"
    	And content type "application/xml, application/json"
    	And operation "GET"
    	And accept type ""
    	And performing "GET"
    	Then call the service
    	And validate the http returned status code matches with default
    		
   	 |baseurl | resource | contenttype | accepttype | operation | expectedstatuscode |
	 |HTTPS://petstore.swagger.io/v2 | /user/logout | $eachpath.produces[0] | $eachpath.consumes[0] | GET | default |
	  
 Scenario: client makes call to GET /user/{username} 200
    	Given base url "HTTPS://petstore.swagger.io/v2"
    	And resource path "/user/{username}"
    	And content type "application/xml, application/json"
    	And operation "GET"
    	And accept type ""
    	And performing "GET"
    	Then call the service
    	And validate the http returned status code matches with 200
    		
   	 |baseurl | resource | contenttype | accepttype | operation | expectedstatuscode |
	 |HTTPS://petstore.swagger.io/v2 | /user/{username} | $eachpath.produces[0] | $eachpath.consumes[0] | GET | 200 |
	  
 Scenario: client makes call to GET /user/{username} 400
    	Given base url "HTTPS://petstore.swagger.io/v2"
    	And resource path "/user/{username}"
    	And content type "application/xml, application/json"
    	And operation "GET"
    	And accept type ""
    	And performing "GET"
    	Then call the service
    	And validate the http returned status code matches with 400
    		
   	 |baseurl | resource | contenttype | accepttype | operation | expectedstatuscode |
	 |HTTPS://petstore.swagger.io/v2 | /user/{username} | $eachpath.produces[0] | $eachpath.consumes[0] | GET | 200 |
	  
 Scenario: client makes call to GET /user/{username} 404
    	Given base url "HTTPS://petstore.swagger.io/v2"
    	And resource path "/user/{username}"
    	And content type "application/xml, application/json"
    	And operation "GET"
    	And accept type ""
    	And performing "GET"
    	Then call the service
    	And validate the http returned status code matches with 404
    		
   	 |baseurl | resource | contenttype | accepttype | operation | expectedstatuscode |
	 |HTTPS://petstore.swagger.io/v2 | /user/{username} | $eachpath.produces[0] | $eachpath.consumes[0] | GET | 200 |
	  
 Scenario: client makes call to PUT /user/{username} 400
    	Given base url "HTTPS://petstore.swagger.io/v2"
    	And resource path "/user/{username}"
    	And content type "application/xml, application/json"
    	And operation "PUT"
    	And accept type ""
    	And performing "PUT"
    	Then call the service
    	And validate the http returned status code matches with 400
    		
   	 |baseurl | resource | contenttype | accepttype | operation | expectedstatuscode |
	 |HTTPS://petstore.swagger.io/v2 | /user/{username} | $eachpath.produces[0] | $eachpath.consumes[0] | PUT | 400 |
	  
 Scenario: client makes call to PUT /user/{username} 404
    	Given base url "HTTPS://petstore.swagger.io/v2"
    	And resource path "/user/{username}"
    	And content type "application/xml, application/json"
    	And operation "PUT"
    	And accept type ""
    	And performing "PUT"
    	Then call the service
    	And validate the http returned status code matches with 404
    		
   	 |baseurl | resource | contenttype | accepttype | operation | expectedstatuscode |
	 |HTTPS://petstore.swagger.io/v2 | /user/{username} | $eachpath.produces[0] | $eachpath.consumes[0] | PUT | 400 |
	  
 Scenario: client makes call to DELETE /user/{username} 400
    	Given base url "HTTPS://petstore.swagger.io/v2"
    	And resource path "/user/{username}"
    	And content type "application/xml, application/json"
    	And operation "DELETE"
    	And accept type ""
    	And performing "DELETE"
    	Then call the service
    	And validate the http returned status code matches with 400
    		
   	 |baseurl | resource | contenttype | accepttype | operation | expectedstatuscode |
	 |HTTPS://petstore.swagger.io/v2 | /user/{username} | $eachpath.produces[0] | $eachpath.consumes[0] | DELETE | 400 |
	  
 Scenario: client makes call to DELETE /user/{username} 404
    	Given base url "HTTPS://petstore.swagger.io/v2"
    	And resource path "/user/{username}"
    	And content type "application/xml, application/json"
    	And operation "DELETE"
    	And accept type ""
    	And performing "DELETE"
    	Then call the service
    	And validate the http returned status code matches with 404
    		
   	 |baseurl | resource | contenttype | accepttype | operation | expectedstatuscode |
	 |HTTPS://petstore.swagger.io/v2 | /user/{username} | $eachpath.produces[0] | $eachpath.consumes[0] | DELETE | 400 |
	  

  