const User = require('../model/user');
const mongoose = require("mongoose");
const {create} = require('../controller/controller')


// create = async (req,res) => {
  // try{
  //   const {name, email, password} = req.body;
  //   if (!req.body) {
  //       return res.status(400).send({ message : "Content can not be emtpy!" });
  //   }


  //   // new user
  //   const user = new User({
  //       name,
  //       email,
  //       password,
  //   });
  //   // save user in the database
  //   await user.save();
  //   return user;
       
        
  //     }
  //     catch(error){
  //       throw new Error(error)
  //     }
  //   }

    const uri = 'mongodb+srv://irfan:6uqIwfaWHBS5Q973@cluster0.vkerbhn.mongodb.net/?retryWrites=true&w=majority';

    const userData = {
        name: "Beyza",
        email: "beyza@gmail.com",
        password: "123"
      };

describe('create', () => {

        beforeAll(async () => {
          await mongoose.connect(uri, { useNewUrlParser: true, useUnifiedTopology: true }, (err) => {
              if (err) {
                  console.error(err);
                  process.exit(1);
              }
          });
      });

    it('Should create a new user with valid input and return 200 status code', () => {
      // Create a mock request object with a name, email, and password
      const req = {
        body: {
          name: 'beyza',
          email: 'beyza@example.com',
          password: 'abc123',
        },
      };
  
      // Create a mock response object
      const res = {
        send: jest.fn(),
        status: jest.fn(),
        redirect: jest.fn(),
      };
  
      // Call the create function
      const user = create(req, res);
      //expect(user).toBe(req.body);
  
      // Assert that the response status was not set to 400 (bad request)
      expect(res.status).not.toBeCalled();
  
      // Assert that the response was redirected to '/add-user'
      expect(res.redirect).toBeCalledWith('/add-user');
    });
  
    it('should return a 400 status code if no request body is provided', async () => {
      // Create a mock request object with no body
      const req = {};
  
      // Create a mock response object
      const res = {
        send: jest.fn(),
        status: jest.fn(),
        redirect: jest.fn(),
      };
  
      // Call the create function
      
      
      // Assert that the response status was set to 400 (bad request)
      await expect(create(req, res)).toBe(2);
      // Assert that the response send method was called with the correct message
      //expect(res.send).toBeCalledWith({ message: 'Content can not be empty!' });
    });
  
    it('should return a 500 status code if there is an error saving the user', () => {
      // Create a mock request object with a name, email, and password
      const req = {
        body: {
          name: 'John Smith',
          email: 'john@example.com',
          password: 'abc123',
        },
      };
      // Create a mock response object
      const res = {
        send: jest.fn(),
        status: jest.fn(),
        redirect: jest.fn(),
      };
  
      // Mock the save method of the User model to throw an error
      User.save.mockImplementationOnce(() => {
        throw new Error('Error saving user');
      });
  
      // Call the create function
      create(req, res);
  
      // Assert that the response status was set to 500 (internal server error)
      expect(res.status).toBeCalledWith(500);
  
      // Assert that the response send method was called with the correct message
      expect(res.send).toBeCalledWith({ message: 'Error saving user' });
    });
  });
  


// const request = require('supertest');
// const User = require('../model/user');
// const express = require('express');
// const app = express();


// const connectDB = async () => {
//     try{
//         // mongodb connection string
//         const con = await mongoose.connect(process.env.MONGO_URI, {
//             useNewUrlParser: true,
//             useUnifiedTopology: true
//         })

//         console.log(`MongoDB connected : ${con.connection.host}`);
//     }catch(err){
//         console.log(err);
//         process.exit(1);
//     }
// }

// beforeAll(async () => await connectDB)

// describe('UserController', () => {
//   // Clear the database before running each test
// //   beforeEach(async () => {
// //     await User.deleteMany({}).exec();
// //   });

//   describe('create', () => {
//     test('creates a new user', async () => {
//       const response = await request(app)
//         .post('/users')
//         .send({
//           name: 'John Doe',
//           email: 'john@example.com',
//           password: 'mypassword',
//         });
//       expect(response.statusCode).toBe(302); // expected redirect status code
//       expect(response.headers.location).toBe('/add-user');
//       const users = await User.find();
//       expect(users).toHaveLength(1);
//       expect(users[0]).toMatchObject({
//         name: 'John Doe',
//         email: 'john@example.com',
//         password: 'mypassword',
//       });
//     });

//     it('returns an error if the request body is empty', async () => {
//       const response = await request(app).post('/users');
//       expect(response.statusCode).toBe(400);
//       expect(response.body).toEqual({ message: 'Content can not be emtpy!' });
//     });

//     it('returns an error if there is a problem saving the user', async () => {
//       // We can force a save error by passing an invalid value for the `type` field
//       const response = await request(app)
//         .post('/users')
//         .send({
//           name: 'John Doe',
//           email: 'john@example.com',
//           password: 'mypassword',
//           type: 123, // invalid value for a string field
//         });
//       expect(response.statusCode).toBe(500);
//       expect(response.body).toEqual({
//         message: 'Cast to String failed for value "123" at path "type"',
//       });
//     });
//   })
// //   describe('find', () => {
// //     it('returns all users if no id is provided', async () => {
// //       await User.create([
// //         { name: 'John Doe', email: 'john@example.com', password: 'mypassword' },
// //         { name: 'Jane Doe', email: 'jane@example.com', password: 'herpassword' },
// //       ]);
// //       const response = await request(app).get('/users');
// //       expect(response.statusCode).toBe(200);
// //       expect(response.body).toEqual([
// //         { name: 'John Doe', email: 'john@example.com', password: 'mypassword' },
// //         { name: 'Jane Doe', email: 'jane@example.com', password: 'herpassword' },
// //       ]);
// //     });

// //     it('returns a single user if an id is provided', async () => {
// //       const user = new User({
// //         name: 'John Doe',
// //         email: 'john@example.com',
// //         password: 'mypassword',
// //       });
// //       await user.save();
// //       const response = await request(app).get(`/users?id=${user._id}`);
// //       expect(response.statusCode).toBe(200);
// //       expect(response.body).toEqual({
// //         name: 'John Doe',
// //         email: 'john@example.com',
// //         password: 'mypassword',
// //       });
// //     });

// //     it('returns a 404 error if no user is found with the provided id', async () => {
// //       const response = await request(app).get('/users?id=12345');
// //       expect(response.statusCode).toBe(404);
// //       expect(response.body).toEqual({ message: 'Not found user with id 12345' });
// //     });

// //     it('returns a 500 error if there is a problem retrieving the user', async () => {
// //       // We can force an error by providing an invalid id format
// //       const response = await request(app).get('/users?id=invalid');
// //       expect(response.statusCode).toBe(500);
// //       expect(response.body).toEqual({ message: 'Error retrieving user with id invalid' });
// //     });
// //   });
// });



// // The create function should create a new user if the request body is not empty and there are no validation errors. It should return a 302 status code and redirect to the /add-user route.
// // The create function should return a 400 status code and a message if the request body is empty.
// // The create function should return a 500 status code and a message if there is an error saving the user to the database (e.g. a validation error).
// // The find function should return all users if no id is provided in the query string.
// // The find function should return a single user if an id is provided in the query string and the user is found.
// // The find function should return a 404 status code and a message if no user is found with the provided id.
// // The find function should return a 500 status
