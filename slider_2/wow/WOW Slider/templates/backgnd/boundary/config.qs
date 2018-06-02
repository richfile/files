/* config.js */
params.PageBgColor = params.PageBgColor||"#d7d7d7";

slideshow_css = '$CssPath$style.css';
thumbs = {margin: 3, padding: 2};

params.arrowImgBorder = 1; // em
params.arrowImgWidth = params.ThumbWidth / 10; // em
params.arrowImgFullWidth = params.arrowImgBorder * 2 + params.arrowImgWidth;
params.arrowPadding = 3;
params.arrowHoverPadding = params.arrowImgBorder + params.ThumbHeight / (10 * 2);


files.push({ 'src': 'backgnd/'+params.TemplateName+'/fonts/ws-ctrl-boundary.eot', dest: '$CssPath$ws-ctrl-boundary.eot' });
files.push({ 'src': 'backgnd/'+params.TemplateName+'/fonts/ws-ctrl-boundary.svg', dest: '$CssPath$ws-ctrl-boundary.svg' });
files.push({ 'src': 'backgnd/'+params.TemplateName+'/fonts/ws-ctrl-boundary.ttf', dest: '$CssPath$ws-ctrl-boundary.ttf' });
files.push({ 'src': 'backgnd/'+params.TemplateName+'/fonts/ws-ctrl-boundary.woff', dest: '$CssPath$ws-ctrl-boundary.woff' });


if (params.Thumbnails || params.ShowBullets){
	params.ThumbWidthHalf = Math.round(params.ThumbWidth/2);
	files.push( { 'src': 'backgnd/'+params.TemplateName+'/style-tooltip.css', 'dest': slideshow_css, 'filters': ['params'] } );
}


params.addCss += [
	"",
	"@font-face {",
	"  font-family: 'ws-ctrl-boundary';",
	"  src: url('ws-ctrl-boundary.eot');",
	"  src: url('ws-ctrl-boundary.eot#iefix') format('embedded-opentype'),",
	"       url('ws-ctrl-boundary.svg#ws-ctrl-boundary') format('svg');",
	"  font-weight: normal;",
	"  font-style: normal;",
	"}",
	"@font-face {",
	"  font-family: 'ws-ctrl-boundary';",
	"  src: url('data:application/octet-stream;base64,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') format('woff'),",
	"       url('data:application/octet-stream;base64,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') format('truetype');",
	"}"
].join('\n');

// call this function at the end of each template
finalize();