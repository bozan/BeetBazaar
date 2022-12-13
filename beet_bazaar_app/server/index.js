//IMPORTS FROM PACKAGES
const express = require('express');

//IMPORTS FROM OTHER FILES
const authRouter = require('./routes/auth');
//import './features/auth/screens/auth_screen.dart'

//INIT
const PORT = 3000;
const app = express();


//buraya porttan sonra virgul koyup ip yazmazsak localhosta baglaniyo
app.listen(PORT, () => {
    console.log(`connected at port ${PORT}`);
});
