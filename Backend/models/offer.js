const mongoose = require('mongoose')

module.exports = {
    discoutPercent: {
        type: Number,
        required: true,
    }, 
    promoCode: {
        type: String, 
        required: true, 
    }, 
    customizedProducts: {
        type: Array, 
        required: true, 
        // Null Customized Product means it's global offer for all 
        default: null 
    }, 
    
    customizedPackages: {
        // key Value is the custmized product id 
        type: {}, 
        required: true, 
        // Null Customized Product means it's global offer for all 
        default: null 
    }, 

}