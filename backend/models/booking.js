const mongoose = require('mongoose');
const Schema = mongoose.Schema;

var today = new Date();
var dd = today.getDate();

var mm = today.getMonth() + 1;
var yyyy = today.getFullYear();
if (dd < 10) {
    dd = '0' + dd;
}

if (mm < 10) {
    mm = '0' + mm;
}


var td = mm + '-' + dd + '-' + yyyy ;

const bookingSchema = new Schema({

    name: {
        type: String,
        required: true
    },

    email: {
        type: String,
        required: true,
        unique: true
    },
    paasword: {
        type: String,
  
    },

    phone: {
        type: Number,
        required: true,
        unique: true
    },

    carNumber: {
        type: String,
        required: true,
        unique: true
    },
    carName: {
        type: String,
        required: true
    },
    date: {
        type: String,
        default: td
    },
    slot:{
            type: Number,
            default: 0
    },
    mapp: {
        type: Number,
        default: 0
    },
    duration: {
        type: Number,
        required: true
    },
    startt: {
        type: String, //24 hour format
        required: true
    },
    endd: {
        type: String,  //24 hour format
        required: true
    }



});

var Booking = mongoose.model('Booking', bookingSchema);

module.exports = Booking;


