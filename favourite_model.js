const Pool = require("pg").Pool;

const pool = new Pool({
  user: "member",
  host: "localhost",
  database: "final",
  password: "member",
  port: 5432,
});

const getFavourites = () => {
  return new Promise(function (resolve, reject) {
    pool.query("SELECT * FROM favourites ORDER BY id ASC", (error, results) => {
      if (error) {
        reject(error);
      }
      resolve(results.rows);
    });
  });
};
const createFavourite = (body) => {
  return new Promise(function (resolve, reject) {
    const { career_id } = body;
    pool.query(
      "INSERT INTO favourites (user_id,career_id) VALUES ($1,$2) RETURNING *",
      [userid, career_id],
      (error, results) => {
        if (error) {
          reject(error);
        }
        resolve(`A new favourite has been added added: ${results.rows[0]}`);
      }
    );
  });
};

module.exports = {
  createFavourite,
  getFavourites,
};
