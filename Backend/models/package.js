const mongoose = require('mongoose')

module.exports = mongoose.model('Package', new mongoose.Schema({
    name: {
        type: String,
        required: true,
    },
    description: {
        type: String,
        required: true,
    },
    components: {
        type: Array,
        required: true,
    },
    deliveryDate: {
        // by days 
        type: Number,
        required: true
    },
    price: {
        type: Number,
        required: true
    },
    availableOffers: {
        type: Array,
        required: true,
        default: [],
    },
    purchasedBy: {
        type: Array,
        required: true,
        default: [],
    }
}))