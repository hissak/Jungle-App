require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Validations' do
    context 'when all fields are provided' do
      it 'should save successfully' do
        @user = User.new(first_name: 'Obi', last_name: 'Wan', email: '123@gmail.com', password: 'password',
                         password_confirmation: 'password')
        expect(@user.save).to be_truthy
      end
      it 'should not save if email is not unique, regardless of letter casing' do
        @user1 = User.new(first_name: 'Obi', last_name: 'Wan', email: '123@gmail.com', password: 'password',
                          password_confirmation: 'password')
        @user2 = User.new(first_name: 'Anakin', last_name: 'Skywalker', email: '123@GMAIL.com', password: 'password',
                          password_confirmation: 'password')
        expect(@user1.save).to be_truthy
        expect(@user2.save).to be_falsey
      end
      it 'should not save if password and password_confirmation do not match' do
        @user = User.new(first_name: 'Obi', last_name: 'Wan', email: '123@gmail.com', password: 'password',
                         password_confirmation: 'xyz')
        expect(@user.save).to be_falsey
      end
      it 'should not save if password is less than 6 characters' do
        @user = User.new(first_name: 'Obi', last_name: 'Wan', email: '123@gmail.com', password: '12345',
                         password_confirmation: '12345')
        expect(@user.save).to be_falsey
      end
    end
    context 'when a field is missing' do
      it 'should not save' do
        @user1 = User.new(first_name: 'Obi', last_name: 'Wan', email: nil, password: 'password',
                          password_confirmation: 'password')
        expect(@user1.save).to be_falsey
        @user2 = User.new(first_name: nil, last_name: 'Wan', email: '123@gmail.com', password: 'password',
                          password_confirmation: 'password')
        expect(@user2.save).to be_falsey
        @user3 = User.new(first_name: 'Obi', last_name: nil, email: '123@gmail.com', password: 'password',
                          password_confirmation: 'password')
        expect(@user3.save).to be_falsey
      end
    end
  end
  describe '.authenticate_with_credentials' do
    context 'when all fields are provided' do
      it 'should return the user if the credentials are valid' do
        @user = User.new(first_name: 'Obi', last_name: 'Wan', email: '123@gmail.com', password: '123456',
        password_confirmation: '123456')
        @user.save
        expect(User.authenticate_with_credentials(@user.email, @user.password)).to eq(@user)
      end
      it 'should return nil if the credentials are invalid' do
        @user = User.new(first_name: 'Obi', last_name: 'Wan', email: '123@gmail.com', password: '123456',
        password_confirmation: '123456')
        @user.save
        expect(User.authenticate_with_credentials(@user.email, 'abcdef')).to be_nil
      end
      it 'should return the user if the email is surrounded by whitespace' do
        @user = User.new(first_name: 'Obi', last_name: 'Wan', email: '123@gmail.com', password: '123456',
        password_confirmation: '123456')
        @user.save
        expect(User.authenticate_with_credentials("  #{@user.email}  ", @user.password)).to eq(@user)
      end
      it 'should return the user even though the email is in the wrong case' do
        @user = User.new(first_name: 'Obi', last_name: 'Wan', email: '123@gmail.com', password: '123456',
        password_confirmation: '123456')
        @user.save
        expect(User.authenticate_with_credentials(@user.email.upcase, @user.password)).to eq(@user)
      end
    end
  end
end
