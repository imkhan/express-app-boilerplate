var express = require('express'),
    bodyParser = require('body-parser'),
    errorHandler = require('errorhandler'),
    methodOverride = require('method-override'),
    port = parseInt(process.env.PORT,10) || 4567,
    app = express();

/**
 * Serves the index.html as the main page
 */
app.get('/',function (req,res) {
  res.redirect('index.html');
});

app.use(methodOverride());
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({
  extended:true
}));
app.use(express.static(__dirname+'/public'));
app.use(errorHandler({
  dumpExceptions:true,
  showStack:true
}));

app.listen(port,function () {
  console.log('server is listening on %d',port);
});
