ZnClient new
 logToTranscript;
 url: 'https://api.imgflip.com/';
 addPath: 'caption_image';
 formAt: 'template_id' put: '95158268';
 formAt: 'username' put: '...'; 
 formAt: 'password' put: '...'; 
 formAt: 'text0' put: 'Just Zinc';
 formAt: 'text1' put: 'HTTP Components'; 
 accept: 'application/json';
 contentReader: [ : entity | 
   ZnEasy getJpeg: (((NeoJSONReader fromString: entity contents) at: #data) at: #url) display ]; 
 post.