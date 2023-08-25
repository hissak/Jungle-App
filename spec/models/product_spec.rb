require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do
    context 'when all fields are provided' do
      it ' should have a name' do
        @category = Category.new(name: 'Bananas')
        @product = Product.new(name: 'Cats', price: 60, quantity: 4, category: @category)
        expect(@product.name).to be_present
      end
      it ' should have a price' do
        @category = Category.new(name: 'Bananas')
        @product = Product.new(name: 'Cats', price: 60, quantity: 4, category: @category)
        expect(@product.price).to be_present
      end
      it ' should have a quantity' do
        @category = Category.new(name: 'Bananas')
        @product = Product.new(name: 'Cats', price: 60, quantity: 4, category: @category)
        expect(@product.quantity).to be_present
      end
  end
end
end

