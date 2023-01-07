const User = require('../model/user');


// create and save new user
exports.create = (req,res) => {
    const {name, email, password} = req.body;
    if (!req.body) {
        return res.status(400).send({ message : "Content can not be emtpy!" });
    }

    // new user
    const user = new User({
        name,
        email,
        password,
    });

    // save user in the database
    user
        .save(user)
        .then(data => {
            //res.redirect('/add-user');
            return user;
        })
        .catch(err =>{
            return res.status(500).json({ message : err.message || "Some error occurred while creating a create operation" });
            });

        }
// retrieve and return all users/ retrive and return a single user
exports.find = (req, res)=>{

    const { id } = req.query;
    if (id) {
        User.findById(id)
            .then(data =>{
                if(!data){
                    return res.status(404).json({ message : "Not found user with id "+ id });
                }else{
                    return res.status(200).json(data)
                }
            })
            .catch(err =>{
                return res.status(500).json({ message: `Erro retrieving user with id ${id}` });
            })

    }else{
        User.find()
            .then(user => {
                return res.status(200).json(user);
            })
            .catch(err => {
                return res.status(500).json({ message : err.message || "Error Occurred while retriving user information" });
            })
    }   
}

// Update a new idetified user by user id
exports.update = (req, res) => {
    if (!req.body) {
        return res.status(400).json({ message : "Data to update can not be empty"})
    }

    const id = req.params.id;
    User.findByIdAndUpdate(id, req.body,)
        .then(data => {
            if (!data) {
                return res.status(404).json({ message : `Cannot Update user with ${id}. Maybe user not found!`})
            } else {
                return res.status(200).json(data);
            }
        })
        .catch(err =>{
            return res.status(500).json({ message : "Error Update user information" });
        })
}

// Delete a user with specified user id in the request
exports.del = (req, res) => {
    const id = req.params.id;

    User.findByIdAndDelete(id)
        .then(data => {
            if (!data) {
                return res.status(404).json({ message : `Cannot Delete with id ${id}. Maybe id is wrong`});
            } else {
                return res.status(200).json({ message : "User was deleted successfully!" });
            }
        })
        .catch(err =>{
            return res.status(500).json({ message: `Could not delete User with id=${id}` });
        });
}