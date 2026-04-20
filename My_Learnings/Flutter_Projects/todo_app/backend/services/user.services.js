const UserModel = require('../model/user.model');
const User = require('../model/user.model');   

class UserService{
    static async registerUser(email,password){
        try{
             const createUser = new UserModel({email,password});
             return await createUser.save();
        }
        catch(error){
            throw new Error("User registration failed: " + error.message);
        }
    }
}

module.exports = UserService;