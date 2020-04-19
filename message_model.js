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

module.exports = {
  getMessagesFromConversation,
};
