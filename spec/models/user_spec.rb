require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Validations' do
    context 'when all fields are provided' do
      it 'should save successfully' do
        @user = User.new(first_name: 'Obi', last_name: 'Wan', email: '123@gmail.com', password: 'password', password_confirmation: 'password')
        expect(@user.save).to be_truthy
      end 
    end
  end
end
