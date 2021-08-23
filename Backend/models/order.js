const mongoose = require('mongoose')

module.exports = mongoose.model('Order', new mongoose.Schema({
    clientId: {
        type: String,
        required: true,
    },
    productId: {
        type: String,
        required: true,
    },
    packageId: {
        type: String,
        required: true,
    },
    offers: {
        type: Array,
        required: true,
        default: [],
    },
    galleryImagesIds: {
        type: Array,
        required: true,
        default: [],
    },
    placment: {
        type: Date,
        required: true,
        default: Date.now()
    },
    delivery: {
        type: Date,
        required: true,
        default: null, 
    }

}))