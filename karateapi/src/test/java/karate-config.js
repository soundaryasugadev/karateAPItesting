function fn() {
  var env = karate.env; // get system property 'karate.env'
  karate.log('karate.env system property was:', env);
  if (!env) {
    env = 'dev';
  }
  var config = {
  	loginUrl: "https://api.realworld.io/api/",
    firstName: 'Hello',
    age: 36,
   username: 'jsoundarya2017@gmail.com',
  userpassword: '@Password17'
     
  }
  if (env == 'dev') {
  config.loginUrl = 'https://api.realworld.io/api/'
  config.username = 'jsoundarya2017@gmail.com'
  config.userpassword = '@Password17'
    
  } else if (env == 'qa') {
  config.loginUrl = 'https://api.realworld.io/api/'
   config.username = 'jsoundarya2017@gmail.com'
  config.userpassword = '@Password17'
  }
  
 // var accesstoken = karate.callSingle('classpath:helpers/CreateToken.feature', config).authtoken
 // karate.configure('headers',{Authorization: "Token " + accesstoken})
 // return config;
}
