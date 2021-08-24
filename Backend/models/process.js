const mongoose = require('mongoose')



module.exports = mongoose.model('Process', new mongoose.Schema({
    orderId: {
        type: String,
        required: true
    },
    status: {
        type: Number,
        required: true,
    },
}))
