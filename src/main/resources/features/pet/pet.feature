Feature: pet API testing
 Scenario: client makes call to PUT /pet 400
    	Given base url "HTTPS://petstore.swagger.io/v2"
    	And resource path "/pet"
    	And content type "application/xml, application/json"
    	And operation "PUT"
    	And accept type "application/json, application/xml"
    	And performing "PUT"
    	Then call the service
    	And validate the http returned status code matches with 400
    		
   	 |baseurl | resource | contenttype | accepttype | operation | expectedstatuscode |
	 |HTTPS://petstore.swagger.io/v2 | /pet | $eachpath.produces[0] | $eachpath.consumes[0] | PUT | 400 |
	  
 Scenario: client makes call to PUT /pet 404
    	Given base url "HTTPS://petstore.swagger.io/v2"
    	And resource path "/pet"
    	And content type "application/xml, application/json"
    	And operation "PUT"
    	And accept type "application/json, application/xml"
    	And performing "PUT"
    	Then call the service
    	And validate the http returned status code matches with 404
    		
   	 |baseurl | resource | contenttype | accepttype | operation | expectedstatuscode |
	 |HTTPS://petstore.swagger.io/v2 | /pet | $eachpath.produces[0] | $eachpath.consumes[0] | PUT | 400 |
	  
 Scenario: client makes call to PUT /pet 405
    	Given base url "HTTPS://petstore.swagger.io/v2"
    	And resource path "/pet"
    	And content type "application/xml, application/json"
    	And operation "PUT"
    	And accept type "application/json, application/xml"
    	And performing "PUT"
    	Then call the service
    	And validate the http returned status code matches with 405
    		
   	 |baseurl | resource | contenttype | accepttype | operation | expectedstatuscode |
	 |HTTPS://petstore.swagger.io/v2 | /pet | $eachpath.produces[0] | $eachpath.consumes[0] | PUT | 400 |
	  
 Scenario: client makes call to POST /pet 405
    	Given base url "HTTPS://petstore.swagger.io/v2"
    	And resource path "/pet"
    	And content type "application/xml, application/json"
    	And operation "POST"
    	And accept type "application/json, application/xml"
    	And performing "POST"
    	Then call the service
    	And validate the http returned status code matches with 405
    		
   	 |baseurl | resource | contenttype | accepttype | operation | expectedstatuscode |
	 |HTTPS://petstore.swagger.io/v2 | /pet | $eachpath.produces[0] | $eachpath.consumes[0] | POST | 405 |
	  
 Scenario: client makes call to GET /pet/findByStatus 200
    	Given base url "HTTPS://petstore.swagger.io/v2"
    	And resource path "/pet/findByStatus"
    	And content type "application/xml, application/json"
    	And operation "GET"
    	And accept type ""
    	And performing "GET"
    	Then call the service
    	And validate the http returned status code matches with 200
    		
   	 |baseurl | resource | contenttype | accepttype | operation | expectedstatuscode |
	 |HTTPS://petstore.swagger.io/v2 | /pet/findByStatus | $eachpath.produces[0] | $eachpath.consumes[0] | GET | 200 |
	  
 Scenario: client makes call to GET /pet/findByStatus 400
    	Given base url "HTTPS://petstore.swagger.io/v2"
    	And resource path "/pet/findByStatus"
    	And content type "application/xml, application/json"
    	And operation "GET"
    	And accept type ""
    	And performing "GET"
    	Then call the service
    	And validate the http returned status code matches with 400
    		
   	 |baseurl | resource | contenttype | accepttype | operation | expectedstatuscode |
	 |HTTPS://petstore.swagger.io/v2 | /pet/findByStatus | $eachpath.produces[0] | $eachpath.consumes[0] | GET | 200 |
	  
 Scenario: client makes call to GET /pet/findByTags 200
    	Given base url "HTTPS://petstore.swagger.io/v2"
    	And resource path "/pet/findByTags"
    	And content type "application/xml, application/json"
    	And operation "GET"
    	And accept type ""
    	And performing "GET"
    	Then call the service
    	And validate the http returned status code matches with 200
    		
   	 |baseurl | resource | contenttype | accepttype | operation | expectedstatuscode |
	 |HTTPS://petstore.swagger.io/v2 | /pet/findByTags | $eachpath.produces[0] | $eachpath.consumes[0] | GET | 200 |
	  
 Scenario: client makes call to GET /pet/findByTags 400
    	Given base url "HTTPS://petstore.swagger.io/v2"
    	And resource path "/pet/findByTags"
    	And content type "application/xml, application/json"
    	And operation "GET"
    	And accept type ""
    	And performing "GET"
    	Then call the service
    	And validate the http returned status code matches with 400
    		
   	 |baseurl | resource | contenttype | accepttype | operation | expectedstatuscode |
	 |HTTPS://petstore.swagger.io/v2 | /pet/findByTags | $eachpath.produces[0] | $eachpath.consumes[0] | GET | 200 |
	  
 Scenario: client makes call to GET /pet/{petId} 200
    	Given base url "HTTPS://petstore.swagger.io/v2"
    	And resource path "/pet/{petId}"
    	And content type "application/xml, application/json"
    	And operation "GET"
    	And accept type ""
    	And performing "GET"
    	Then call the service
    	And validate the http returned status code matches with 200
    		
   	 |baseurl | resource | contenttype | accepttype | operation | expectedstatuscode |
	 |HTTPS://petstore.swagger.io/v2 | /pet/{petId} | $eachpath.produces[0] | $eachpath.consumes[0] | GET | 200 |
	  
 Scenario: client makes call to GET /pet/{petId} 400
    	Given base url "HTTPS://petstore.swagger.io/v2"
    	And resource path "/pet/{petId}"
    	And content type "application/xml, application/json"
    	And operation "GET"
    	And accept type ""
    	And performing "GET"
    	Then call the service
    	And validate the http returned status code matches with 400
    		
   	 |baseurl | resource | contenttype | accepttype | operation | expectedstatuscode |
	 |HTTPS://petstore.swagger.io/v2 | /pet/{petId} | $eachpath.produces[0] | $eachpath.consumes[0] | GET | 200 |
	  
 Scenario: client makes call to GET /pet/{petId} 404
    	Given base url "HTTPS://petstore.swagger.io/v2"
    	And resource path "/pet/{petId}"
    	And content type "application/xml, application/json"
    	And operation "GET"
    	And accept type ""
    	And performing "GET"
    	Then call the service
    	And validate the http returned status code matches with 404
    		
   	 |baseurl | resource | contenttype | accepttype | operation | expectedstatuscode |
	 |HTTPS://petstore.swagger.io/v2 | /pet/{petId} | $eachpath.produces[0] | $eachpath.consumes[0] | GET | 200 |
	  
 Scenario: client makes call to POST /pet/{petId} 405
    	Given base url "HTTPS://petstore.swagger.io/v2"
    	And resource path "/pet/{petId}"
    	And content type "application/xml, application/json"
    	And operation "POST"
    	And accept type "application/x-www-form-urlencoded"
    	And performing "POST"
    	Then call the service
    	And validate the http returned status code matches with 405
    		
   	 |baseurl | resource | contenttype | accepttype | operation | expectedstatuscode |
	 |HTTPS://petstore.swagger.io/v2 | /pet/{petId} | $eachpath.produces[0] | $eachpath.consumes[0] | POST | 405 |
	  
 Scenario: client makes call to DELETE /pet/{petId} 400
    	Given base url "HTTPS://petstore.swagger.io/v2"
    	And resource path "/pet/{petId}"
    	And content type "application/xml, application/json"
    	And operation "DELETE"
    	And accept type ""
    	And performing "DELETE"
    	Then call the service
    	And validate the http returned status code matches with 400
    		
   	 |baseurl | resource | contenttype | accepttype | operation | expectedstatuscode |
	 |HTTPS://petstore.swagger.io/v2 | /pet/{petId} | $eachpath.produces[0] | $eachpath.consumes[0] | DELETE | 400 |
	  
 Scenario: client makes call to DELETE /pet/{petId} 404
    	Given base url "HTTPS://petstore.swagger.io/v2"
    	And resource path "/pet/{petId}"
    	And content type "application/xml, application/json"
    	And operation "DELETE"
    	And accept type ""
    	And performing "DELETE"
    	Then call the service
    	And validate the http returned status code matches with 404
    		
   	 |baseurl | resource | contenttype | accepttype | operation | expectedstatuscode |
	 |HTTPS://petstore.swagger.io/v2 | /pet/{petId} | $eachpath.produces[0] | $eachpath.consumes[0] | DELETE | 400 |
	  
 Scenario: client makes call to POST /pet/{petId}/uploadImage 200
    	Given base url "HTTPS://petstore.swagger.io/v2"
    	And resource path "/pet/{petId}/uploadImage"
    	And content type "application/json"
    	And operation "POST"
    	And accept type "multipart/form-data"
    	And performing "POST"
    	Then call the service
    	And validate the http returned status code matches with 200
    		
   	 |baseurl | resource | contenttype | accepttype | operation | expectedstatuscode |
	 |HTTPS://petstore.swagger.io/v2 | /pet/{petId}/uploadImage | $eachpath.produces[0] | $eachpath.consumes[0] | POST | 200 |
	  

  