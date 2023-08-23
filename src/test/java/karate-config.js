function fn() {
  var env = karate.env;
  karate.log('karate.env system property was:', env);

  var config = {
     baseUrl: 'https://api.spotify.com',
     baseUrlToken: 'https://accounts.spotify.com',
     client_id: '43915fe91eb546c0ad331da46bb186eb',
     client_secret: '6b797f9134b94b5190a18d4d6fccd9d0',

     pathAccessToken: '/api/token'

  };

  // don't waste time waiting for a connection or if servers don't respond within 60 seconds
  karate.configure('connectTimeout', 60000);
  karate.configure('readTimeout', 60000);
  karate.configure('ssl', true);
  return config;
}