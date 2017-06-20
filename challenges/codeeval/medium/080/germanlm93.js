
line = "http://abc.com:80/~smith/home.html;http://ABC.com/%7Esmith/home.html";
check(line);
function check(line){
   line = unescape(line);
   piec = line.toLowerCase().split(";");
   http1 = piec[0].split("//")[0]+"//";
   http2 = piec[1].split("//")[0]+"//";
   if(http1 !== http2) return "False";
   domain1 = piec[0].split("//")[1].split("/");
   domain2 = piec[1].split("//")[1].split("/");
   domain1[0] += (domain1[0].split(":").length == 1)?":80":"";
   domain2[0] += (domain2[0].split(":").length == 1)?":80":"";
   url1 = http1 + domain1.join("/");
   url2 = http2 + domain2.join("/");
   if(url1 === url2) return "True";
   return "False";
}
