const mongoose = require('mongoose')

module.exports = mongoose.model('Client', new mongoose.Schema({
    clientName: {

        type: String,
        requried: true,
    },
    orders: {
        type: Array,
        required: true,
        default: []
    },
    firstOrderDate: {
        type: Date,
        default: undefined
    },
    clientEmail: {
        type: String,
        required: true,
    },
    clientAccessCode: {
        type: String,
        required: true
    }
}))