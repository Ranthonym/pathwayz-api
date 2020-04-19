const express = require("express");
var cors = require("cors");
const app = express();
const port = 3001;

const user_model = require("./user_model");
const personality_model = require("./personality_model");
const message_model = require("./message_model");

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
app.listen(port, () => {
  console.log(`App running on port ${port}.`);
});
