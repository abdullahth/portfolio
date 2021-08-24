module.exports = (expressApp) => {
    const productRouter = require('../routes/product')
    expressApp.use('products/', productRouter)

    const clientRouter = require('../routes/client')
    expressApp.use('clients/', clientRouter)

    const offersRouter = require('../routes/offer')
    expressApp.use('offers/', offersRouter)

    const processRouter = require('../routes/process')
    expressApp.use('process/', processRouter)

    const ordersRouter = require('../routes/order')
    expressApp.use('orders/', ordersRouter)

}