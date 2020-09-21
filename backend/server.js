const express = require('express')
const mongoose = require('mongoose')
mongoose.connect('mongodb+srv://adhedewa1996:???@cluster0.huuxo.mongodb.net/<dbname>?retryWrites=true&w=majority', { useNewUrlParser: true, useUnifiedTopology: true })
const cors = require('cors')
const app = express()

const port = process.env.PORT | 80

app.use(express.json())
app.use(express.urlencoded({ extended: true }))
app.use(cors())

app.use('/api', require('./routes/index'))

app.listen(port)