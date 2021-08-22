// api endpoints
const express = require('express')
const endpoints = express()
endpoints.use(express.json())
// require('./plugins/route_reg.js')(endpoint)

// server
const http = require('http')
const server = http.createServer(endpoints)

//socket
const io = require('socket.io')(server)
// require('./plugins/socket_reg')(io)

// multer plugin (will be initialized soon)

// nodemailer plugin (will be initialized soon)

// database plugin
const mongoose = require('mongoose')
mongoose.connect('mongodb://localhost:portfolio', { useNewUrlParser: true, useUnifiedTopology: true })
mongoose.connection.once('open', () => console.log(`[Database] Database Initialized Successfully!`))
mongoose.connection.on('error', (error) => console.log(`[Database] ${error}`))


// Socket Listen
server.listen(3000, () => console.log(`[Server] Server Initialized Successfully on port 3000\nListen/Test Endpoints on localhost-> http://localhost:3000`))