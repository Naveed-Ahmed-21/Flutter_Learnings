const mongoose = require('mongoose');
const db = require('../config/db');
const bcrypt = require('bcrypt');


const { Schema } = mongoose;
const userSchema = new Schema({

    email: {
        type: String,
        required: true,
        unique: true,
        lowercase: true
    },
    password: {
        type: String,
        required: true
    }
});

userSchema.pre('save', async function(){
    try{
        var user = this;

        const salt = await(bcrypt.genSalt(10));
        const hashpass = await bcrypt.hash(user.password, salt);
        user.password = hashpass;
    }
    catch(error){
        throw new Error("Error hashing password: " + error.message);
    }
});

userSchema.methods.comparePassword = async function (candidatePassword) {
    try {
        console.log('------------------------no password',this.password);
        const isMatch = await bcrypt.compare(candidatePassword, this.password);
        return isMatch;
    }
    catch (error){
        throw new Error("Error comparing password: " + error.message);
    }
};



const UserModel = db.model('user', userSchema);

module.exports = UserModel;