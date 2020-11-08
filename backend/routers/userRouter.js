const bodyParser = require('body-parser');
const express = require('express');
const Customers = require('../models/user');
const Booking = require('../models/booking');
const Customer = require('../models/user');


const User = express.Router();

User.use(bodyParser.json());
 
setInterval(() => {
    var today = new Date();
    var hour = today.getHours();
    var min = today.getMinutes();
    if(min < 10){
        min = "0" + min;
    }
    if(hour < 10){
        hour = "0" + hour;
    }
    var time = hour + ":" + min;


    Booking.findOneAndDelete({endd: time})
        .then((bk) => {
            
            if(bk)
            {
                Customer.find({email: bk.email})
                .then((cust) => {
                    cust[0].mapp = 0;
                    cust[0].slot = 0;
                    Customer.findByIdAndUpdate(cust[0]._id, cust[0])
                        .then((customer) => {
                            console.log("customer updated - ");
                            console.log(customer);
                        })
                    })
            }
        })
    }, 30000)

User
    .route('/signup')
    .get((req, res, next) => {
      
            res.statusCode = 404;
            res.send('We did not find what u were looking for!!'); 
          
    })
   
    .post((req, res, next) => {
        Customers.create(req.body)
             .then((customer) => {
               console.log('Customer details added ', customer);
               res.statusCode = 200;
               res.setHeader('Content-Type', 'application/json');
               res.json(customer);
             }, (err) => next(err))
           
              
             .catch((err) => next(err));
    })
    User
    .route('/login')
    .post((req, res, next) => {
        
        
        Customers.find({email: req.body.email})
        .then((customer) => {
           
            if(customer[0].password == req.body.password)
            {
                res.statusCode = 200;
                res.setHeader('Content-Type', 'application/json');
                res.json(customer);
            }       
            else{
                res.send("Kindly check your password!")
            }
        }, (err) => next(err))
        .catch((err) => {
            res.send("Your email is not correct!")
            next(err);
        });
    })
   
   
User
    .route('/booking')
    .post((req, res, next) => {
        Booking.find({slot: req.body.slot, mapp: req.body.mapp})
            .then(
                (book) => {
                    var mssg;
                    var obj;
                    if(book.length != 0)
                    {
                        mssg = "already created";
                        res.statusCode = 204;
                        res.setHeader('Content-Type', 'application/json');
                        res.json(customer);
                        res.send(mssg);
                    }
                    else
                    {   
                       Booking.create(req.body)
                            .then(
                                (booking) => {
                                  
                                     mssg = "new booking created";
                                     obj = booking;
                                     res.statusCode = 200;
                                     res.setHeader('Content-Type', 'application/json');
                                     res.json(booking);
                                    
                                     Customer.find({email: booking.email})
                                        .then((cust) => {
                                            cust[0].mapp = booking.mapp;
                                            cust[0].slot = booking.slot;
                                            Customer.findByIdAndUpdate(cust[0]._id, cust[0])
                                                .then((customer) => {
                                                    console.log("customer updated - ");
                                                    console.log(customer);
                                                })
                                            
                                        })
                                }, (err) => next(err));
                    }
                  
                    
                }
                )
               
    })
    .get((req,res,next) => {
        Booking.find({mapp: req.body.mapp})
            .then(
                (booking) => {
                    res.statusCode = 200;
                    res.json(booking);
                }
            )

    })
  
module.exports = User;