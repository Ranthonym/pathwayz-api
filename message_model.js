const Pool = require("pg").Pool;

const pool = new Pool({
  user: "member",
  host: "localhost",
  database: "final",
  password: "member",
  port: 5432,
});

const getMessagesFromConversation = (conversationid) => {
  conversation_id = 1;
  return new Promise(function (resolve, reject) {
    pool.query(
      "SELECT * FROM messages WHERE conversation_id = $1;",
      [conversationid],
      (error, results) => {
        if (error) {
          reject(error);
        }
        resolve(results.rows);
      }
    );
  });
};

module.exports = {
  getMessagesFromConversation,
};
