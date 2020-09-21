const mongosee = require('mongoose')
const Schema = mongosee.Schema

userSchema = Schema({
    name: String
})

module.exports = mongosee.model('User', userSchema)