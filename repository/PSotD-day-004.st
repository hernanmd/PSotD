| jar cookiesFile client |
jar := ZnCookieJar new.
cookiesFile := 'cookiebro-cookies.json'.
(NeoJSONReader fromString: cookiesFile asFileReference) do: [ : d |
jar add: (ZnCookie fromString: (String streamContents: [ : stream |
 d associationsDo: [ : assoc |
  stream 
   nextPutAll: assoc key asString;
   nextPut: $=;
   nextPutAll: assoc value asString;
   nextPut: $; ].
  stream skip: -1 ] )) ].
client := ZnClient new
 beOneShot;
 timeout: 5000;
 numberOfRetries: 0; 
 url: 'https://...';
 ifFail: [ : ex | self halt. ].
client session cookiejar: jar.
client get