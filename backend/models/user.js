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

var time = today.getHours() + ":" + today.getMinutes() + ":" + today.getSeconds();
var td = mm + '-' + dd + '-' + yyyy + " " + time;

const customerSchema = new Schema({

    name: {
        type: String,
        required: true
    },

    email: {
        type: String,
        required: true,
        unique: true
    },

    phone: {
        type: Number,
        required: true,
        unique: true
    },

    password: {
        type: String,
        required: true,
        
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
    }


});

var Customer = mongoose.model('Customer', customerSchema);

module.exports = Customer;


