const User = require('../model/user');
const {del} = require('../controller/controller')


describe('delete', () => {
    it('should delete the user and return a success message with 200 status code', async () => {
      // Mock the User model's findByIdAndDelete method to return a promise that resolves to the deleted user
      User.findByIdAndDelete = jest.fn().mockResolvedValue({ name: 'Alice' });
  
      // Set up the request and response objects
      const req = { params: { id: '123' } };
      const res = {
        status: jest.fn().mockReturnThis(),
        json: jest.fn(),
      };
  
      // Call the delete function
      await delete(req, res);
  
      // Assert that the response has the correct status code and JSON body
      expect(res.status).toHaveBeenCalledWith(200);
      expect(res.json).toHaveBeenCalledWith({ message: 'User was deleted successfully!' });
    });
  
    it('should return a 404 error if no user is found with the given id', async () => {
      // Mock the User model's findByIdAndDelete method to return a promise that resolves to null
      User.findByIdAndDelete = jest.fn().mockResolvedValue(null);
  
      // Set up the request and response objects
      const req = { params: { id: '123' } };
      const res = {
        status: jest.fn().mockReturnThis(),
        json: jest.fn(),
      };
  
      // Call the delete function
      await delete(req, res);
  
      // Assert that the response has the correct status code and JSON body
      expect(res.status).toHaveBeenCalledWith(404);
      expect(res.json).toHaveBeenCalledWith({ message: 'Cannot Delete with id 123. Maybe id is wrong' });
    });
  
    it('should return a 500 error if an error occurs while trying to delete the user', async () => {
      // Mock the User model's findByIdAndDelete method to return a promise that rejects with an error
      User.findByIdAndDelete = jest.fn().mockRejectedValue(new Error('Some error'));
  
      // Set up the request and response objects
      const req = { params: { id: '123' } };
      const res = {
        status: jest.fn().mockReturnThis(),
        json: jest.fn(),
      };
  
      // Call the delete function
      await del(req, res);
  
      // Assert that the response has the correct status code and JSON body
      expect(res.status).toHaveBeenCalledWith(500);
      expect(res.json).toHaveBeenCalledWith({ message: 'Could not delete User with id=123' });
    });
  });