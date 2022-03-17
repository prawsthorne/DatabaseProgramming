const express = require('express')
const app = express()
const db = require('./dal')
const PORT = process.env.PORT || 3000;

//app.use(express.urlencoded({ extended: false }));

app.get('/', (req, res) => {
    res.json({ info: `Node.js and Express API` })
  })

app.get('/films', db.getFilms)  // list all the films
app.get('/filmActors', db.getFilmsByActors)  // do the M:M join for this
app.get('/filmActors/:id', db.getFilmsByActorId)  // and then get a specific actor

app.get('/actors', db.getActors)
app.get('/actors/:theId', db.getActorById)

app.get('/awards', async (request, response) => {
  let awards = await db.getAwards();
  response.status(200).json(awards)
});


app.listen(PORT, () => {
  console.log(`Simple app running on port ${PORT}.`)
})