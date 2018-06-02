/* config.js */
params.PageBgColor = params.PageBgColor||"#d7d7d7";

slideshow_css = '$CssPath$style.css';
thumbs = {margin: 3, padding: 1};

files.push({ 'src': 'backgnd/'+params.TemplateName+'/fonts/ws-ctrl-showy.eot', dest: '$CssPath$ws-ctrl-showy.eot' });
files.push({ 'src': 'backgnd/'+params.TemplateName+'/fonts/ws-ctrl-showy.svg', dest: '$CssPath$ws-ctrl-showy.svg' });
files.push({ 'src': 'backgnd/'+params.TemplateName+'/fonts/ws-ctrl-showy.ttf', dest: '$CssPath$ws-ctrl-showy.ttf' });
files.push({ 'src': 'backgnd/'+params.TemplateName+'/fonts/ws-ctrl-showy.woff', dest: '$CssPath$ws-ctrl-showy.woff' });


if (params.Thumbnails || params.ShowBullets){
	params.ThumbWidthHalf = Math.round(params.ThumbWidth/2);
	files.push( { 'src': 'backgnd/'+params.TemplateName+'/style-tooltip.css', 'dest': slideshow_css, 'filters': ['params'] } );
}


params.addCss += [
	"",
	"@font-face {",
	"  font-family: 'ws-ctrl-showy';",
	"  src: url('ws-ctrl-showy.eot');",
	"  src: url('ws-ctrl-showy.eot#iefix') format('embedded-opentype'),",
	"       url('ws-ctrl-showy.svg#ws-ctrl-showy') format('svg');",
	"  font-weight: normal;",
	"  font-style: normal;",
	"}",
	"@font-face {",
	"  font-family: 'ws-ctrl-showy';",
	"  src: url('data:application/octet-stream;base64,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') format('woff'),",
	"       url('data:application/octet-stream;base64,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ILACQ2BkI7ADQ2FkUFiwAkNhG7ADQ2BZsAMlsAJiILAAUFiwQGBZZrABY2GwAiVGYTgjIDwjOBshICBGI0ewASsjYTghWbErARQrLbBCLLA1Ky6xKwEUKy2wQyywNishIyAgPLAEI0IjOLErARQrsARDLrArKy2wRCywABUgR7AAI0KyAAEBFRQTLrAxKi2wRSywABUgR7AAI0KyAAEBFRQTLrAxKi2wRiyxAAEUE7AyKi2wRyywNCotsEgssAAWRSMgLiBGiiNhOLErARQrLbBJLLAII0KwSCstsEossgAAQSstsEsssgABQSstsEwssgEAQSstsE0ssgEBQSstsE4ssgAAQistsE8ssgABQistsFAssgEAQistsFEssgEBQistsFIssgAAPistsFMssgABPistsFQssgEAPistsFUssgEBPistsFYssgAAQCstsFcssgABQCstsFgssgEAQCstsFkssgEBQCstsFossgAAQystsFsssgABQystsFwssgEAQystsF0ssgEBQystsF4ssgAAPystsF8ssgABPystsGAssgEAPystsGEssgEBPystsGIssDcrLrErARQrLbBjLLA3K7A7Ky2wZCywNyuwPCstsGUssAAWsDcrsD0rLbBmLLA4Ky6xKwEUKy2wZyywOCuwOystsGgssDgrsDwrLbBpLLA4K7A9Ky2waiywOSsusSsBFCstsGsssDkrsDsrLbBsLLA5K7A8Ky2wbSywOSuwPSstsG4ssDorLrErARQrLbBvLLA6K7A7Ky2wcCywOiuwPCstsHEssDorsD0rLbByLLMJBAIDRVghGyMhWUIrsAhlsAMkUHiwARUwLQBLuADIUlixAQGOWbABuQgACABjcLEABUKxAAAqsQAFQrEACCqxAAVCsQAIKrEABUK5AAAACSqxAAVCuQAAAAkqsQMARLEkAYhRWLBAiFixA2REsSYBiFFYugiAAAEEQIhjVFixAwBEWVlZWbEADCq4Af+FsASNsQIARAA=') format('truetype');",
	"}"
].join('\n');


// call this function at the end of each template
finalize();