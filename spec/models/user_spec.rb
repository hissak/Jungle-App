require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Validations' do
    context 'when all fields are provided' do
      it 'should save successfully' do
        @user = User.new(first_name: 'Obi', last_name: 'Wan', email: '123@gmail.com', password: 'password', password_confirmation: 'password')
        expect(@user.save).to be_truthy
      end 
      it 'should not save if email is not unique' do
        @user1 = User.new(first_name: 'Obi', last_name: 'Wan', email: '123@gmail.com', password: 'password', password_confirmation: 'password')
        @user2 = User.new(first_name: 'Anakin', last_name: 'Skywalker', email: '123@gmail.com', password: 'password', password_confirmation: 'password')
        expect(@user1.save).to be_truthy
        expect(@user2.save).to be_falsey
      end
      it 'should not save if password and password_confirmation do not match' do
        @user = User.new(first_name: 'Obi', last_name: 'Wan', email: '123@gmail.com', password: 'password', password_confirmation: 'xyz')
        expect(@user.save).to be_falsey
      end
    end
  end
end
