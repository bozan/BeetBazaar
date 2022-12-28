var Product = require('../model/product');

exports.find = (req, res)=>{

    if(req.query.id){
        const id = req.query.id;

        Product.findById(id)
            .then(data =>{
                if(!data){
                    res.status(404).send({ message : "Not found product with id "+ id})
                }else{
                    res.send(data)
                }
            })
            .catch(err =>{
                res.status(500).send({ message: "Error retrieving product with id " + id})
            })

    }else{
        Product.find()
            .then(product => {
                res.send(product)
            })
            .catch(err => {
                res.status(500).send({ message : err.message || "Error Occurred while retriving product information" })
            })
    }   
}

// Delete a product with specified product id in the request
exports.delete = (req, res)=>{
    const id = req.params.id;

    Product.findByIdAndDelete(id)
        .then(data => {
            if(!data){
                res.status(404).send({ message : `Cannot Delete with id ${id}. Maybe id is wrong`})
            }else{
                res.send({
                    message : "Product was deleted successfully!"
                })
            }
        })
        .catch(err =>{
            res.status(500).send({
                message: "Could not delete Product with id=" + id
            });
        });
}