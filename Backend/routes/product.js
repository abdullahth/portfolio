const express = require('express')
const models = require('../plugins/models')

const logMsg = (body) => `[Products Router] ${body}`

const Plugins = {
    getProductById: async (req, res) => {
        const id = req.params
        try {
            const product = await models.Product.findOne({ _id: id })
            if (!product) return res.status(404).json({ msg: logMsg('Product not found!') })

            const packages = []
            for (const element in product.packages) {
                const package = await models.Package.findOne({ _id: element })
                if (package !== null) {
                    packages.push(package)
                }


            }
            product.packages = packages
            res.product = product

        } catch (error) {
            return res.status(500).json({ msg: logMsg(error) })
        }
    },
}

const router = express.Router()


// Create Product Route
router.post('/', async (req, res) => {
    try {
        const { name } = req.body
        let product = models.Product({ name: name })
        product = await product.save()
        if (!product) return res.status(500).json({ msg: logMsg(`Can't save product(${name})`) })

        return res.status(201).json({ product: product })

    } catch (error) {
        return res.status(500).json({ msg: logMsg(error) })
    }
})


// Get All Products Route
router.get('/', async (req, res) => {
    try {
        const products = await models.Product.find()
        if (!products || products.length === 0) return res.status(404).json({ msg: logMsg(`No Products found!`) })

        return res.status(200).json({ products: products })

    } catch (error) {
        return res.status(500).json({ msg: logMsg(error) })
    }
})


// Get Product By Id Route
router.get('/:id', Plugins.getProductById, async (req, res) => res.status(200).json({ product: res.product }))


// Delete Product By Id Route
router.delete('/:id', Plugins.getProductById, async (req, res) => {
    try {
        if (!res.product) return res.status(404).json({ msg: logMsg('Product not found!') })
        await res.product.delete()

        for (const element in res.product.packages) {
            const package = await models.Package.findOne({ _id: element })
            if (package !== null) {
                await package.delete()
            }
        }

        res.status(200).json({ msg: logMsg(`Product deleted successfully!`) })
    } catch (error) {
        return res.status(500).json({ msg: logMsg(error) })
    }
})


// Patch Product By Id Route
router.patch('/:id', Plugins.getProductById, async (req, res) => {
    const { name, available, packages, purchasedBy } = req.body
    try {
        if (!res.product) return res.status(404).json({ msg: logMsg('Product not found!') })
        res.product.name = res.product.name !== name && name !== null ? name : res.product.name
        res.product.available = res.product.available !== available && available !== null ? available : res.product.available
        res.product.purchasedBy = res.product.purchasedBy !== purchasedBy && purchasedBy !== null ? purchasedBy : res.product.purchasedBy

        for (const element in res.product.packages) {
            const package = await models.Package.findOne({ _id: element.id })
            if (package != null) {
                pacakge = element
                element = pacakge._id
                await package.save()
            }
        }
        await res.product.save()
        res.status(200).json({ newproduct: res.product })

    } catch (error) {
        return res.status(500).json({ msg: logMsg(error) })
    }
})

module.exports = router
