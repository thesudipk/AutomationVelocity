Feature: store API testing
 Scenario: client makes call to GET /store/inventory 200
    	Given base url "HTTPS://petstore.swagger.io/v2"
    	And resource path "/store/inventory"
    	And content type "application/json"
    	And operation "GET"
    	And accept type ""
    	And performing "GET"
    	Then call the service
    	And validate the http returned status code matches with 200
    		
   	 |baseurl | resource | contenttype | accepttype | operation | expectedstatuscode |
	 |HTTPS://petstore.swagger.io/v2 | /store/inventory | $eachpath.produces[0] | $eachpath.consumes[0] | GET | 200 |
	  
 Scenario: client makes call to POST /store/order 200
    	Given base url "HTTPS://petstore.swagger.io/v2"
    	And resource path "/store/order"
    	And content type "application/xml, application/json"
    	And operation "POST"
    	And accept type ""
    	And performing "POST"
    	Then call the service
    	And validate the http returned status code matches with 200
    		
   	 |baseurl | resource | contenttype | accepttype | operation | expectedstatuscode |
	 |HTTPS://petstore.swagger.io/v2 | /store/order | $eachpath.produces[0] | $eachpath.consumes[0] | POST | 200 |
	  
 Scenario: client makes call to POST /store/order 400
    	Given base url "HTTPS://petstore.swagger.io/v2"
    	And resource path "/store/order"
    	And content type "application/xml, application/json"
    	And operation "POST"
    	And accept type ""
    	And performing "POST"
    	Then call the service
    	And validate the http returned status code matches with 400
    		
   	 |baseurl | resource | contenttype | accepttype | operation | expectedstatuscode |
	 |HTTPS://petstore.swagger.io/v2 | /store/order | $eachpath.produces[0] | $eachpath.consumes[0] | POST | 200 |
	  
 Scenario: client makes call to GET /store/order/{orderId} 200
    	Given base url "HTTPS://petstore.swagger.io/v2"
    	And resource path "/store/order/{orderId}"
    	And content type "application/xml, application/json"
    	And operation "GET"
    	And accept type ""
    	And performing "GET"
    	Then call the service
    	And validate the http returned status code matches with 200
    		
   	 |baseurl | resource | contenttype | accepttype | operation | expectedstatuscode |
	 |HTTPS://petstore.swagger.io/v2 | /store/order/{orderId} | $eachpath.produces[0] | $eachpath.consumes[0] | GET | 200 |
	  
 Scenario: client makes call to GET /store/order/{orderId} 400
    	Given base url "HTTPS://petstore.swagger.io/v2"
    	And resource path "/store/order/{orderId}"
    	And content type "application/xml, application/json"
    	And operation "GET"
    	And accept type ""
    	And performing "GET"
    	Then call the service
    	And validate the http returned status code matches with 400
    		
   	 |baseurl | resource | contenttype | accepttype | operation | expectedstatuscode |
	 |HTTPS://petstore.swagger.io/v2 | /store/order/{orderId} | $eachpath.produces[0] | $eachpath.consumes[0] | GET | 200 |
	  
 Scenario: client makes call to GET /store/order/{orderId} 404
    	Given base url "HTTPS://petstore.swagger.io/v2"
    	And resource path "/store/order/{orderId}"
    	And content type "application/xml, application/json"
    	And operation "GET"
    	And accept type ""
    	And performing "GET"
    	Then call the service
    	And validate the http returned status code matches with 404
    		
   	 |baseurl | resource | contenttype | accepttype | operation | expectedstatuscode |
	 |HTTPS://petstore.swagger.io/v2 | /store/order/{orderId} | $eachpath.produces[0] | $eachpath.consumes[0] | GET | 200 |
	  
 Scenario: client makes call to DELETE /store/order/{orderId} 400
    	Given base url "HTTPS://petstore.swagger.io/v2"
    	And resource path "/store/order/{orderId}"
    	And content type "application/xml, application/json"
    	And operation "DELETE"
    	And accept type ""
    	And performing "DELETE"
    	Then call the service
    	And validate the http returned status code matches with 400
    		
   	 |baseurl | resource | contenttype | accepttype | operation | expectedstatuscode |
	 |HTTPS://petstore.swagger.io/v2 | /store/order/{orderId} | $eachpath.produces[0] | $eachpath.consumes[0] | DELETE | 400 |
	  
 Scenario: client makes call to DELETE /store/order/{orderId} 404
    	Given base url "HTTPS://petstore.swagger.io/v2"
    	And resource path "/store/order/{orderId}"
    	And content type "application/xml, application/json"
    	And operation "DELETE"
    	And accept type ""
    	And performing "DELETE"
    	Then call the service
    	And validate the http returned status code matches with 404
    		
   	 |baseurl | resource | contenttype | accepttype | operation | expectedstatuscode |
	 |HTTPS://petstore.swagger.io/v2 | /store/order/{orderId} | $eachpath.produces[0] | $eachpath.consumes[0] | DELETE | 400 |
	  

  