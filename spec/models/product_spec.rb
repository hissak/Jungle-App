require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do
    context 'when all fields are provided' do
      it 'should save successfully' do
        @category = Category.new(name: 'Bananas')
        @product = Product.new(name: 'Cats', price: 60, quantity: 4, category: @category)
        expect(@product.save).to be_truthy
      end
      it 'should have a name' do
        @category = Category.new(name: 'Bananas')
        @product = Product.new(name: 'Cats', price: 60, quantity: 4, category: @category)
        @product.save
        expect(@product.name).to be_present
      end
      it 'should have a price' do
        @category = Category.new(name: 'Bananas')
        @product = Product.new(name: 'Cats', price: 60, quantity: 4, category: @category)
        @product.save
        expect(@product.price).to be_present
      end
      it 'should have a quantity' do
        @category = Category.new(name: 'Bananas')
        @product = Product.new(name: 'Cats', price: 60, quantity: 4, category: @category)
        @product.save
        expect(@product.quantity).to be_present
      end
      it 'should have a category' do
        @category = Category.new(name: 'Bananas')
        @product = Product.new(name: 'Cats', price: 60, quantity: 4, category: @category)
        @product.save
        expect(@product.category).to be_present
      end
  end
    context 'when a field is missing' do
      it 'should not save successfully' do
        @category = Category.new(name: 'Bananas')
        @product1 = Product.new(name: nil, price: 60, quantity: 4, category: @category)
        @product2 = Product.new(name: 'Cats', quantity: 4, category: @category)
        @product3 = Product.new(name: 'Cats', price: 60, quantity: nil, category: @category)
        @product4 = Product.new(name: 'Cats', price: 60, quantity: 4, category: nil)

        expect(@product1.save).to be_falsey
        expect(@product2.save).to be_falsey
        expect(@product3.save).to be_falsey
        expect(@product4.save).to be_falsey

        expect(@product1.errors.full_messages).to include("Name can't be blank")
        expect(@product2.errors.full_messages).to include("Price can't be blank")
        expect(@product3.errors.full_messages).to include("Quantity can't be blank")
        expect(@product4.errors.full_messages).to include("Category can't be blank")
      end
    end
end
end

