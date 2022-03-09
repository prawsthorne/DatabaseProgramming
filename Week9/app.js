const express = require('express')
//const bodyParser = require('body-parser')
const app = express()
const db = require('./dal')
const PORT = process.env.PORT || 3000;

/*
app.use(bodyParser.json())
app.use(
  bodyParser.urlencoded({
    extended: true,
  })
)
*/
app.get('/', (req, res) => {
    res.json({ info: `Node.js and Express API` })
  })

app.get('/films', db.getFilms)  // list all the films
app.get('/filmActors', db.getFilmsByActors)  // do the M:M join for this
app.get('/filmActors/:id', db.getFilmsByActorId)  // and then get a specific actor

app.get('/actors', db.getActors)
app.get('/actors/:id', db.getActorById)

app.get('/awards', db.getAwards)

app.listen(PORT, () => {
  console.log(`Simple app running on port ${PORT}.`)
})