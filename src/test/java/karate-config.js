function fn() { 
	
	var config = { 
			
		 someUrlBase: 'https://reqres.in/',
		 anotherUrlBase: 'https://reqres.in/',
		 listAllUsersEndPoint: 'api/users?page=1',
		 singleUserEndPoint: '/api/users/2',
		 singleUserNotFoundEndPoint: '/api/users/23',
		 createUserEndPoint: 'api/users/'	 

	};
	
	karate.configure('connectTimeout', 5000);
	karate.configure('readTimeout', 5000);
	return config;
/*	var env = karate.env; // get java system property 'karate.env'
	karate.log('karate.env system property was:', env);
	if (!env) {
		env = 'dev'; // a custom 'intelligent' default
	}
  
	if (env == 'dev') {
    // over-ride only those that need to be
    config.someUrlBase = 'https://reqres.in/';
	} else if (env == 'e2e') {
    config.someUrlBase = 'https://reqres.in/';
		}   */
  // don't waste time waiting for a connection or if servers don't respond within 5 seconds

}