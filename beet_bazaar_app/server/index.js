//IMPORTS FROM PACKAGES
const express = require('express');
const mongoose = require('mongoose');

//IMPORTS FROM OTHER FILES
const authRouter = require('./routes/auth');
//import './features/auth/screens/auth_screen.dart'

//INIT
const PORT = 3000;
const app = express();
const DB = "mongodb+srv://irfan:6uqIwfaWHBS5Q973@cluster0.vkerbhn.mongodb.net/?retryWrites=true&w=majority"; 

//middleware
//CLITEN -> middleware -> SERVER -> CLIENT
app.use(express.json());
app.use(authRouter);

//connections
mongoose.connect(DB).then(() => {
    console.log('Connection successful');
}).catch(e=>{
    console.log(e);
});


//buraya porttan sonra virgul koyup ip yazmazsak localhosta baglaniyo
app.listen(PORT, "0.0.0.0",() => {
    console.log(`connected at port ${PORT}`);
});
