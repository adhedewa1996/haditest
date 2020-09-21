const express = require('express')
const User = require('../model/index')
const router = express.Router()

router.get('/', (req, res) => {
    User.find({}, (err, data) => {
        res.json(data)
    })
})

router.get('/:id', (req, res) => {
    User.findById(req.params.id, (err, data) => {
        res.json(data)
    })
})

router.delete('/:id', async(req, res) => {
    await User.findByIdAndDelete(req.params.id)
    res.json({ 'message': 'deleted' })
})

router.post('/', (req, res) => {
    user = new User({
        name: req.body.name
    })
    user.save(() => {
        res.json(user)
    })
})

router.put('/:id', (req, res) => {
    User.findByIdAndUpdate(req.params.id, req.body)
    res.json({ 'message': 'updated' })
})

module.exports = router