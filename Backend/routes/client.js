const express = require('express')
const models = require('../plugins/models')


const logMsg = (body) => `[Clients Router] ${body}`

const Plugins = {
    getClientById: async (req, res) => {
        const id = req.params.id
        try {
            const client = await models.Client.findOne({ _id: id })
            if (!client) return res.status(404).json({ msg: logMsg(`Client not found!`) })

            res.client = client
        } catch (error) {
            return res.status(500).json({ msg: logMsg(error) })
        }
    },
    validateNewClient: async (req, res) => {
        const clientEmailAddress = req.body.clientEmailAddress
        try {
            const clients = await models.Client.find({ clientEmail: clientEmailAddress })
            res.newClient = clients === null || clients.length === 0
            res.client = clients !== null || clients.length !== 0 ? clients[0] : null
        } catch (error) {
            return res.status(500).json({ msg: logMsg(error) })
        }
    },
}

const router = express.Router()

// Registration Route
router.post('/register', Plugins.validateNewClient, async (req, res) => {
    if (res.newClient) return res.status(403).json({ msg: logMsg(`Client already exists!`) })

    try {
        const { clientName, clientEmail, clientAccessCode } = req.body
        let client = new models.Client({
            clientName: clientName,
            clientEmail: clientEmail,
            clientAccessCode: clientAccessCode,
            orders: [],
            firstOrderDate: null,
        })

        client = await client.save()
        if (!client)
            return res.status(500).json({ msg: logMsg(`Failed creating client account`) })

        return res.status(201).json({ client: client })
    } catch (error) {
        return res.status(500).json({ msg: logMsg(error) })
    }
})


// Login
router.get('/login', Plugins.validateNewClient, async (req, res) => {
    if (res.newClient) return res.status(404).json({ msg: logMsg(`Client not found!`) })

    try {
        const clientAccessCode = req.body.clientAccessCode
        if (res.client.clientAccessCode === clientAccessCode) return res.status(200).json({ client: res.client })

        return res.status(406).json({ msg: logMsg(`Unacceptable Credentials`) })

    } catch (error) {
        return res.status(500).json({ msg: logMsg(error) })
    }

})


// Get by id
router.get('/:id', Plugins.getClientById, async (req, res) => res.status(200).json({ client: res.client }))


// Get All
router.get('/', async (req, res) => {
    try {
        const clients = await models.Client.findAll()
        if (!clients || clients.length === 0) return res.status(404).json({ msg: logMsg(`Clients not found`) })

        return res.status(200).json({ clients: clients })
    } catch (error) {
        return res.status(500).json({ msg: logMsg(error) })
    }
})


// Patch
router.patch('/:id', Plugins.getClientById, async (req, res) => {
    try {
        const { clientName, clientAccessCode, clientEmail, orders, firstOrderDate } = req.body
        res.client.clientName = res.client.clientName !== clientName && clientName != null ? clientName : res.client.clientName
        res.client.clientAccessCode = res.client.clientAccessCode !== clientAccessCode && clientAccessCode != null ? clientAccessCode : res.client.clientAccessCode
        res.client.clientEmail = res.client.clientEmail !== clientEmail && clientEmail != null ? clientEmail : res.client.clientEmail
        res.client.orders = res.client.orders !== orders && orders != null ? orders : res.client.orders
        res.client.firstOrderDate = res.client.firstOrderDate !== firstOrderDate && firstOrderDate != null ? firstOrderDate : res.client.firstOrderDate

        await res.client.save()
        return res.status(200).json({ newClient: res.client })

    } catch (error) {
        return res.status(500).json({ msg: logMsg(error) })
    }
})



module.exports = router
