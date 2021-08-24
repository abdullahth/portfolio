const express = require('express')
const models = require('../plugins/models')

const logMsg = (body) => `[Order Route] ${body}`

const Plugins = {
    // Routes Plugin
    getOrderById: async (req, res, next) => {
        try {
            const id = req.params.id
            const order = await models.Order.findOne({ _id: id })
            if (!order) return res.status(404).json({ msg: logMsg(`Order not found!`) })

            res.order = order

        } catch (error) {
            return res.status(500).json({ msg: logMsg(error) })
        }
        next()
    },
    getOrdersByClientId: async (req, res, next) => {
        try {
            const clientId = req.params.clientId
            const orders = await models.Order.find({ _id: clientId })
            if (!order) return res.status(404).json({ msg: logMsg(`Order not found!`) })

            res.orders = orders

        } catch (error) {
            return res.status(500).json({ msg: logMsg(error) })
        }
        next()

    }

}

const router = express.Router()


// Order Placement
router.post('/', async (req, res) => {
    try {
        const { clientId, productId, packageId, offers, delivery } = req.body
        const order = models.Order({
            clientId: clientId,
            productId: productId,
            packageId: packageId,
            offers: offers,
            delivery: delivery,
            placement: Date.now(),
            galleryImagesIds: [],
            orderStatus: 0,
        })
        await order.save()
        return res.status(200).json({ order: order })
    } catch (error) {
        return res.status(500).json({ msg: logMsg(error) })
    }
})







module.exports = router
