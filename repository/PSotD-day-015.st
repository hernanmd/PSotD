ZnClient new
   systemPolicy;
   beOneShot;
   url: 'http://ifconfig.me/ip';
   accept: ZnMimeType textPlain;
   headerAt: 'User-Agent' put: 'curl/7.54.0';
   timeout: 6000;
   get.