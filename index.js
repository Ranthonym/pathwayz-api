require("dotenv").config();
const express = require("express");
var cors = require("cors");
const app = express();
// const port = 3001;
// const socket = require("socket.io");
const server = require("http").Server(app);
const io = require("socket.io")(server);
const user_model = require("./user_model");
const personality_model = require("./personality_model");
const message_model = require("./message_model");
const favourite_model = require("./favourite_model");

//Creating server for chat
//When the server starts listening on port 3001 then fire a callbak function
// The callback function will console.log a string
//const server = app.listen(3001, function () {//
// console.log("Listening to requests on port 3001");
//});

// serve a static file to the browser
app.use(express.static("public"));

//Socket setup
//passing const server to the socket function and assigning it to const io
//essentially now socket.IO will work on this server just created

app.use(cors());

app.use(express.json());
app.use(function (req, res, next) {
  res.setHeader("Access-Control-Allow-Origin", "http://localhost:3000");
  res.setHeader("Access-Control-Allow-Methods", "GET,POST,PUT,DELETE,OPTIONS");
  res.setHeader(
    "Access-Control-Allow-Headers",
    "Content-Type, Access-Control-Allow-Headers"
  );
  next();
});

app.get("/", (req, res) => {
  user_model
    .getUsers()
    .then((response) => {
      res.status(200).json(response);
    })
    .catch((error) => {
      res.status(500).send(error);
    });
});
app.get("/messages", (req, res) => {
  message_model
    .getMessagesFromConversation()
    .then((response) => {
      res.status(200).json(response);
    })
    .catch((error) => {
      res.status(500).send(error);
    });
});

app.post("/messages", (req, res) => {
  console.log(req.body);
  message_model
    .createMessage(req.body)
    .then((response) => {
      res.status(200).send(response);
    })
    .catch((error) => {
      res.status(500).send(error);
    });
});

app.get("/personalities", (req, res) => {
  personality_model
    .getPersonalities()
    .then((response) => {
      res.status(200).json(response);
    })
    .catch((error) => {
      res.status(500).send(error);
    });
});
app.get("/personalities/:id/requirements", (req, res) => {
  personality_model
    .getCareerRequirementsForPersonalities(req.params.id)
    .then((response) => {
      res.status(200).send(response);
    })
    .catch((error) => {
      res.status(500).send(error);
    });
});

app.get("/personalities/:id", (req, res) => {
  personality_model
    .getPersonalitiesTopCareers(req.params.id)
    .then((response) => {
      res.status(200).send(response);
    })
    .catch((error) => {
      res.status(500).send(error);
    });
});

app.get("/programs/:id", (req, res) => {
  personality_model
    .getProgramsForCareer(req.params.id)
    .then((response) => {
      res.status(200).send(response);
    })
    .catch((error) => {
      res.status(500).send(error);
    });
});

app.get("/favourites", (req, res) => {
  favourite_model
    .getFavourites()
    .then((response) => {
      res.status(200).json(response);
    })
    .catch((error) => {
      res.status(500).send(error);
    });
});

app.post("/favourites", (req, res) => {
  console.log(req.body);
  favourite_model
    .createFavourite(req.body)
    .then((response) => {
      res.status(200).send(response);
    })
    .catch((error) => {
      res.status(500).send(error);
    });
});

app.post("/users", (req, res) => {
  user_model
    .createUser(req.body)
    .then((response) => {
      res.status(200).send(response);
    })
    .catch((error) => {
      res.status(500).send(error);
    });
});

app.delete("/users/:id", (req, res) => {
  console.log(req.params.id);
  user_model
    .deleteUser(req.params.id)
    .then((response) => {
      res.status(200).send(response);
    })
    .catch((error) => {
      res.status(500).send(error);
    });
});

//------------------------------------code for live chat via sockets-----------------------------------------------

// const server = app.listen(port, () => {
//   console.log(`App running on port ${port}.`);
// });
// const io = socket(server);

io.on("connection", (socket) => {
  const { id } = socket.client;
  // When the client connects, they are sent a message
  // socket.emit("message", "You are connected!");
  // The other clients are told that someone new has arrived
  // socket.broadcast.emit("message", "Another client has just connected!");

  console.log(`User connected: ${id}`);
  // socket.on("chat message", (msg) => {
  //   console.log(`${id}: ${msg}`);
  // });

  // As soon as the username is received, it's stored as a session variable
  socket.on("session", function (username) {
    socket.username = username;
  });
  // When a "message" is received (click on the button), it's logged in the console
  socket.on("message", function (message) {
    // The username of the person who clicked is retrieved from the session variables
    console.log(
      socket.username + " is speaking to me! They're saying: " + message
    );

    //add user:message object code here
    socket.broadcast.emit("message", message);
  });
});

const PORT = process.env.PORT || 3001;
server.listen(PORT, () => console.log(`Listen on *: ${PORT}`));
