const Pool = require("pg").Pool;

const pool = new Pool({
  user: "member",
  host: "localhost",
  database: "final",
  password: "member",
  port: 5432,
});

const getMessagesFromConversation = () => {
  return new Promise(function (resolve, reject) {
    pool.query("SELECT * FROM messages;", (error, results) => {
      if (error) {
        reject(error);
      }
      resolve(results.rows);
    });
  });
};

const createMessage = (body) => {
  return new Promise(function (resolve, reject) {
    const { user_id, conversation_id, message } = body;
    pool.query(
      "INSERT INTO messages (user_id, conversation_id, message ) VALUES ($1,$2,$3) RETURNING *",
      [user_id, conversation_id, message],
      (error, results) => {
        if (error) {
          reject(error);
        }
        resolve(`A new message has been added added: ${results.rows[0]}`);
      }
    );
  });
};

module.exports = {
  getMessagesFromConversation,
  createMessage,
};
