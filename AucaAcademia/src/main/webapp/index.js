(() => {
     let loginEle = document.getElementById("loginBtn");
     let logoutEle = document.getElementById("logoutBtn");
     const cookie = parseCookies();
     if(cookie.email === undefined || cookie.email == ""){
          logoutEle.style.display = "none"
          loginEle.style.display = "inline-flex"
     }else{
          loginEle.style.display = "none"
          logoutEle.style.display = "inline-flex"
     }
     
} )();

function parseCookies() {
     var cookies = {};
     var cookieString = document.cookie;
     cookieString.split(';').forEach(function(cookie) {
          var parts = cookie.split('=');
          var name = parts[0].trim();
          var value = parts[1];
          cookies[name] = value;
     });
     return cookies;
}