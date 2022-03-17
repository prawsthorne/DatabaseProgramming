const Pool = require('pg').Pool
const pool = new Pool({
  user: 'fullstack',
  host: 'localhost',
  database: 'dvdrental',
  password: 'fullstack',
  port: 5432,
})

const getFilms = (request, response) => {
  var query = require('url').parse(request.url,true).query;
  var title = query.title;
  var rating = query.rating;
  var year = query.year;

  if(title) { // if there was a query string...
    var SQL = `SELECT film_id, title, description, release_year, rental_rate, length, rating \
    FROM film WHERE title = '${title}';`;
   }
   else if(rating) {
    var SQL = `SELECT film_id, title, description, release_year, rental_rate, length, rating \
    FROM film WHERE rating = '${rating}';`;
   }
   else if(year) {
    var SQL = `SELECT film_id, title, description, release_year, rental_rate, length, rating \
    FROM film WHERE release_year = ${year};`;
   }
   else {
    var SQL = 'SELECT film_id, title, description, release_year, rental_rate, length, rating \
    FROM film ORDER BY title ASC';
   }

  console.log(`The SQL is: ${SQL}.`)


  pool.query(SQL, (error, results) => {
  if (error) {
    if(error.code = '22P02')
      response.json({ info: `Invalid MPA rating.`})
    else 
      throw error
  }
  else 
  if (results.rowCount > 0)
    response.status(200).json(results.rows)
  else
    response.json({ info: `No records found.`})
})
}

const getFilmsByActors = (request, response) => {
  var SQL = 'SELECT act.actor_id, act.first_name,act.last_name,flm.title,flm.release_year \
    FROM actor AS act \
    LEFT JOIN film_actor AS fact ON act.actor_id = fact.actor_id \
    LEFT JOIN film AS flm ON fact.film_id = flm.film_id \
    ORDER BY title ASC';
  pool.query(SQL, (error, results) => {
  if (error) {
    throw error
  }
  response.status(200).json(results.rows)
})
}

const getFilmsByActorId = (request, response) => {
  const id = parseInt(request.params.id)

  /*
  var SQL = 'SELECT act.actor_id, act.first_name,act.last_name,flm.title,flm.release_year \
  FROM actor AS act \
  LEFT JOIN film_actor AS fact ON act.actor_id = fact.actor_id \
  LEFT JOIN film AS flm ON fact.film_id = flm.film_id \
  WHERE act.actor_id = $1';
  */
  var SQL = 'SELECT * FROM vw_film_actor WHERE actor_id = $1';

  pool.query(SQL, [id], (error, results) => {
    if (error) {
      throw error
    }
    response.status(200).json(results.rows)
  })
}

const getActors = (request, response) => {
    //var query = require('url').parse(request.url,true).query;
  
    var SQL = 'SELECT actor_id, first_name, last_name \
        FROM actor ORDER BY last_name ASC';
  
    pool.query(SQL, (error, results) => {
    if (error) {
      throw error
    }
    response.status(200).json(results.rows)
  })
  }

  const getActorById = (request, response) => {
    const id = parseInt(request.params.theId)
  
    var SQL = 'SELECT first_name, last_name \
      FROM actor WHERE actor_id = $1'

 //   console.log(`The SQL is: ${SQL}.`)

    pool.query(SQL, [id], (error, results) => {
      if (error) {
        throw error
      }
      response.status(200).json(results.rows)
    })
  }

//get all awards.
var getAwards = function() {
  return new Promise(function(resolve, reject) {
    const sql = "SELECT film_id, title, COUNT(film_id) AS count \
      FROM vw_film_awards GROUP BY title, film_id ORDER BY title";
    pool.query(sql, [], (err, result) => {
      if (err) {
        reject(err);
      } else {
        resolve(result.rows);
      }
    }); 
  }); 
};

  module.exports = {
    getFilms,
    getFilmsByActors,
    getFilmsByActorId,
    getActors,
    getActorById,
    getAwards,
  }