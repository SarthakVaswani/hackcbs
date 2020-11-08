const express = require('express');
const http = require('http');
const bodyParser = require('body-parser');
const mongoose = require('mongoose');
const dotenv = require('dotenv');

const app = express();
const userRouter = require('./routers/userRouter');


dotenv.config({ path: './setup.env' });
const database = process.env.DATABASE;
mongoose
    .connect(database, {
        useNewUrlParser: true,
        useCreateIndex: true,
        useFindAndModify: false,
        useUnifiedTopology: true
    })
    .then(() => console.log('Connection established to the database! '));




app.use(bodyParser.json());

 

    
 
let port = process.env.PORT || 3000

app.use((req, res, next) =>{
    res.statusCode = 200;
    res.header('Access-Control-Allow-Origin', "*"); // update to match the domain you will make the request from
    res.header('Access-Control-Allow-Methods', 'GET, PUT, POST, DELETE');
    res.header('Access-Control-Allow-Headers', 'Content-Type');
    next();
});     
app.use('/user', userRouter);
 //mounting express router to handle all request for users that will be sent to the userouter








app.listen(port, () => {
    console.log('server started running');
});
