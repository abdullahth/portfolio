module.exports = (expressApp) => {
    const productRouter = require('../routes/product')
    expressApp.use(productRouter)

    const clientRouter = require('../routes/client')
    expressApp.use(clientRouter)

    const offersRouter = require('../routes/offer')
    expressApp.use(offersRouter)

    const processRouter = require('../routes/process')
    expressApp.use(processRouter)

    const ordersRouter = require('../routes/order')
    expressApp.use(ordersRouter)

}