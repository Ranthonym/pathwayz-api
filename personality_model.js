const Pool = require("pg").Pool;

const pool = new Pool({
  user: "member",
  host: "localhost",
  database: "final",
  password: "member",
  port: 5432,
});

const getPersonalities = () => {
  return new Promise(function (resolve, reject) {
    pool.query("SELECT * FROM results ORDER BY id ASC", (error, results) => {
      if (error) {
        reject(error);
      }
      resolve(results.rows);
    });
  });
};

const getPersonalitiesTopCareers = (resultid) => {
  return new Promise(function (resolve, reject) {
    pool.query(
      "SELECT * FROM careers WHERE result_id = $1",
      [resultid],
      (error, results) => {
        if (error) {
          reject(error);
        }
        resolve(results.rows);
      }
    );
  });
};

const getCareerRequirementsForPersonalities = (resultid) => {
  return new Promise(function (resolve, reject) {
    pool.query(
      "SELECT * FROM careers JOIN requirements ON careers.requirement_id = requirements.id WHERE result_id = $1",
      [resultid],
      (error, results) => {
        if (error) {
          reject(error);
        }
        resolve(results.rows);
      }
    );
  });
};

const getProgramsForCareer = (requirementid) => {
  return new Promise(function (resolve, reject) {
    pool.query(
      "SELECT * FROM programs WHERE requirement_id = $1",
      [requirementid],
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
  getPersonalities,
  getCareerRequirementsForPersonalities,
  getProgramsForCareer,
  getPersonalitiesTopCareers,
};
