const User = require('../model/user');
const { find } = require('../controller/controller');

describe('find', () => {
  it('should return all users when no id is provided in the query', async () => {
    // Mock the User model's find method to return a promise that resolves to a list of users
    User.find = jest.fn().mockResolvedValue([{ name: 'Alice' }, { name: 'Bob' }]);

    // Set up the request and response objects
    const req = { query: {} };
    const res = {
      status: jest.fn().mockReturnThis(),
      json: jest.fn(),
    };

    // Call the find function
    await find(req, res);

    // Assert that the response has the correct status code and JSON body
    expect(res.status).toHaveBeenCalledWith(200);
    expect(res.json).toHaveBeenCalledWith([{ name: 'Alice' }, { name: 'Bob' }]);
  });

  it('should return a single user when an id is provided in the query', async () => {
    // Mock the User model's findById method to return a promise that resolves to a single user
    User.findById = jest.fn().mockResolvedValue({ name: 'Alice' });

    // Set up the request and response objects
    const req = { query: { id: '123' } };
    const res = {
      status: jest.fn().mockReturnThis(),
      json: jest.fn(),
    };

    // Call the find function
    await find(req, res);

    // Assert that the response has the correct status code and JSON body
    expect(res.status).toHaveBeenCalledWith(200);
    expect(res.json).toHaveBeenCalledWith({ name: 'Alice' });
  });

  it('should return a 404 error if no user is found with the given id', async () => {
    // Mock the User model's findById method to return a promise that resolves to null
    User.findById = jest.fn().mockResolvedValue(null);

    // Set up the request and response objects
    const req = { query: { id: '123' } };
    const res = {
      status: jest.fn().mockReturnThis(),
      json: jest.fn(),
    };

    // Call the find function
    await find(req, res);

    // Assert that the response has the correct status code and JSON body
    expect(res.status).toHaveBeenCalledWith(404);
    expect(res.json).toHaveBeenCalledWith({ message: 'Not found user with id 123' });
  });

it('should return a 500 error if an error occurs while trying to retrieve the user', async () => {
    // Mock the User model's findById method to return a promise that rejects with an error
    User.findById = jest.fn().mockRejectedValue(new Error('Some error'));

    // Set up the request and response objects
    const req = { query: { id: '123' } };
    const res = {
      status: jest.fn().mockReturnThis(),
      json: jest.fn(),
    };

    // Call the find function
    await find(req, res);

    // Assert that the response has the correct status code and JSON body
    expect(res.status).toHaveBeenCalledWith(500);
    expect(res.json).toHaveBeenCalledWith({ message: 'Error retrieving user with id 123' });
  });
});
