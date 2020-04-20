const Pool = require("pg").Pool;
console.log(process.env);
const pool = new Pool({
  user: "member",
  host: "localhost",
  database: "final",
  password: "member",
  port: 5432,
});

const getUsers = () => {
  return new Promise(function (resolve, reject) {
    pool.query("SELECT * FROM users ORDER BY id ASC", (error, results) => {
      if (error) {
        reject(error);
      }
      console.log(results);
      resolve(results.rows);
    });
  });
};

const createUser = (body) => {
  return new Promise(function (resolve, reject) {
    const { name, email, password } = body;
    pool.query(
      "INSERT INTO users (name, email,password) VALUES ($1, $2, $3) RETURNING *",
      [name, email, password],
      (error, results) => {
        if (error) {
          reject(error);
        }
        resolve(`A new merchant has been added added: ${results.rows[0]}`);
      }
    );
  });
};

const deleteUser = (id) => {
  return new Promise(function (resolve, reject) {
    pool.query("DELETE FROM users WHERE id = $1", [id], (error, results) => {
      if (error) {
        reject(error);
      }
      resolve(`User deleted with ID: ${id}`);
    });
  });
};

module.exports = {
  getUsers,
  createUser,
  deleteUser,
};
