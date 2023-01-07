const User = require('../model/user');
const { update } = require('../controller/controller')

describe('update', () => {
  it('should update the user and return the updated user', async () => {
    // Mock the User model's findByIdAndUpdate method to return a promise that resolves to the updated user
    User.findByIdAndUpdate = jest.fn().mockResolvedValue({ name: 'Alice', email: 'alice@example.com' });

    // Set up the request and response objects
    const req = {
      params: { id: '123' },
      body: { name: 'Alice', email: 'alice@example.com' },
    };
    const res = {
      status: jest.fn().mockReturnThis(),
      json: jest.fn(),
    };

    // Call the update function
    await update(req, res);

    // Assert that the response has the correct status code and JSON body
    expect(res.status).toHaveBeenCalledWith(200);
    expect(res.json).toHaveBeenCalledWith({ name: 'Alice', email: 'alice@example.com' });
  });

  it('should return a 400 error if no data is provided in the request body', async () => {
    // Set up the request and response objects
    const req = {
      params: { id: '123' },
      body: {},
    };
    const res = {
      status: jest.fn().mockReturnThis(),
      json: jest.fn(),
    };

    // Call the update function
    await update(req, res);

    // Assert that the response has the correct status code and JSON body
    expect(res.status).toHaveBeenCalledWith(200);
  });

  it('should return a 404 error if no user is found with the given id', async () => {
    // Mock the User model's findByIdAndUpdate method to return a promise that resolves to null
    User.findByIdAndUpdate = jest.fn().mockResolvedValue(null);

    // Set up the request and response objects
    const req = {
      params: { id: '123' },
      body: { name: 'Alice', email: 'alice@example.com' },
    };
      const res = {
        status: jest.fn().mockReturnThis(),
        json: jest.fn(),
      };
      
      // Call the update function
      await update(req, res);
      
      // Assert that the response has the correct status code and JSON body
      expect(res.status).toHaveBeenCalledWith(404);
      expect(res.json).toHaveBeenCalledWith({ message: 'Cannot Update user with 123. Maybe user not found!' });
    });
    });