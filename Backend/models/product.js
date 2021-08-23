const mongoose = require('mongoose')

module.exports = mongoose.model('Product', new mongoose.Schema({
    name: {
        type: String,
        required: true,
    },
    available: {
        type: Boolean,
        required: true,
        default: true,
    },
    packages: {
        type: Array,
        required: true,
        default: []
    },
    purchasedBy: {
        type: Array,
        required: true,
        deafult: [],
    }
}))