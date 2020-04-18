// require express first
const express = require("express");
//require socket.IO
const socket = require("socket.io");

//setting up the express app by invoking the express function
const app = express();

//now create a server
//When the server starts listening on port 3001 then fire a callbak function
// The callback function will console.log a string
const server = app.listen(3001, function () {
  console.log("Listening to requests on port 3001");
});
// serve a static file to the browser
app.use(express.static("public"));

//Socket setup
//passing const server to the socket function and assigning it to const io
//essentially now socket.IO will work on this server just created
const io = socket(server);
